package zendesk.support;

import android.support.annotation.Nullable;
import com.zendesk.service.RetrofitZendeskCallbackAdapter;
import com.zendesk.service.ZendeskCallback;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskRequestService.class */
public class ZendeskRequestService {
    private static final String LOG_TAG = "ZendeskRequestService";
    private static final String ROLE_AGENT = "agent";
    private static final String ROLE_USER = "end_user";
    private static final String TICKET_FIELDS_INCLUDE = "ticket_fields";
    private final RequestService requestService;
    private final DateFormat iso8601 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    private final RetrofitZendeskCallbackAdapter.RequestExtractor<RequestsResponse, List<Request>> requestsExtractor = new RetrofitZendeskCallbackAdapter.RequestExtractor<RequestsResponse, List<Request>>() { // from class: zendesk.support.ZendeskRequestService.3
        public List<Request> extract(RequestsResponse requestsResponse) {
            Map agentMap = ZendeskRequestService.getAgentMap(requestsResponse.getLastCommentingAgents());
            ArrayList arrayList = new ArrayList();
            for (Request request : requestsResponse.getRequests()) {
                arrayList.add(ZendeskRequestService.updateLastCommentingAgents(request, agentMap));
            }
            return arrayList;
        }
    };
    private final RetrofitZendeskCallbackAdapter.RequestExtractor<RequestResponse, Request> requestExtractor = new RetrofitZendeskCallbackAdapter.RequestExtractor<RequestResponse, Request>() { // from class: zendesk.support.ZendeskRequestService.4
        public Request extract(RequestResponse requestResponse) {
            return ZendeskRequestService.updateLastCommentingAgents(requestResponse.getRequest(), ZendeskRequestService.getAgentMap(requestResponse.getLastCommentingAgents()));
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskRequestService(RequestService requestService) {
        this.requestService = requestService;
        this.iso8601.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<Long, User> getAgentMap(List<User> list) {
        HashMap hashMap = new HashMap(list.size());
        for (User user : list) {
            hashMap.put(user.getId(), new User(user.getId(), user.getName(), user.getPhoto(), true, -1L, null, null));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Request updateLastCommentingAgents(Request request, Map<Long, User> map) {
        ArrayList arrayList = new ArrayList(request.getLastCommentingAgentsIds().size());
        for (Long l : request.getLastCommentingAgentsIds()) {
            arrayList.add(map.get(l));
        }
        request.setLastCommentingAgents(arrayList);
        return request;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addComment(String str, EndUserComment endUserComment, ZendeskCallback<Request> zendeskCallback) {
        UpdateRequestWrapper updateRequestWrapper = new UpdateRequestWrapper();
        Request request = new Request();
        request.setComment(endUserComment);
        updateRequestWrapper.setRequest(request);
        this.requestService.addComment(str, updateRequestWrapper).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, new RetrofitZendeskCallbackAdapter.RequestExtractor<RequestResponse, Request>() { // from class: zendesk.support.ZendeskRequestService.2
            public Request extract(RequestResponse requestResponse) {
                return requestResponse.getRequest();
            }
        }));
    }

    public void createRequest(@Nullable String str, CreateRequest createRequest, ZendeskCallback<Request> zendeskCallback) {
        CreateRequestWrapper createRequestWrapper = new CreateRequestWrapper();
        createRequestWrapper.setRequest(createRequest);
        this.requestService.createRequest(str, createRequestWrapper).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, new RetrofitZendeskCallbackAdapter.RequestExtractor<RequestResponse, Request>() { // from class: zendesk.support.ZendeskRequestService.1
            public Request extract(RequestResponse requestResponse) {
                return requestResponse.getRequest();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getAllRequests(String str, String str2, ZendeskCallback<List<Request>> zendeskCallback) {
        this.requestService.getAllRequests(str, str2).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, this.requestsExtractor));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getAllRequests(String str, String str2, String str3, ZendeskCallback<List<Request>> zendeskCallback) {
        this.requestService.getManyRequests(str, str2, str3).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, this.requestsExtractor));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getComments(String str, ZendeskCallback<CommentsResponse> zendeskCallback) {
        this.requestService.getComments(str).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getCommentsSince(String str, Date date, boolean z, ZendeskCallback<CommentsResponse> zendeskCallback) {
        this.requestService.getCommentsSince(str, this.iso8601.format(date), z ? ROLE_AGENT : null).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getRequest(String str, String str2, ZendeskCallback<Request> zendeskCallback) {
        this.requestService.getRequest(str, str2).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, this.requestExtractor));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getTicketFormsById(String str, ZendeskCallback<RawTicketFormResponse> zendeskCallback) {
        this.requestService.getTicketFormsById(str, TICKET_FIELDS_INCLUDE).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }
}
