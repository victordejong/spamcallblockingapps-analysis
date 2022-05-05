package zendesk.support;

import androidx.annotation.Nullable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import p081h.p451q.p454c.AbstractC10857e;
import p081h.p451q.p454c.C10854d;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskRequestService.class */
public class ZendeskRequestService {
    public final DateFormat iso8601 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    public final RequestService requestService;

    public ZendeskRequestService(RequestService requestService) {
        new C10854d.AbstractC10856b<RequestsResponse, List<Request>>(this) { // from class: zendesk.support.ZendeskRequestService.3
            public List<Request> extract(RequestsResponse requestsResponse) {
                Map agentMap = ZendeskRequestService.getAgentMap(requestsResponse.getLastCommentingAgents());
                ArrayList arrayList = new ArrayList();
                for (Request request : requestsResponse.getRequests()) {
                    ZendeskRequestService.updateLastCommentingAgents(request, agentMap);
                    arrayList.add(request);
                }
                return arrayList;
            }
        };
        new C10854d.AbstractC10856b<RequestResponse, Request>(this) { // from class: zendesk.support.ZendeskRequestService.4
            public Request extract(RequestResponse requestResponse) {
                Map agentMap = ZendeskRequestService.getAgentMap(requestResponse.getLastCommentingAgents());
                Request request = requestResponse.getRequest();
                ZendeskRequestService.updateLastCommentingAgents(request, agentMap);
                return request;
            }
        };
        this.requestService = requestService;
        this.iso8601.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public static Map<Long, User> getAgentMap(List<User> list) {
        HashMap hashMap = new HashMap(list.size());
        for (User user : list) {
            hashMap.put(user.getId(), new User(user.getId(), user.getName(), user.getPhoto(), true, -1L, null, null));
        }
        return hashMap;
    }

    public static Request updateLastCommentingAgents(Request request, Map<Long, User> map) {
        ArrayList arrayList = new ArrayList(request.getLastCommentingAgentsIds().size());
        for (Long l : request.getLastCommentingAgentsIds()) {
            arrayList.add(map.get(l));
        }
        request.setLastCommentingAgents(arrayList);
        return request;
    }

    public void createRequest(@Nullable String str, CreateRequest createRequest, AbstractC10857e<Request> eVar) {
        CreateRequestWrapper createRequestWrapper = new CreateRequestWrapper();
        createRequestWrapper.setRequest(createRequest);
        this.requestService.createRequest(str, createRequestWrapper).mo140a(new C10854d(eVar, new C10854d.AbstractC10856b<RequestResponse, Request>(this) { // from class: zendesk.support.ZendeskRequestService.1
            public Request extract(RequestResponse requestResponse) {
                return requestResponse.getRequest();
            }
        }));
    }
}
