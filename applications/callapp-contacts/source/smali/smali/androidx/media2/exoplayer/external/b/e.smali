.class public Landroidx/media2/exoplayer/external/b/e;
.super Landroidx/media2/exoplayer/external/b/a;
.source "SourceFile"


# instance fields
.field public final b:Landroidx/media2/exoplayer/external/b/b;

.field public c:Ljava/nio/ByteBuffer;

.field public d:J

.field public e:Ljava/nio/ByteBuffer;

.field private final f:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/b/a;-><init>()V

    .line 100
    new-instance v0, Landroidx/media2/exoplayer/external/b/b;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/b/b;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/b/e;->b:Landroidx/media2/exoplayer/external/b/b;

    .line 101
    iput p1, p0, Landroidx/media2/exoplayer/external/b/e;->f:I

    return-void
.end method

.method private d(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 187
    iget v0, p0, Landroidx/media2/exoplayer/external/b/e;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 188
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 190
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 192
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 193
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Buffer too small ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 180
    invoke-super {p0}, Landroidx/media2/exoplayer/external/b/a;->a()V

    .line 181
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "data"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/b/e;->d(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    return-void

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 134
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt v0, p1, :cond_1

    return-void

    .line 140
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/b/e;->d(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-lez v1, :cond_2

    .line 143
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 148
    :cond_2
    iput-object p1, p0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final f()Z
    .locals 1

    .line 156
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/b/e;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 163
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/b/e;->b(I)Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/e;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method
