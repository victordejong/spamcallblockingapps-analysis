package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ErrorResponseAdapter;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import zendesk.core.AnonymousIdentity;
import zendesk.core.AuthenticationProvider;
import zendesk.core.AuthenticationType;
import zendesk.core.Identity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskRequestProvider.class */
public final class ZendeskRequestProvider implements RequestProvider {
    private static final String ALL_REQUEST_STATUSES = "new,open,pending,hold,solved,closed";
    private static final String GET_REQUESTS_SIDE_LOAD = "public_updated_at,last_commenting_agents,last_comment,first_comment";
    private static final String LOG_TAG = "ZendeskRequestProvider";
    private static final int MAX_TICKET_FIELDS = 5;
    private final AuthenticationProvider authenticationProvider;
    private final SupportBlipsProvider blipsProvider;
    private final SupportSdkMetadata metadata;
    private final ZendeskRequestService requestService;
    private final RequestSessionCache requestSessionCache;
    private final RequestStorage requestStorage;
    private final SupportSettingsProvider settingsProvider;
    private final ZendeskTracker zendeskTracker;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskRequestProvider(SupportSettingsProvider supportSettingsProvider, ZendeskRequestService zendeskRequestService, AuthenticationProvider authenticationProvider, RequestStorage requestStorage, RequestSessionCache requestSessionCache, ZendeskTracker zendeskTracker, SupportSdkMetadata supportSdkMetadata, SupportBlipsProvider supportBlipsProvider) {
        this.settingsProvider = supportSettingsProvider;
        this.requestService = zendeskRequestService;
        this.authenticationProvider = authenticationProvider;
        this.requestStorage = requestStorage;
        this.requestSessionCache = requestSessionCache;
        this.zendeskTracker = zendeskTracker;
        this.metadata = supportSdkMetadata;
        this.blipsProvider = supportBlipsProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addCommentInternal(@NonNull final String str, @NonNull EndUserComment endUserComment, @Nullable final ZendeskCallback<Comment> zendeskCallback) {
        this.requestService.addComment(str, endUserComment, new ZendeskCallbackSuccess<Request>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.7
            public void onSuccess(Request request) {
                ZendeskRequestProvider.this.zendeskTracker.requestUpdated();
                ZendeskRequestProvider.this.blipsProvider.requestUpdated(str);
                if (request.getId() == null || request.getCommentCount() == null) {
                    Logger.m289w(ZendeskRequestProvider.LOG_TAG, "The ID and / or comment count was missing. Cannot store comment totalUpdates.", new Object[0]);
                } else {
                    ZendeskRequestProvider.this.requestStorage.updateRequestData(Collections.singletonList(request));
                }
                if (zendeskCallback != null) {
                    zendeskCallback.onSuccess(request.getLastComment());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addServerTags(@NonNull CreateRequest createRequest, @NonNull SupportSdkSettings supportSdkSettings) {
        List<String> combineLists = CollectionUtils.combineLists(createRequest.getTags(), supportSdkSettings.getContactZendeskTags());
        if (CollectionUtils.isNotEmpty(combineLists)) {
            Logger.m298d(LOG_TAG, "Adding tags to feedback...", new Object[0]);
            createRequest.setTags(combineLists);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void answerCallbackOnConversationsDisabled(@Nullable ZendeskCallback zendeskCallback) {
        Logger.m298d(LOG_TAG, "Conversations disabled, this feature is not available on your plan or was disabled.", new Object[0]);
        if (zendeskCallback != null) {
            zendeskCallback.onError(new ErrorResponseAdapter("Access Denied"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean areConversationsEnabled(@Nullable SupportSdkSettings supportSdkSettings) {
        return supportSdkSettings == null ? false : supportSdkSettings.isConversationsEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RequestUpdates calcRequestUpdates(@NonNull List<RequestData> list) {
        HashMap hashMap = new HashMap(list.size());
        for (RequestData requestData : list) {
            int unreadComments = requestData.unreadComments();
            if (unreadComments != 0) {
                hashMap.put(requestData.getId(), Integer.valueOf(unreadComments));
            }
        }
        return new RequestUpdates(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<TicketForm> convertTicketFormResponse(List<RawTicketForm> list, List<RawTicketField> list2) {
        ArrayList arrayList = new ArrayList();
        Map<Long, TicketField> createTicketFieldMap = createTicketFieldMap(list2);
        for (RawTicketForm rawTicketForm : list) {
            arrayList.add(createTicketFormFromResponse(rawTicketForm, createTicketFieldMap));
        }
        return arrayList;
    }

    private static Map<Long, TicketField> createTicketFieldMap(List<RawTicketField> list) {
        HashMap hashMap = new HashMap(list.size());
        for (RawTicketField rawTicketField : list) {
            hashMap.put(Long.valueOf(rawTicketField.getId()), TicketField.create(rawTicketField));
        }
        return hashMap;
    }

    private static TicketForm createTicketFormFromResponse(RawTicketForm rawTicketForm, Map<Long, TicketField> map) {
        ArrayList arrayList = new ArrayList();
        for (Long l : rawTicketForm.getTicketFieldIds()) {
            if (!(l == null || map.get(l) == null)) {
                arrayList.add(map.get(l));
            }
        }
        return RawTicketForm.create(rawTicketForm, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getAllRequestsInternal(@Nullable String str, AuthenticationType authenticationType, @Nullable final ZendeskCallback<List<Request>> zendeskCallback) {
        String str2 = str;
        if (StringUtils.isEmpty(str)) {
            str2 = ALL_REQUEST_STATUSES;
        }
        ZendeskCallbackSuccess<List<Request>> zendeskCallbackSuccess = new ZendeskCallbackSuccess<List<Request>>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.3
            public void onSuccess(List<Request> list) {
                ZendeskRequestProvider.this.requestStorage.updateRequestData(list);
                if (zendeskCallback != null) {
                    zendeskCallback.onSuccess(list);
                }
            }
        };
        if (authenticationType == AuthenticationType.ANONYMOUS) {
            List<RequestData> requestData = this.requestStorage.getRequestData();
            ArrayList arrayList = new ArrayList(requestData.size());
            for (RequestData requestData2 : requestData) {
                arrayList.add(requestData2.getId());
            }
            if (CollectionUtils.isEmpty(arrayList)) {
                Logger.m289w(LOG_TAG, "getAllRequestsInternal: There are no requests to fetch", new Object[0]);
                if (zendeskCallback != null) {
                    zendeskCallback.onSuccess(new ArrayList());
                    return;
                }
                return;
            }
            this.requestService.getAllRequests(StringUtils.toCsvString(arrayList), str2, GET_REQUESTS_SIDE_LOAD, zendeskCallbackSuccess);
            return;
        }
        this.requestService.getAllRequests(str2, GET_REQUESTS_SIDE_LOAD, zendeskCallbackSuccess);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalCreateRequest(@NonNull CreateRequest createRequest, AuthenticationType authenticationType, Identity identity, @Nullable final ZendeskCallback<Request> zendeskCallback) {
        ZendeskCallbackSuccess<Request> zendeskCallbackSuccess = new ZendeskCallbackSuccess<Request>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.2
            public void onSuccess(Request request) {
                if (request.getId() == null) {
                    onError(new ErrorResponseAdapter("The request was created, but the ID is unknown."));
                    return;
                }
                ZendeskRequestProvider.this.zendeskTracker.requestCreated();
                ZendeskRequestProvider.this.blipsProvider.requestCreated(request.getId());
                ZendeskRequestProvider.this.requestStorage.updateRequestData(Collections.singletonList(request));
                if (zendeskCallback != null) {
                    zendeskCallback.onSuccess(request);
                }
            }
        };
        if (authenticationType != AuthenticationType.ANONYMOUS || identity == null || !(identity instanceof AnonymousIdentity)) {
            this.requestService.createRequest(null, createRequest, zendeskCallbackSuccess);
            return;
        }
        this.requestService.createRequest(((AnonymousIdentity) identity).getSdkGuid(), createRequest, zendeskCallbackSuccess);
    }

    @Override // zendesk.support.RequestProvider
    public void addComment(@NonNull final String str, @NonNull final EndUserComment endUserComment, @Nullable final ZendeskCallback<Comment> zendeskCallback) {
        this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.8
            public void onSuccess(SupportSdkSettings supportSdkSettings) {
                if (ZendeskRequestProvider.areConversationsEnabled(supportSdkSettings)) {
                    ZendeskRequestProvider.this.addCommentInternal(str, endUserComment, zendeskCallback);
                } else {
                    ZendeskRequestProvider.answerCallbackOnConversationsDisabled(zendeskCallback);
                }
            }
        });
    }

    @Override // zendesk.support.RequestProvider
    public void createRequest(@NonNull final CreateRequest createRequest, @Nullable final ZendeskCallback<Request> zendeskCallback) {
        if (!(createRequest != null)) {
            Logger.m295e(LOG_TAG, "configuration is invalid: request null", new Object[0]);
            if (zendeskCallback != null) {
                zendeskCallback.onError(new ErrorResponseAdapter("configuration is invalid: request null"));
                return;
            }
            return;
        }
        this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.1
            public void onSuccess(SupportSdkSettings supportSdkSettings) {
                createRequest.setMetadata(ZendeskRequestProvider.this.metadata.getDeviceInfoAsMapForMetaData());
                ZendeskRequestProvider.this.addServerTags(createRequest, supportSdkSettings);
                ZendeskRequestProvider.this.internalCreateRequest(createRequest, supportSdkSettings.getAuthenticationType(), ZendeskRequestProvider.this.authenticationProvider.getIdentity(), zendeskCallback);
            }
        });
    }

    @Override // zendesk.support.RequestProvider
    public void getAllRequests(@Nullable ZendeskCallback<List<Request>> zendeskCallback) {
        getRequests(null, zendeskCallback);
    }

    @Override // zendesk.support.RequestProvider
    public void getComments(@NonNull final String str, @Nullable final ZendeskCallback<CommentsResponse> zendeskCallback) {
        this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.5
            public void onSuccess(SupportSdkSettings supportSdkSettings) {
                if (ZendeskRequestProvider.areConversationsEnabled(supportSdkSettings)) {
                    ZendeskRequestProvider.this.requestService.getComments(str, zendeskCallback);
                } else {
                    ZendeskRequestProvider.answerCallbackOnConversationsDisabled(zendeskCallback);
                }
            }
        });
    }

    @Override // zendesk.support.RequestProvider
    public void getCommentsSince(@NonNull final String str, @NonNull final Date date, final boolean z, @Nullable final ZendeskCallback<CommentsResponse> zendeskCallback) {
        this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.6
            public void onSuccess(SupportSdkSettings supportSdkSettings) {
                if (ZendeskRequestProvider.areConversationsEnabled(supportSdkSettings)) {
                    ZendeskRequestProvider.this.requestService.getCommentsSince(str, date, z, zendeskCallback);
                } else {
                    ZendeskRequestProvider.answerCallbackOnConversationsDisabled(zendeskCallback);
                }
            }
        });
    }

    @Override // zendesk.support.RequestProvider
    public void getRequest(@NonNull final String str, @Nullable final ZendeskCallback<Request> zendeskCallback) {
        this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.9
            public void onSuccess(SupportSdkSettings supportSdkSettings) {
                if (ZendeskRequestProvider.areConversationsEnabled(supportSdkSettings)) {
                    ZendeskRequestProvider.this.requestService.getRequest(str, ZendeskRequestProvider.GET_REQUESTS_SIDE_LOAD, zendeskCallback);
                } else {
                    ZendeskRequestProvider.answerCallbackOnConversationsDisabled(zendeskCallback);
                }
            }
        });
    }

    @Override // zendesk.support.RequestProvider
    public void getRequests(@Nullable final String str, @Nullable final ZendeskCallback<List<Request>> zendeskCallback) {
        this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.4
            public void onSuccess(SupportSdkSettings supportSdkSettings) {
                if (ZendeskRequestProvider.areConversationsEnabled(supportSdkSettings)) {
                    ZendeskRequestProvider.this.getAllRequestsInternal(str, supportSdkSettings.getAuthenticationType(), zendeskCallback);
                } else {
                    ZendeskRequestProvider.answerCallbackOnConversationsDisabled(zendeskCallback);
                }
            }
        });
    }

    @Override // zendesk.support.RequestProvider
    public void getTicketFormsById(@NonNull List<Long> list, @Nullable final ZendeskCallback<List<TicketForm>> zendeskCallback) {
        if (!CollectionUtils.isEmpty(list)) {
            final ArrayList arrayList = new ArrayList();
            if (list.size() > 5) {
                arrayList.addAll(list.subList(0, 5));
                Logger.m298d(LOG_TAG, "Maximum number of allowed ticket fields: %d.", 5);
            } else {
                arrayList.addAll(list);
            }
            if (!this.requestSessionCache.containsAllTicketForms(arrayList)) {
                this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.10
                    public void onSuccess(SupportSdkSettings supportSdkSettings) {
                        if (supportSdkSettings.isTicketFormSupportAvailable()) {
                            ZendeskRequestProvider.this.requestService.getTicketFormsById(StringUtils.toCsvStringNumber(arrayList), new ZendeskCallbackSuccess<RawTicketFormResponse>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.10.1
                                public void onSuccess(RawTicketFormResponse rawTicketFormResponse) {
                                    List<TicketForm> convertTicketFormResponse = ZendeskRequestProvider.convertTicketFormResponse(rawTicketFormResponse.getTicketForms(), rawTicketFormResponse.getTicketFields());
                                    ZendeskRequestProvider.this.requestSessionCache.updateTicketFormCache(convertTicketFormResponse);
                                    if (zendeskCallback != null) {
                                        zendeskCallback.onSuccess(convertTicketFormResponse);
                                    }
                                }
                            });
                        } else if (zendeskCallback != null) {
                            zendeskCallback.onError(new ErrorResponseAdapter("Ticket form support disabled."));
                        }
                    }
                });
            } else if (zendeskCallback != null) {
                zendeskCallback.onSuccess(this.requestSessionCache.getTicketFormsById(arrayList));
            }
        } else if (zendeskCallback != null) {
            zendeskCallback.onError(new ErrorResponseAdapter("Ticket forms must at least contain 1 Id"));
        }
    }

