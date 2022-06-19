.class public Lcom/android/mms/dom/smil/SmilParElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source ""

# interfaces
.implements Lorg/w3c/dom/smil/SMILParElement;


# static fields
.field public static final SMIL_SLIDE_END_EVENT:Ljava/lang/String; = "SmilSlideEnd"

.field public static final SMIL_SLIDE_START_EVENT:Ljava/lang/String; = "SmilSlideStart"


# instance fields
.field public mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# direct methods
.method public constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/android/mms/dom/smil/SmilParElementImpl$1;

    invoke-direct {p1, p0, p0}, Lcom/android/mms/dom/smil/SmilParElementImpl$1;-><init>(Lcom/android/mms/dom/smil/SmilParElementImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->beginElement()Z

    move-result v0

    return v0
.end method

.method public endElement()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z

    move-result v0

    return v0
.end method

.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getBeginConstraints()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getDur()F
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v0

    return v0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getEndSync()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEndSync()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFill()S
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getFill()S

    move-result v0

    return v0
.end method

.method public getFillDefault()S
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getFillDefault()S

    move-result v0

    return v0
.end method

.method public getImplicitDuration()F
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getImplicitDuration()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()F
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRepeatCount()F

    move-result v0

    return v0
.end method

.method public getRepeatDur()F
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRepeatDur()F

    move-result v0

    return v0
.end method

.method public getRestart()S
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRestart()S

    move-result v0

    return v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->pauseElement()V

    return-void
.end method

.method public resumeElement()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->resumeElement()V

    return-void
.end method

.method public seekElement(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->seekElement(F)V

    return-void
.end method

.method public setBegin(Lorg/w3c/dom/smil/TimeList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setBegin(Lorg/w3c/dom/smil/TimeList;)V

    return-void
.end method

.method public setDur(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setDur(F)V

    return-void
.end method

.method public setEnd(Lorg/w3c/dom/smil/TimeList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setEnd(Lorg/w3c/dom/smil/TimeList;)V

    return-void
.end method

.method public setEndSync(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setEndSync(Ljava/lang/String;)V

    return-void
.end method

.method public setFill(S)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setFill(S)V

    return-void
.end method

.method public setFillDefault(S)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setFillDefault(S)V

    return-void
.end method

.method public setRepeatCount(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRepeatCount(F)V

    return-void
.end method

.method public setRepeatDur(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRepeatDur(F)V

    return-void
.end method

.method public setRestart(S)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRestart(S)V

    return-void
.end method
