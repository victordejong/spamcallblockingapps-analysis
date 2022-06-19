package net.pubnative.lite.sdk.vpaid.models.vast;

import android.text.TextUtils;
import net.pubnative.lite.sdk.vpaid.xml.Text;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/Duration.class */
public class Duration {
    @Text
    private String text;

    public String getText() {
        return !TextUtils.isEmpty(this.text) ? this.text : "00:00:10";
    }
}
