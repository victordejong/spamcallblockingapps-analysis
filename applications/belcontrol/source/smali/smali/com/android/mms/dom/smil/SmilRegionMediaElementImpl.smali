.class public Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;
.super Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.source ""

# interfaces
.implements Lorg/w3c/dom/smil/SMILRegionMediaElement;


# instance fields
.field private mRegion:Lorg/w3c/dom/smil/SMILRegionElement;


# direct methods
.method public constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRegion()Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 6

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    const-string v1, "region"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/SMILRegionElement;

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILElement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v3, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    return-object v0
.end method

.method public setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILElement;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "region"

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    return-void
.end method