    @Override // zendesk.support.RequestProvider
    public void getUpdatesForDevice(@NonNull final ZendeskCallback<RequestUpdates> zendeskCallback) {
        if (!this.requestStorage.isRequestDataExpired()) {
            zendeskCallback.onSuccess(calcRequestUpdates(this.requestStorage.getRequestData()));
        } else {
            this.settingsProvider.getSettings(new ZendeskCallback<SupportSdkSettings>() { // from class: zendesk.support.ZendeskRequestProvider.11
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                    zendeskCallback.onError(errorResponse);
                }

                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!supportSdkSettings.isConversationsEnabled()) {
                        ZendeskRequestProvider.answerCallbackOnConversationsDisabled(zendeskCallback);
                    } else {
                        ZendeskRequestProvider.this.getAllRequestsInternal(null, supportSdkSettings.getAuthenticationType(), new ZendeskCallbackSuccess<List<Request>>(zendeskCallback) { // from class: zendesk.support.ZendeskRequestProvider.11.1
                            public void onSuccess(List<Request> list) {
                                zendeskCallback.onSuccess(ZendeskRequestProvider.calcRequestUpdates(ZendeskRequestProvider.this.requestStorage.getRequestData()));
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // zendesk.support.RequestProvider
    public void markRequestAsRead(@NonNull String str, int i) {
        this.requestStorage.markRequestAsRead(str, i);
    }

    @Override // zendesk.support.RequestProvider
    public void markRequestAsUnread(@NonNull String str) {
        this.requestStorage.markRequestAsUnread(str);
    }
}
