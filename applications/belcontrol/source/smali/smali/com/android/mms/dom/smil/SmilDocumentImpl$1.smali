.class public Lcom/android/mms/dom/smil/SmilDocumentImpl$1;
.super Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/dom/smil/SmilDocumentImpl;->getBody()Lorg/w3c/dom/smil/SMILElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;


# direct methods
.method public constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {p0, p2}, Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 3

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    const-string v1, "Event"

    invoke-virtual {v0, v1}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    const-string v1, "SmilDocumentStart"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public endElement()Z
    .locals 3

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    const-string v1, "Event"

    invoke-virtual {v0, v1}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    const-string v1, "par"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

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
