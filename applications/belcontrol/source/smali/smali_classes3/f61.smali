.class public Lf61;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field public static e:Lf61;


# instance fields
.field public a:Landroid/telecom/InCallService;

.field public b:Lux0;

.field public c:Landroid/telecom/Call;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/telecom/Call;",
            "Lg61;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf61;->c:Landroid/telecom/Call;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static h()Lf61;
    .locals 1

    sget-object v0, Lf61;->e:Lf61;

    if-nez v0, :cond_0

    new-instance v0, Lf61;

    invoke-direct {v0}, Lf61;-><init>()V

    sput-object v0, Lf61;->e:Lf61;

    :cond_0
    sget-object v0, Lf61;->e:Lf61;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/telecom/Call;)V
    .locals 2

    const-string v0, "CallManager"

    const-string v1, "accept Call"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->answer(I)V

    return-void
.end method

.method public b(Landroid/telecom/Call;)V
    .locals 2

    iput-object p1, p0, Lf61;->c:Landroid/telecom/Call;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    new-instance v1, Lg61;

    invoke-direct {v1, p1}, Lg61;-><init>(Landroid/telecom/Call;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Landroid/telecom/Call;)V
    .locals 2

    const-string v0, "CallManager"

    const-string v1, "cancel Call"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telecom/Call;->disconnect()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lf61;->a:Landroid/telecom/InCallService;

    return-void
.end method

.method public e()V
    .locals 1

    invoke-static {}, Lux0;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf61;->b:Lux0;

    return-void
.end method

.method public f()Landroid/telecom/CallAudioState;
    .locals 1

    iget-object v0, p0, Lf61;->a:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Landroid/telecom/Call;
    .locals 1

    iget-object v0, p0, Lf61;->c:Landroid/telecom/Call;

    return-object v0
.end method

.method public i(Lg61;)Lg61;
    .locals 8

    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg61;

    if-eqz v1, :cond_1

    move-object v3, v4

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    if-nez v3, :cond_2

    move-object v3, v4

    :cond_2
    iget-object v6, p1, Lg61;->a:Ljava/lang/String;

    iget-object v7, v4, Lg61;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ne v6, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, p1, Lg61;->a:Ljava/lang/String;

    iget-object v4, v4, Lg61;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-le v4, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v3
.end method

.method public j()Lux0;
    .locals 1

    iget-object v0, p0, Lf61;->b:Lux0;

    return-object v0
.end method

.method public k(Landroid/telecom/Call;)V
    .locals 2

    const-string v0, "CallManager"

    const-string v1, "hold"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Call;->hold()V

    return-void
.end method

.method public l(Landroid/telecom/Call;Ljava/lang/Character;)V
    .locals 2

    const-string v0, "CallManager"

    const-string v1, "playtone"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telecom/Call;->playDtmfTone(C)V

    return-void
.end method

.method public m(Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 2

    const-string v0, "CallManager"

    const-string v1, "reject Call"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    return-void
.end method

.method public n(Landroid/telecom/Call;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf61;->b:Lux0;

    invoke-virtual {p0, p1, v0}, Lf61;->y(Landroid/telecom/Call;Le61;)V

    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public o(I)V
    .locals 1

    iget-object v0, p0, Lf61;->a:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->setAudioRoute(I)V

    :cond_0
    return-void
.end method

.method public p(Landroid/telecom/Call;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lf61;->c:Landroid/telecom/Call;

    :cond_0
    return-void
.end method

.method public q(Landroid/telecom/InCallService;)V
    .locals 0

    iput-object p1, p0, Lf61;->a:Landroid/telecom/InCallService;

    return-void
.end method

.method public r(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lux0;

    invoke-direct {v0, p1}, Lux0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf61;->b:Lux0;

    return-void
.end method

.method public s(ILandroid/app/Notification;)V
    .locals 1

    iget-object v0, p0, Lf61;->a:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/telecom/InCallService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lf61;->a:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method public u(Landroid/telecom/Call;)V
    .locals 2

    const-string v0, "CallManager"

    const-string v1, "stop playtone"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Call;->stopDtmfTone()V

    return-void
.end method

.method public v(Landroid/telecom/Call;Le61;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg61;

    iget-object p1, p1, Lg61;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public w(Landroid/telecom/Call;)V
    .locals 2

    const-string v0, "CallManager"

    const-string v1, "toggle Hold"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lf61;->x(Landroid/telecom/Call;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lf61;->k(Landroid/telecom/Call;)V

    :goto_0
    return-void
.end method

.method public x(Landroid/telecom/Call;)V
    .locals 2

    const-string v0, "CallManager"

    const-string v1, "unhold"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Call;->unhold()V

    return-void
.end method

.method public y(Landroid/telecom/Call;Le61;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg61;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg61;->c()V

    iget-object p1, p1, Lg61;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public z(Landroid/telecom/Call;)V
    .locals 6

    const-string v0, "CallManager"

    const-string v1, "update Call"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg61;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p1, v0, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {v0, p1}, Lg61;->g(Landroid/telecom/Call;)V

    iget-object v1, v0, Lg61;->b:Lg61$c;

    sget-object v2, Lg61$c;->d:Lg61$c;

    if-ne v1, v2, :cond_2

    iget-wide v1, v0, Lg61;->m:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lg61;->m:J

    :cond_2
    iget-object v1, v0, Lg61;->b:Lg61$c;

    sget-object v2, Lg61$c;->f:Lg61$c;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, p1}, Lf61;->n(Landroid/telecom/Call;)V

    iget-object p1, p0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0, v0}, Lf61;->i(Lg61;)Lg61;

    move-result-object p1

    iget-object p1, p1, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p0, p1}, Lf61;->p(Landroid/telecom/Call;)V

    :cond_3
    invoke-virtual {v0}, Lg61;->b()V

    :cond_4
    return-void
.end method
