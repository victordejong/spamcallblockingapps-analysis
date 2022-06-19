.class public Lcom/android/mms/dom/smil/SmilDocumentImpl;
.super Lcom/android/mms/dom/DocumentImpl;
.source ""

# interfaces
.implements Lorg/w3c/dom/smil/SMILDocument;
.implements Lorg/w3c/dom/events/DocumentEvent;


# static fields
.field public static final SMIL_DOCUMENT_END_EVENT:Ljava/lang/String; = "SimlDocumentEnd"

.field public static final SMIL_DOCUMENT_START_EVENT:Ljava/lang/String; = "SmilDocumentStart"


# instance fields
.field public mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/dom/DocumentImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->beginElement()Z

    move-result v0

    return v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v0, "root-layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string v0, "region"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/mms/dom/smil/SmilRegionElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string v0, "ref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/mms/dom/smil/SmilRefElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilRefElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string v0, "par"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilParElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    :cond_6
    new-instance v0, Lcom/android/mms/dom/smil/SmilElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    :cond_7
    :goto_0
    new-instance v0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 2

    const-string v0, "Event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/mms/dom/events/EventImpl;

    invoke-direct {p1}, Lcom/android/mms/dom/events/EventImpl;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    const-string v1, "Not supported interface"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public endElement()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z

    move-result v0

    return v0
.end method

.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/w3c/dom/smil/SMILElement;
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/w3c/dom/smil/SMILElement;

    if-nez v2, :cond_1

    :cond_0
    const-string v1, "body"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    new-instance v0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    return-object v1
.end method

.method public bridge synthetic getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentElement()Lorg/w3c/dom/smil/SMILElement;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/dom/NodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/w3c/dom/smil/SMILElement;

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "smil"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    return-object v0
.end method

.method public getDur()F
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v0

    return v0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getFill()S
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getFill()S

    move-result v0

    return v0
.end method

.method public getFillDefault()S
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getFillDefault()S

    move-result v0

    return v0
.end method

.method public getHead()Lorg/w3c/dom/smil/SMILElement;
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/w3c/dom/smil/SMILElement;

    if-nez v2, :cond_1

    :cond_0
    const-string v1, "head"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    return-object v1
.end method

.method public getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/w3c/dom/smil/SMILLayoutElement;

    if-nez v2, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;

    const-string v2, "layout"

    invoke-direct {v1, p0, v2}, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    check-cast v1, Lorg/w3c/dom/smil/SMILLayoutElement;

    return-object v1
.end method

.method public getRepeatCount()F
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRepeatCount()F

    move-result v0

    return v0
.end method

.method public getRepeatDur()F
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRepeatDur()F

    move-result v0

    return v0
.end method

.method public getRestart()S
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRestart()S

    move-result v0

    return v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->pauseElement()V

    return-void
.end method

.method public resumeElement()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->resumeElement()V

    return-void
.end method

.method public seekElement(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->seekElement(F)V

    return-void
.end method

.method public setBegin(Lorg/w3c/dom/smil/TimeList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setBegin(Lorg/w3c/dom/smil/TimeList;)V

    return-void
.end method

.method public setDur(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setDur(F)V

    return-void
.end method

.method public setEnd(Lorg/w3c/dom/smil/TimeList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setEnd(Lorg/w3c/dom/smil/TimeList;)V

    return-void
.end method

.method public setFill(S)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setFill(S)V

    return-void
.end method

.method public setFillDefault(S)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setFillDefault(S)V

    return-void
.end method

.method public setRepeatCount(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRepeatCount(F)V

    return-void
.end method

.method public setRepeatDur(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRepeatDur(F)V

    return-void
.end method

.method public setRestart(S)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRestart(S)V

    return-void
.end method
