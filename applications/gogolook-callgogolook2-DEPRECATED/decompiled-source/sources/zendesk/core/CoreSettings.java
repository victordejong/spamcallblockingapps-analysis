package zendesk.core;

import java.util.Date;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreSettings.class */
public class CoreSettings implements Settings {
    public AuthenticationType authentication;
    @AbstractC10120c("brand_id")
    public String brandId;
    @AbstractC10120c("updated_at")
    public Date updatedAt;

    public CoreSettings(Date date, AuthenticationType authenticationType) {
        this.updatedAt = date;
        this.authentication = authenticationType;
    }

    public AuthenticationType getAuthentication() {
        return this.authentication;
    }
}
