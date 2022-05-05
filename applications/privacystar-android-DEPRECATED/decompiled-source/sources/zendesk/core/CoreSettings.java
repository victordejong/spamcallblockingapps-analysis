package zendesk.core;

import com.google.gson.annotations.SerializedName;
import java.util.Date;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreSettings.class */
public class CoreSettings implements Settings {
    private AuthenticationType authentication;
    @SerializedName("brand_id")
    private String brandId;
    private String identifier;
    @SerializedName("updated_at")
    private Date updatedAt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CoreSettings(Date date, AuthenticationType authenticationType) {
        this.updatedAt = date;
        this.authentication = authenticationType;
    }

    public AuthenticationType getAuthentication() {
        return this.authentication;
    }

    Date getUpdatedAt() {
        return this.updatedAt != null ? new Date(this.updatedAt.getTime()) : new Date(0L);
    }
}
