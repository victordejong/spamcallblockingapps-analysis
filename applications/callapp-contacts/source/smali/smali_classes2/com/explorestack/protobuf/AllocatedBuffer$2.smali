.class final Lcom/explorestack/protobuf/AllocatedBuffer$2;
.super Lcom/explorestack/protobuf/AllocatedBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/AllocatedBuffer;->wrapNoCheck([BII)Lcom/explorestack/protobuf/AllocatedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private position:I

.field final synthetic val$bytes:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/explorestack/protobuf/AllocatedBuffer$2;->val$bytes:[B

    iput p2, p0, Lcom/explorestack/protobuf/AllocatedBuffer$2;->val$offset:I

    iput p3, p0, Lcom/explorestack/protobuf/AllocatedBuffer$2;->val$length:I

    invoke-direct {p0}, Lcom/explorestack/protobuf/AllocatedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public final array()[B
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/explorestack/protobuf/AllocatedBuffer$2;->val$bytes:[B

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/explorestack/protobuf/AllocatedBuffer$2;->val$offset:I

    return v0
.end method

.method public final hasArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasNioBuffer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final limit()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/explorestack/protobuf/AllocatedBuffer$2;->val$length:I

    return v0
.end method

.method public final nioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final position()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/explorestack/protobuf/AllocatedBuffer$2;->position:I

    return v0
.end method

.method public final position(I)Lcom/explorestack/protobuf/AllocatedBuffer;
    .locals 2

    if-ltz p1, :cond_0

    .line 244
    iget v0, p0, Lcom/explorestack/protobuf/AllocatedBuffer$2;->val$length:I

    if-gt p1, v0, :cond_0

    .line 247
    iput p1, p0, Lcom/explorestack/protobuf/AllocatedBuffer$2;->position:I

    return-object p0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid position: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remaining()I
    .locals 2

    .line 259
    iget v0, p0, Lcom/explorestack/protobuf/AllocatedBuffer$2;->val$length:I

    iget v1, p0, Lcom/explorestack/protobuf/AllocatedBuffer$2;->position:I

    sub-int/2addr v0, v1

    return v0
.end method
