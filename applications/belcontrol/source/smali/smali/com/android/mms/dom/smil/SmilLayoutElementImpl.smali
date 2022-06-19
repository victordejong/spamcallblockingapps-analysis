.class public Lcom/android/mms/dom/smil/SmilLayoutElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source ""

# interfaces
.implements Lorg/w3c/dom/smil/SMILLayoutElement;


# direct methods
.method public constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRegions()Lorg/w3c/dom/NodeList;
    .locals 1

    const-string v0, "region"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getResolved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;
    .locals 6

    invoke-virtual {p0}, Lcom/android/mms/dom/NodeImpl;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "root-layout"

    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v0

    invoke-interface {v2, v0}, Lorg/w3c/dom/smil/ElementLayout;->setWidth(I)V

    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v0

    invoke-interface {v2, v0}, Lorg/w3c/dom/smil/ElementLayout;->setHeight(I)V

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    return-object v2
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
