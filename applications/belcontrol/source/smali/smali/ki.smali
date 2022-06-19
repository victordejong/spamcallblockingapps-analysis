.class public abstract Lki;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyh;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/nio/ByteBuffer;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lyh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lki;->e:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lki;->f:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lki;->c:I

    iput v0, p0, Lki;->b:I

    iput v0, p0, Lki;->d:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lki;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lki;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lki;->e:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lki;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Lki;->e:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lki;->f:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final f(III)Z
    .locals 1

    iget v0, p0, Lki;->b:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lki;->c:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lki;->d:I

    if-ne p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, p0, Lki;->b:I

    iput p2, p0, Lki;->c:I

    iput p3, p0, Lki;->d:I

    const/4 p1, 0x1

    return p1
.end method

.method public final flush()V
    .locals 1

    sget-object v0, Lyh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lki;->f:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lki;->g:Z

    invoke-virtual {p0}, Lki;->b()V

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lki;->f:Ljava/nio/ByteBuffer;

    sget-object v1, Lyh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lki;->f:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputChannelCount()I
    .locals 1

    iget v0, p0, Lki;->c:I

    return v0
.end method

.method public getOutputEncoding()I
    .locals 1

    iget v0, p0, Lki;->d:I

    return v0
.end method

.method public getOutputSampleRateHz()I
    .locals 1

    iget v0, p0, Lki;->b:I

    return v0
.end method

.method public isActive()Z
    .locals 2

    iget v0, p0, Lki;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 2

    iget-boolean v0, p0, Lki;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lki;->f:Ljava/nio/ByteBuffer;

    sget-object v1, Lyh;->a:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final queueEndOfStream()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lki;->g:Z

    invoke-virtual {p0}, Lki;->c()V

    return-void
.end method

.method public final reset()V
    .locals 1

    invoke-virtual {p0}, Lki;->flush()V

    sget-object v0, Lyh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lki;->e:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lki;->b:I

    iput v0, p0, Lki;->c:I

    iput v0, p0, Lki;->d:I

    invoke-virtual {p0}, Lki;->d()V

    return-void
.end method
