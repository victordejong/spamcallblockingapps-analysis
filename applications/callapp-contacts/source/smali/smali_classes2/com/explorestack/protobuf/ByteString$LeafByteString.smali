.class abstract Lcom/explorestack/protobuf/ByteString$LeafByteString;
.super Lcom/explorestack/protobuf/ByteString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 864
    invoke-direct {p0}, Lcom/explorestack/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method abstract equalsRange(Lcom/explorestack/protobuf/ByteString;II)Z
.end method

.method protected final getTreeDepth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final isBalanced()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 864
    invoke-super {p0}, Lcom/explorestack/protobuf/ByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method writeToReverse(Lcom/explorestack/protobuf/ByteOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ByteString$LeafByteString;->writeTo(Lcom/explorestack/protobuf/ByteOutput;)V

    return-void
.end method
