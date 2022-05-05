package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.service.RetrofitZendeskCallbackAdapter;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskUserProvider.class */
class ZendeskUserProvider implements UserProvider {
    private final UserService userService;
    private static final RetrofitZendeskCallbackAdapter.RequestExtractor<UserResponse, User> USER_EXTRACTOR = new RetrofitZendeskCallbackAdapter.RequestExtractor<UserResponse, User>() { // from class: zendesk.core.ZendeskUserProvider.6
        public User extract(UserResponse userResponse) {
            return userResponse.getUser();
        }
    };
    private static final RetrofitZendeskCallbackAdapter.RequestExtractor<UserFieldResponse, List<UserField>> FIELDS_EXTRACTOR = new RetrofitZendeskCallbackAdapter.RequestExtractor<UserFieldResponse, List<UserField>>() { // from class: zendesk.core.ZendeskUserProvider.7
        public List<UserField> extract(UserFieldResponse userFieldResponse) {
            return userFieldResponse.getUserFields();
        }
    };
    private static final RetrofitZendeskCallbackAdapter.RequestExtractor<UserResponse, Map<String, String>> FIELDS_MAP_EXTRACTOR = new RetrofitZendeskCallbackAdapter.RequestExtractor<UserResponse, Map<String, String>>() { // from class: zendesk.core.ZendeskUserProvider.8
        public Map<String, String> extract(UserResponse userResponse) {
            return (userResponse == null || userResponse.getUser() == null) ? CollectionUtils.copyOf(new HashMap()) : userResponse.getUser().getUserFields();
        }
    };
    private static final RetrofitZendeskCallbackAdapter.RequestExtractor<UserResponse, List<String>> TAGS_EXTRACTOR = new RetrofitZendeskCallbackAdapter.RequestExtractor<UserResponse, List<String>>() { // from class: zendesk.core.ZendeskUserProvider.9
        public List<String> extract(UserResponse userResponse) {
            return (userResponse == null || userResponse.getUser() == null) ? CollectionUtils.copyOf(new ArrayList()) : userResponse.getUser().getTags();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskUserProvider(UserService userService) {
        this.userService = userService;
    }

    @Override // zendesk.core.UserProvider
    public void addTags(@NonNull List<String> list, @Nullable final ZendeskCallback<List<String>> zendeskCallback) {
        UserTagRequest userTagRequest = new UserTagRequest();
        userTagRequest.setTags(CollectionUtils.ensureEmpty(list));
        this.userService.addTags(userTagRequest).enqueue(new RetrofitZendeskCallbackAdapter(new PassThroughErrorZendeskCallback<List<String>>(zendeskCallback) { // from class: zendesk.core.ZendeskUserProvider.1
            public void onSuccess(List<String> list2) {
                if (zendeskCallback != null) {
                    zendeskCallback.onSuccess(list2);
                }
            }
        }, TAGS_EXTRACTOR));
    }

    @Override // zendesk.core.UserProvider
    public void deleteTags(@NonNull List<String> list, @Nullable final ZendeskCallback<List<String>> zendeskCallback) {
        this.userService.deleteTags(StringUtils.toCsvString(CollectionUtils.ensureEmpty(list))).enqueue(new RetrofitZendeskCallbackAdapter(new PassThroughErrorZendeskCallback<List<String>>(zendeskCallback) { // from class: zendesk.core.ZendeskUserProvider.2
            public void onSuccess(List<String> list2) {
                if (zendeskCallback != null) {
                    zendeskCallback.onSuccess(list2);
                }
            }
        }, TAGS_EXTRACTOR));
    }

    @Override // zendesk.core.UserProvider
    public void getUser(@Nullable final ZendeskCallback<User> zendeskCallback) {
        this.userService.getUser().enqueue(new RetrofitZendeskCallbackAdapter(new PassThroughErrorZendeskCallback<User>(zendeskCallback) { // from class: zendesk.core.ZendeskUserProvider.5
            public void onSuccess(User user) {
                if (zendeskCallback != null) {
                    zendeskCallback.onSuccess(user);
                }
            }
        }, USER_EXTRACTOR));
    }

    @Override // zendesk.core.UserProvider
    public void getUserFields(@Nullable final ZendeskCallback<List<UserField>> zendeskCallback) {
        this.userService.getUserFields().enqueue(new RetrofitZendeskCallbackAdapter(new PassThroughErrorZendeskCallback<List<UserField>>(zendeskCallback) { // from class: zendesk.core.ZendeskUserProvider.3
            public void onSuccess(List<UserField> list) {
                if (zendeskCallback != null) {
                    zendeskCallback.onSuccess(list);
                }
            }
        }, FIELDS_EXTRACTOR));
    }

    @Override // zendesk.core.UserProvider
    public void setUserFields(@NonNull Map<String, String> map, @Nullable final ZendeskCallback<Map<String, String>> zendeskCallback) {
        this.userService.setUserFields(new UserFieldRequest(map)).enqueue(new RetrofitZendeskCallbackAdapter(new PassThroughErrorZendeskCallback<Map<String, String>>(zendeskCallback) { // from class: zendesk.core.ZendeskUserProvider.4
            public void onSuccess(Map<String, String> map2) {
                if (zendeskCallback != null) {
                    zendeskCallback.onSuccess(map2);
                }
            }
        }, FIELDS_MAP_EXTRACTOR));
    }
}
