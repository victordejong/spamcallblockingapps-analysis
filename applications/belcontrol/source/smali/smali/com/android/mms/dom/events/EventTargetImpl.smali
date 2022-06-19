.class public Lcom/android/mms/dom/events/EventTargetImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/w3c/dom/events/EventTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventTargetImpl"


# instance fields
.field private mListenerEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNodeTarget:Lorg/w3c/dom/events/EventTarget;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/events/EventTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mNodeTarget:Lorg/w3c/dom/events/EventTarget;

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/dom/events/EventTargetImpl;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchEvent(Lorg/w3c/dom/events/Event;)Z
    .locals 4

    check-cast p1, Lcom/android/mms/dom/events/EventImpl;

    invoke-virtual {p1}, Lcom/android/mms/dom/events/EventImpl;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mNodeTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-virtual {p1, v0}, Lcom/android/mms/dom/events/EventImpl;->setTarget(Lorg/w3c/dom/events/EventTarget;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/mms/dom/events/EventImpl;->setEventPhase(S)V

    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mNodeTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-virtual {p1, v0}, Lcom/android/mms/dom/events/EventImpl;->setCurrentTarget(Lorg/w3c/dom/events/EventTarget;)V

    invoke-virtual {p1}, Lcom/android/mms/dom/events/EventImpl;->isPropogationStopped()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;

    iget-boolean v2, v0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mUseCapture:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/mms/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v0, v0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mListener:Lorg/w3c/dom/events/EventListener;

    invoke-interface {v0, p1}, Lorg/w3c/dom/events/EventListener;->handleEvent(Lorg/w3c/dom/events/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "EventTargetImpl"

    const-string v3, "Catched EventListener exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/dom/events/EventImpl;->getBubbles()Z

    invoke-virtual {p1}, Lcom/android/mms/dom/events/EventImpl;->isPreventDefault()Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Lorg/w3c/dom/events/EventException;

    const-string v0, "Unspecified even type"

    invoke-direct {p1, v1, v0}, Lorg/w3c/dom/events/EventException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/w3c/dom/events/EventException;

    const-string v0, "Event not initialized"

    invoke-direct {p1, v1, v0}, Lorg/w3c/dom/events/EventException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;

    iget-boolean v2, v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mUseCapture:Z

    if-ne v2, p3, :cond_1

    iget-object v2, v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mListener:Lorg/w3c/dom/events/EventListener;

    if-ne v2, p2, :cond_1

    iget-object v1, v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
