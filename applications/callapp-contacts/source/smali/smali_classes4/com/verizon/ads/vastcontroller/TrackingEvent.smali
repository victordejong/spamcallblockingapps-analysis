.class public Lcom/verizon/ads/vastcontroller/TrackingEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/vastcontroller/TrackingEvent$TrackingEventListener;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Lcom/verizon/ads/vastcontroller/TrackingEvent$TrackingEventListener;


# instance fields
.field public final name:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/verizon/ads/vastcontroller/TrackingEvent;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->a:Lcom/verizon/ads/Logger;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->c:Lcom/verizon/ads/vastcontroller/TrackingEvent$TrackingEventListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->name:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 21
    sget-object v0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic b()Lcom/verizon/ads/vastcontroller/TrackingEvent$TrackingEventListener;
    .locals 1

    .line 21
    sget-object v0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->c:Lcom/verizon/ads/vastcontroller/TrackingEvent$TrackingEventListener;

    return-object v0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 21
    sget-object v0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static fireEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/TrackingEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 109
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    sget-object v0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 115
    new-instance v0, Lcom/verizon/ads/vastcontroller/TrackingEvent$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/TrackingEvent$1;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static fireUrls(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 91
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    invoke-static {v1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    new-instance v2, Lcom/verizon/ads/vastcontroller/TrackingEvent;

    invoke-direct {v2, p1, v1}, Lcom/verizon/ads/vastcontroller/TrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static isIdle()Z
    .locals 1

    .line 144
    sget-object v0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setTrackingEventListener(Lcom/verizon/ads/vastcontroller/TrackingEvent$TrackingEventListener;)V
    .locals 0

    .line 85
    sput-object p0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->c:Lcom/verizon/ads/vastcontroller/TrackingEvent$TrackingEventListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/verizon/ads/vastcontroller/TrackingEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 56
    :cond_1
    check-cast p1, Lcom/verizon/ads/vastcontroller/TrackingEvent;

    .line 58
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/verizon/ads/vastcontroller/TrackingEvent;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrackingEvent{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
