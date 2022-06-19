.class final Lcom/explorestack/protobuf/ByteString$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/explorestack/protobuf/ByteString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)I
    .locals 4

    .line 257
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    move-result-object v0

    .line 258
    invoke-virtual {p2}, Lcom/explorestack/protobuf/ByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    move-result-object v1

    .line 260
    :cond_0
    invoke-interface {v0}, Lcom/explorestack/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v0}, Lcom/explorestack/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v2

    invoke-static {v2}, Lcom/explorestack/protobuf/ByteString;->access$200(B)I

    move-result v2

    invoke-interface {v1}, Lcom/explorestack/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/ByteString;->access$200(B)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    .line 270
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result p1

    invoke-virtual {p2}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 254
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/ByteString$2;->compare(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)I

    move-result p1

    return p1
.end method
