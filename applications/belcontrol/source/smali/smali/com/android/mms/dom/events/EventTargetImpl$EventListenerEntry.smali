.class public Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/events/EventTargetImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventListenerEntry"
.end annotation


# instance fields
.field public final mListener:Lorg/w3c/dom/events/EventListener;

.field public final mType:Ljava/lang/String;

.field public final mUseCapture:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mListener:Lorg/w3c/dom/events/EventListener;

    iput-boolean p3, p0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mUseCapture:Z

    return-void
.end method
