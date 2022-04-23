package com.linkedin.android.litr.c.b.a;

import com.linkedin.android.litr.c.c;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/c/b/a/a.class */
public final class a extends b {
    public a() {
        this(null);
    }

    public a(c cVar) {
        super("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main()\n{\ngl_Position = uMVPMatrix * aPosition;\nvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main()\n{\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}", null, cVar);
    }
}
