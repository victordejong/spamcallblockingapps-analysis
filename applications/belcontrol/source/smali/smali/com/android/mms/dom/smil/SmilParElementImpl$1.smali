.class public Lcom/android/mms/dom/smil/SmilParElementImpl$1;
.super Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilParElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;


# direct methods
.method public constructor <init>(Lcom/android/mms/dom/smil/SmilParElementImpl;Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-direct {p0, p2}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 3

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    const-string v1, "Event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    const-string v1, "SmilSlideStart"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public endElement()Z
    .locals 3

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    const-string v1, "Event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    const-string v1, "SmilSlideEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 3

    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/mms/dom/smil/TimeListImpl;

    invoke-direct {v0, v1}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    :cond_0
    return-object v0
.end method

.method public getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    iget-object v0, v0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    return-object v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/NodeImpl;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 0

    return-void
.end method

.method public resumeElement()V
    .locals 0

    return-void
.end method

.method public seekElement(F)V
    .locals 0

    return-void
.end method
