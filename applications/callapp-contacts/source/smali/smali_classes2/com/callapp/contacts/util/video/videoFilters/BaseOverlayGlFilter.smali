.class abstract Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkedin/android/litr/c/a;


# instance fields
.field private final a:Lcom/linkedin/android/litr/c/c;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[F

.field private h:I

.field private i:[F


# direct methods
.method constructor <init>(Landroid/graphics/RectF;)V
    .locals 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 51
    iput-object v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->i:[F

    if-nez p1, :cond_0

    .line 57
    new-instance p1, Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 58
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 61
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p1

    div-float/2addr v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    move-object p1, v0

    move-object v0, v1

    .line 65
    :goto_0
    new-instance v1, Lcom/linkedin/android/litr/c/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/linkedin/android/litr/c/c;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    iput-object v1, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->a:Lcom/linkedin/android/litr/c/c;

    return-void
.end method

.method constructor <init>(Lcom/linkedin/android/litr/c/c;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 51
    iput-object v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->i:[F

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->a:Lcom/linkedin/android/litr/c/c;

    return-void
.end method

.method static a(Landroid/graphics/Bitmap;)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 155
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 156
    aget v0, v1, v2

    const/16 v1, 0xde1

    .line 159
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v3, "glBindTexture overlayTextureID"

    .line 160
    invoke-static {v3}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    .line 163
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 164
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v3, "glTexParameter"

    .line 165
    invoke-static {v3}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 168
    invoke-static {v1, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->i:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->i:[F

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const v0, 0x8b31

    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 78
    invoke-static {v0, v1}, Lcom/linkedin/android/litr/e/a;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->b:I

    if-eqz v0, :cond_4

    const v0, 0x8b30

    const-string v1, "precision mediump float;\nuniform sampler2D uTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTextureCoord);\n}\n"

    .line 82
    invoke-static {v0, v1}, Lcom/linkedin/android/litr/e/a;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->c:I

    if-eqz v0, :cond_3

    .line 89
    iget v1, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->b:I

    invoke-static {v1, v0}, Lcom/linkedin/android/litr/e/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->d:I

    if-eqz v0, :cond_2

    const-string v1, "uMVPMatrix"

    .line 96
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->e:I

    const-string v0, "glGetUniformLocation uMVPMatrix"

    .line 97
    invoke-static {v0}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 101
    iget v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->d:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->f:I

    const-string v0, "glGetUniformLocation uSTMatrix"

    .line 102
    invoke-static {v0}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->f:I

    if-eq v0, v1, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->b()V

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating glOverlayProgram"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->b()V

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed loading fragment shader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed loading vertex shader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(I)V
    .locals 4

    .line 129
    iget v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 130
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 131
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 133
    iget p1, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->e:I

    iget-object v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->g:[F

    iget v1, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 134
    iget p1, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->f:I

    iget-object v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->i:[F

    invoke-static {p1, v2, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/16 p1, 0xbe2

    .line 137
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 138
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 141
    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    .line 142
    invoke-static {v0}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public a([FI)V
    .locals 0

    .line 112
    iget-object p2, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->a:Lcom/linkedin/android/litr/c/c;

    invoke-static {p1, p2}, Lcom/linkedin/android/litr/c/a/a;->a([FLcom/linkedin/android/litr/c/c;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->g:[F

    const/4 p1, 0x0

    .line 113
    iput p1, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->h:I

    return-void
.end method

.method public b()V
    .locals 1

    .line 119
    iget v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 120
    iget v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 121
    iget v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->d:I

    .line 123
    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->b:I

    .line 124
    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->c:I

    return-void
.end method
