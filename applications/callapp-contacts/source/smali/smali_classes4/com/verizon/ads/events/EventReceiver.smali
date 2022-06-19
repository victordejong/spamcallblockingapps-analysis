.class public abstract Lcom/verizon/ads/events/EventReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/verizon/ads/Logger;


# instance fields
.field final a:Landroid/os/Handler;

.field private c:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/verizon/ads/events/EventReceiver;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/events/EventReceiver;->b:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 47
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/verizon/ads/events/EventReceiver;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Creating new handler thread"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 51
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/verizon/ads/events/EventReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/verizon/ads/events/EventReceiver;->c:Landroid/os/HandlerThread;

    .line 52
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/verizon/ads/events/EventReceiver;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/verizon/ads/events/EventReceiver;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/verizon/ads/events/EventReceiver;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 21
    sget-object v0, Lcom/verizon/ads/events/EventReceiver;->b:Lcom/verizon/ads/Logger;

    return-object v0
.end method


# virtual methods
.method protected abstract onEvent$645b3fe5(Ljava/lang/Object;)V
.end method

.method public quit()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/verizon/ads/events/EventReceiver;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 77
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/verizon/ads/events/EventReceiver;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Quitting handler thread"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/events/EventReceiver;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/events/EventReceiver;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 86
    iput-object v1, p0, Lcom/verizon/ads/events/EventReceiver;->c:Landroid/os/HandlerThread;

    :cond_2
    return-void
.end method
