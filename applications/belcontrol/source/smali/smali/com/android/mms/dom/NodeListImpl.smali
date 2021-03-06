.class public Lcom/android/mms/dom/NodeListImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private mDeepSearch:Z

.field private mRootNode:Lorg/w3c/dom/Node;

.field private mSearchNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    iput-object p2, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/mms/dom/NodeListImpl;->mDeepSearch:Z

    return-void
.end method

.method private fillList(Lorg/w3c/dom/Node;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/android/mms/dom/NodeListImpl;->mDeepSearch:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
