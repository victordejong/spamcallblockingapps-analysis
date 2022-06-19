.class Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteStringListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/explorestack/protobuf/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final list:Lcom/explorestack/protobuf/LazyStringArrayList;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/LazyStringArrayList;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/explorestack/protobuf/LazyStringArrayList;

    return-void
.end method


# virtual methods
.method public add(ILcom/explorestack/protobuf/ByteString;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringArrayList;->access$500(Lcom/explorestack/protobuf/LazyStringArrayList;ILcom/explorestack/protobuf/ByteString;)V

    .line 394
    iget p1, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 367
    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->add(ILcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public get(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/LazyStringArrayList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->get(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object p1

    .line 400
    iget v0, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 401
    invoke-static {p1}, Lcom/explorestack/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->remove(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringArrayList;->access$300(Lcom/explorestack/protobuf/LazyStringArrayList;ILcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p1

    .line 387
    iget p2, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 388
    invoke-static {p1}, Lcom/explorestack/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 367
    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->set(ILcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
