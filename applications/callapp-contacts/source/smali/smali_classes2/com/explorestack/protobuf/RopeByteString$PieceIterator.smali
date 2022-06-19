.class final Lcom/explorestack/protobuf/RopeByteString$PieceIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PieceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/explorestack/protobuf/ByteString$LeafByteString;",
        ">;"
    }
.end annotation


# instance fields
.field private final breadCrumbs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/explorestack/protobuf/RopeByteString;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lcom/explorestack/protobuf/ByteString$LeafByteString;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/ByteString;)V
    .locals 2

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    instance-of v0, p1, Lcom/explorestack/protobuf/RopeByteString;

    if-eqz v0, :cond_0

    .line 721
    check-cast p1, Lcom/explorestack/protobuf/RopeByteString;

    .line 722
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/RopeByteString;->getTreeDepth()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    .line 723
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 724
    invoke-static {p1}, Lcom/explorestack/protobuf/RopeByteString;->access$400(Lcom/explorestack/protobuf/RopeByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 726
    iput-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    .line 727
    check-cast p1, Lcom/explorestack/protobuf/ByteString$LeafByteString;

    iput-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V
    .locals 0

    .line 715
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method private getLeafByLeft(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString$LeafByteString;
    .locals 1

    .line 733
    :goto_0
    instance-of v0, p1, Lcom/explorestack/protobuf/RopeByteString;

    if-eqz v0, :cond_0

    .line 734
    check-cast p1, Lcom/explorestack/protobuf/RopeByteString;

    .line 735
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 736
    invoke-static {p1}, Lcom/explorestack/protobuf/RopeByteString;->access$400(Lcom/explorestack/protobuf/RopeByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    goto :goto_0

    .line 738
    :cond_0
    check-cast p1, Lcom/explorestack/protobuf/ByteString$LeafByteString;

    return-object p1
.end method

.method private getNextNonEmptyLeaf()Lcom/explorestack/protobuf/ByteString$LeafByteString;
    .locals 2

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/RopeByteString;

    invoke-static {v0}, Lcom/explorestack/protobuf/RopeByteString;->access$500(Lcom/explorestack/protobuf/RopeByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString$LeafByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Lcom/explorestack/protobuf/ByteString$LeafByteString;
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->getNextNonEmptyLeaf()Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    return-object v0

    .line 769
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 715
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next()Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 778
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
