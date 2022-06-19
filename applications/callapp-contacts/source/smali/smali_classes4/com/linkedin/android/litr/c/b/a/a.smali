.class public final Lcom/linkedin/android/litr/c/b/a/a;
.super Lcom/linkedin/android/litr/c/b/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/linkedin/android/litr/c/b/a/a;-><init>(Lcom/linkedin/android/litr/c/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/linkedin/android/litr/c/c;)V
    .locals 3

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main()\n{\ngl_Position = uMVPMatrix * aPosition;\nvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main()\n{\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/linkedin/android/litr/c/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/linkedin/android/litr/c/b/a/a/a;Lcom/linkedin/android/litr/c/c;)V

    return-void
.end method
