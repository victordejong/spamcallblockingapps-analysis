.class public abstract Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;
.super Lcom/android/mms/dom/smil/ElementTimeContainerImpl;
.source ""

# interfaces
.implements Lorg/w3c/dom/smil/ElementSequentialTimeContainer;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method


# virtual methods
.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 4

    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v3}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v3

    sub-float/2addr p1, v3

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {p1, v1}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {p1, v1}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public getDur()F
    .locals 6

    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v4}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_0
    invoke-interface {v4}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v4

    add-float/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
