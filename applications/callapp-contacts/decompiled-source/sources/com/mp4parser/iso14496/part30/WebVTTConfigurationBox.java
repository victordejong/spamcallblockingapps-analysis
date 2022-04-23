package com.mp4parser.iso14496.part30;

import com.b.a.e;
import com.googlecode.mp4parser.a;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part30/WebVTTConfigurationBox.class */
public class WebVTTConfigurationBox extends a {
    public static final String TYPE = "vttC";
    private static final a.AbstractC0755a ajc$tjp_0 = null;
    private static final a.AbstractC0755a ajc$tjp_1 = null;
    String config = "";

    static {
        ajc$preClinit();
    }

    public WebVTTConfigurationBox() {
        super(TYPE);
    }

    private static void ajc$preClinit() {
        b bVar = new b("WebVTTConfigurationBox.java", WebVTTConfigurationBox.class);
        ajc$tjp_0 = bVar.a("method-execution", bVar.a("1", "getConfig", "com.mp4parser.iso14496.part30.WebVTTConfigurationBox", "", "", "", "java.lang.String"), 36);
        ajc$tjp_1 = bVar.a("method-execution", bVar.a("1", "setConfig", "com.mp4parser.iso14496.part30.WebVTTConfigurationBox", "java.lang.String", "config", "", "void"), 40);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        this.config = e.a(byteBuffer, byteBuffer.remaining());
    }

    public String getConfig() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_0, this, this);
        h.a();
        h.a(a2);
        return this.config;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        byteBuffer.put(com.b.a.h.a(this.config));
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return com.b.a.h.b(this.config);
    }

    public void setConfig(String str) {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_1, this, this, str);
        h.a();
        h.a(a2);
        this.config = str;
    }
}
