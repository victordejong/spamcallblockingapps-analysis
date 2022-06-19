.class public Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;
.super Lcom/android/mms/dom/smil/ElementTimeImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;


# direct methods
.method public constructor <init>(Lcom/android/mms/dom/smil/SmilMediaElementImpl;Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-direct {p0, p2}, Lcom/android/mms/dom/smil/ElementTimeImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method

.method private createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    const-string v1, "Event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method private createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    const-string v1, "Event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/events/EventImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Lcom/android/mms/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZI)V

    return-object v0
.end method


# virtual methods
.method public beginElement()Z
    .locals 2

    const-string v0, "SmilMediaStart"

    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public endElement()Z
    .locals 2

    const-string v0, "SmilMediaEnd"

    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public getDur()F
    .locals 4

    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "img"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Mms:smil"

    const-string v2, "Unknown media type"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/high16 v0, -0x40800000    # -1.0f

    :cond_4
    :goto_2
    return v0
.end method

.method public getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilParElementImpl;

    iget-object v0, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    return-object v0
.end method

.method public pauseElement()V
    .locals 2

    const-string v0, "SmilMediaPause"

    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    return-void
.end method

.method public resumeElement()V
    .locals 2

    const-string v0, "SmilMediaStart"

    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    return-void
.end method

.method public seekElement(F)V
    .locals 1

    float-to-int p1, p1

    const-string v0, "SmilMediaSeek"

    invoke-direct {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;

    move-result-object p1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v0, p1}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    return-void
.end method
