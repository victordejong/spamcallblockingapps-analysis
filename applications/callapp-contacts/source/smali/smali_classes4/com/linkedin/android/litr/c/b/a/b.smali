.class public Lcom/linkedin/android/litr/c/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkedin/android/litr/c/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[Lcom/linkedin/android/litr/c/b/a/a/a;

.field private final d:Lcom/linkedin/android/litr/c/c;

.field private e:[F

.field private f:[F

.field private g:I

.field private h:Ljava/nio/FloatBuffer;

.field private final i:[F

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/linkedin/android/litr/c/b/a/a/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/linkedin/android/litr/c/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/linkedin/android/litr/c/b/a/a/a;Lcom/linkedin/android/litr/c/c;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/linkedin/android/litr/c/b/a/a/a;Lcom/linkedin/android/litr/c/c;)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 81
    iput-object v1, p0, Lcom/linkedin/android/litr/c/b/a/b;->e:[F

    new-array v0, v0, [F

    .line 82
    iput-object v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->f:[F

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 86
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->i:[F

    .line 128
    iput-object p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->a:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/linkedin/android/litr/c/b/a/b;->b:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/linkedin/android/litr/c/b/a/b;->c:[Lcom/linkedin/android/litr/c/b/a/a/a;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance p4, Lcom/linkedin/android/litr/c/c;

    new-instance p1, Landroid/graphics/PointF;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p2, Landroid/graphics/PointF;

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-direct {p2, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p3, 0x0

    invoke-direct {p4, p1, p2, p3}, Lcom/linkedin/android/litr/c/c;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    :goto_0
    iput-object p4, p0, Lcom/linkedin/android/litr/c/b/a/b;->d:Lcom/linkedin/android/litr/c/c;

    .line 135
    array-length p1, v0

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 137
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->h:Ljava/nio/FloatBuffer;

    .line 138
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->f:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 145
    iget-object v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->a:Ljava/lang/String;

    const v1, 0x8b31

    invoke-static {v1, v0}, Lcom/linkedin/android/litr/e/a;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->j:I

    if-eqz v0, :cond_6

    const v0, 0x8b30

    .line 149
    iget-object v1, p0, Lcom/linkedin/android/litr/c/b/a/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/linkedin/android/litr/e/a;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->k:I

    if-eqz v0, :cond_5

    .line 154
    iget v1, p0, Lcom/linkedin/android/litr/c/b/a/b;->j:I

    invoke-static {v1, v0}, Lcom/linkedin/android/litr/e/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->l:I

    if-eqz v0, :cond_4

    const-string v1, "aPosition"

    .line 159
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->p:I

    const-string v0, "glGetAttribLocation aPosition"

    .line 160
    invoke-static {v0}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 164
    iget v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->l:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->q:I

    const-string v0, "glGetAttribLocation aTextureCoord"

    .line 165
    invoke-static {v0}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->q:I

    if-eq v0, v1, :cond_2

    .line 169
    iget v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->l:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->m:I

    const-string v0, "glGetUniformLocation uMVPMatrix"

    .line 170
    invoke-static {v0}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->m:I

    if-eq v0, v1, :cond_1

    .line 174
    iget v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->l:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->n:I

    const-string v0, "glGetUniformLocation uSTMatrix"

    .line 175
    invoke-static {v0}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->n:I

    if-eq v0, v1, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_4
    invoke-virtual {p0}, Lcom/linkedin/android/litr/c/b/a/b;->b()V

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating glProgram"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_5
    invoke-virtual {p0}, Lcom/linkedin/android/litr/c/b/a/b;->b()V

    .line 152
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed loading fragment shader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed loading vertex shader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I[F)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->o:I

    .line 190
    iput-object p2, p0, Lcom/linkedin/android/litr/c/b/a/b;->f:[F

    return-void
.end method

.method public final a(J)V
    .locals 7

    .line 195
    iget-object p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->h:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    iget v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->p:I

    iget-object v5, p0, Lcom/linkedin/android/litr/c/b/a/b;->h:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer maPosition"

    .line 198
    invoke-static {p1}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 199
    iget p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->p:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray aPositionHandle"

    .line 200
    invoke-static {p1}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->h:Ljava/nio/FloatBuffer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 202
    iget v1, p0, Lcom/linkedin/android/litr/c/b/a/b;->q:I

    iget-object v6, p0, Lcom/linkedin/android/litr/c/b/a/b;->h:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer aTextureHandle"

    .line 204
    invoke-static {p1}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 205
    iget p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->q:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray aTextureHandle"

    .line 206
    invoke-static {p1}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    const-string p1, "onDrawFrame start"

    .line 208
    invoke-static {p1}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 209
    iget p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->l:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p1, "glUseProgram"

    .line 210
    invoke-static {p1}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    const p1, 0x84c0

    .line 211
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 212
    iget p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->o:I

    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 220
    iget p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->m:I

    iget-object v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->e:[F

    iget v1, p0, Lcom/linkedin/android/litr/c/b/a/b;->g:I

    const/4 v2, 0x1

    invoke-static {p1, v2, p2, v0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 221
    iget p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->n:I

    iget-object v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->f:[F

    invoke-static {p1, v2, p2, v0, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x5

    const/4 v0, 0x4

    .line 223
    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 224
    invoke-static {p1}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a([FI)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->d:Lcom/linkedin/android/litr/c/c;

    invoke-static {p1, v0}, Lcom/linkedin/android/litr/c/a/a;->a([FLcom/linkedin/android/litr/c/c;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/android/litr/c/b/a/b;->e:[F

    .line 184
    iput p2, p0, Lcom/linkedin/android/litr/c/b/a/b;->g:I

    return-void
.end method

.method public final b()V
    .locals 4

    .line 229
    iget v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->l:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 230
    iget v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 231
    iget v0, p0, Lcom/linkedin/android/litr/c/b/a/b;->k:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 232
    iget v2, p0, Lcom/linkedin/android/litr/c/b/a/b;->q:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 233
    iput v3, p0, Lcom/linkedin/android/litr/c/b/a/b;->l:I

    .line 234
    iput v3, p0, Lcom/linkedin/android/litr/c/b/a/b;->j:I

    .line 235
    iput v3, p0, Lcom/linkedin/android/litr/c/b/a/b;->k:I

    .line 236
    iput v3, p0, Lcom/linkedin/android/litr/c/b/a/b;->q:I

    return-void
.end method
