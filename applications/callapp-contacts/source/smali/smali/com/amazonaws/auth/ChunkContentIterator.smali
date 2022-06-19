.class Lcom/amazonaws/auth/ChunkContentIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field b:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->a:[B

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 28
    iget v0, p0, Lcom/amazonaws/auth/ChunkContentIterator;->b:I

    iget-object v1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
