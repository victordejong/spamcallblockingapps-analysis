package zendesk.core;

import java.util.Map;
import p081h.p203i.p384e.AbstractC10104j;
import p655o.AbstractC15235b;
import p655o.p658y.AbstractC15318f;
import p655o.p658y.AbstractC15321i;
import p655o.p658y.AbstractC15329q;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SdkSettingsService.class */
public interface SdkSettingsService {
    @AbstractC15318f("/api/private/mobile_sdk/settings/{applicationId}.json")
    AbstractC15235b<Map<String, AbstractC10104j>> getSettings(@AbstractC15321i("Accept-Language") String str, @AbstractC15329q("applicationId") String str2);
}
