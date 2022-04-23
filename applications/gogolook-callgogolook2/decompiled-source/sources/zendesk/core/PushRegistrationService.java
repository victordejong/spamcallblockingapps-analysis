package zendesk.core;

import p655o.AbstractC15235b;
import p655o.p658y.AbstractC15313a;
import p655o.p658y.AbstractC15314b;
import p655o.p658y.AbstractC15325m;
import p655o.p658y.AbstractC15329q;
/* loaded from: classes3-dex2jar.jar:zendesk/core/PushRegistrationService.class */
public interface PushRegistrationService {
    @AbstractC15325m("/api/mobile/push_notification_devices.json")
    AbstractC15235b<PushRegistrationResponseWrapper> registerDevice(@AbstractC15313a PushRegistrationRequestWrapper pushRegistrationRequestWrapper);

    @AbstractC15314b("/api/mobile/push_notification_devices/{id}.json")
    AbstractC15235b<Void> unregisterDevice(@AbstractC15329q("id") String str);
}
