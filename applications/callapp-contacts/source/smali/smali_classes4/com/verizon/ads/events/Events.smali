.class public Lcom/verizon/ads/events/Events;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/events/Events$Subscription;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Landroid/os/HandlerThread;

.field private static final c:Landroid/os/Handler;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/verizon/ads/events/Events$Subscription;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/verizon/ads/events/Events;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/events/Events;->a:Lcom/verizon/ads/Logger;

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/verizon/ads/events/Events;->d:Ljava/util/Map;

    .line 35
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    sput-object v1, Lcom/verizon/ads/events/Events;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/verizon/ads/events/Events;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 26
    sget-object v0, Lcom/verizon/ads/events/Events;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V
    .locals 3

    if-nez p0, :cond_0

    .line 1135
    sget-object p0, Lcom/verizon/ads/events/Events;->a:Lcom/verizon/ads/Logger;

    const-string p1, "eventReceiver cannot be null"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 1142
    :cond_0
    sget-object v0, Lcom/verizon/ads/events/Events;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    .line 1144
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1145
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    :cond_1
    new-instance v0, Lcom/verizon/ads/events/Events$Subscription;

    invoke-direct {v0, p0, p2}, Lcom/verizon/ads/events/Events$Subscription;-><init>(Lcom/verizon/ads/events/EventReceiver;Lcom/verizon/ads/events/EventMatcher;)V

    .line 1149
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    const-string p2, ", "

    if-nez p0, :cond_2

    .line 1150
    sget-object p0, Lcom/verizon/ads/events/Events;->a:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already subscribed for topic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p0, 0x3

    .line 1151
    invoke-static {p0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1152
    sget-object p0, Lcom/verizon/ads/events/Events;->a:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscribed to topic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 1267
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/events/Events$Subscription;

    .line 1268
    iget-object v1, v0, Lcom/verizon/ads/events/Events$Subscription;->a:Lcom/verizon/ads/events/EventReceiver;

    iget-object v0, v0, Lcom/verizon/ads/events/Events$Subscription;->b:Lcom/verizon/ads/events/EventMatcher;

    .line 2093
    iget-object v2, v1, Lcom/verizon/ads/events/EventReceiver;->a:Landroid/os/Handler;

    new-instance v3, Lcom/verizon/ads/events/EventReceiver$1;

    invoke-direct {v3, v1, v0, p1, p2}, Lcom/verizon/ads/events/EventReceiver$1;-><init>(Lcom/verizon/ads/events/EventReceiver;Lcom/verizon/ads/events/EventMatcher;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V
    .locals 4

    if-nez p0, :cond_0

    .line 1197
    sget-object p0, Lcom/verizon/ads/events/Events;->a:Lcom/verizon/ads/Logger;

    const-string p1, "eventReceiver cannot be null"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 1204
    :cond_0
    sget-object v0, Lcom/verizon/ads/events/Events;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x0

    .line 1207
    new-instance v3, Lcom/verizon/ads/events/Events$Subscription;

    invoke-direct {v3, p0, p2}, Lcom/verizon/ads/events/Events$Subscription;-><init>(Lcom/verizon/ads/events/EventReceiver;Lcom/verizon/ads/events/EventMatcher;)V

    if-eqz v1, :cond_1

    .line 1210
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1213
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1214
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p0, ", "

    if-nez v2, :cond_2

    .line 1219
    sget-object p2, Lcom/verizon/ads/events/Events;->a:Lcom/verizon/ads/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not subscribed to topic: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p2, 0x3

    .line 1220
    invoke-static {p2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1221
    sget-object p2, Lcom/verizon/ads/events/Events;->a:Lcom/verizon/ads/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsubscribed from topic: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x3

    .line 235
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/verizon/ads/events/Events;->a:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Send event topic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    .line 240
    sget-object p0, Lcom/verizon/ads/events/Events;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Topic cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 246
    :cond_1
    sget-object v0, Lcom/verizon/ads/events/Events;->c:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/events/Events$3;

    invoke-direct {v1, p0, p1}, Lcom/verizon/ads/events/Events$3;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static subscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-static {p0, p1, v0}, Lcom/verizon/ads/events/Events;->subscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V

    return-void
.end method

.method public static subscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V
    .locals 2

    .line 121
    sget-object v0, Lcom/verizon/ads/events/Events;->c:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/events/Events$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/verizon/ads/events/Events$1;-><init>(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static unsubscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-static {p0, p1, v0}, Lcom/verizon/ads/events/Events;->unsubscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V

    return-void
.end method

.method public static unsubscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V
    .locals 2

    .line 183
    sget-object v0, Lcom/verizon/ads/events/Events;->c:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/events/Events$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/verizon/ads/events/Events$2;-><init>(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
