package com.linkedin.android.litr.p461c.p463b.p464a;

import com.linkedin.android.litr.p461c.C16628c;
/* renamed from: com.linkedin.android.litr.c.b.a.a */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/c/b/a/a.class */
public final class C16625a extends C16627b {
    public C16625a() {
        this(null);
    }

    public C16625a(C16628c c16628c) {
        super("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main()\n{\ngl_Position = uMVPMatrix * aPosition;\nvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main()\n{\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}", null, c16628c);
    }
}
