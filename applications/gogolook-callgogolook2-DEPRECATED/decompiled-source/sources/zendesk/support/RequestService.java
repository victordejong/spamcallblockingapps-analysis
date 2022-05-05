package zendesk.support;

import p655o.AbstractC15235b;
import p655o.p658y.AbstractC15313a;
import p655o.p658y.AbstractC15321i;
import p655o.p658y.AbstractC15325m;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestService.class */
public interface RequestService {
    @AbstractC15325m("/api/mobile/requests.json?include=last_comment")
    AbstractC15235b<RequestResponse> createRequest(@AbstractC15321i("Mobile-Sdk-Identity") String str, @AbstractC15313a CreateRequestWrapper createRequestWrapper);
}
