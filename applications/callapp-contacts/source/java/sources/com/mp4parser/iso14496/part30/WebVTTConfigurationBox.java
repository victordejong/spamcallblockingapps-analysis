package com.mp4parser.iso14496.part30;

import com.googlecode.mp4parser.AbstractC16221a;
import com.googlecode.mp4parser.C16297h;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3518h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part30/WebVTTConfigurationBox.class */
public class WebVTTConfigurationBox extends AbstractC16221a {
    public static final String TYPE = "vttC";
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_0 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_1 = null;
    String config = "";

    static {
        ajc$preClinit();
    }

    public WebVTTConfigurationBox() {
        super(TYPE);
    }

    private static void ajc$preClinit() {
        C20987b c20987b = new C20987b("WebVTTConfigurationBox.java", WebVTTConfigurationBox.class);
        ajc$tjp_0 = c20987b.m164a("method-execution", c20987b.m165a("1", "getConfig", "com.mp4parser.iso14496.part30.WebVTTConfigurationBox", "", "", "", "java.lang.String"), 36);
        ajc$tjp_1 = c20987b.m164a("method-execution", c20987b.m165a("1", "setConfig", "com.mp4parser.iso14496.part30.WebVTTConfigurationBox", "java.lang.String", "config", "", "void"), 40);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        this.config = C3515e.m37850a(byteBuffer, byteBuffer.remaining());
    }

    public String getConfig() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_0, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.config;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        byteBuffer.put(C3518h.m37829a(this.config));
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return C3518h.m37827b(this.config);
    }

    public void setConfig(String str) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_1, this, this, str);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.config = str;
    }
}
