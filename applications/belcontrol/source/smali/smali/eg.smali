.class public final Leg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg$a;
    }
.end annotation


# instance fields
.field public final a:Lfu;

.field public final b:Leg$a;

.field public c:Ljh;

.field public d:Lut;


# direct methods
.method public constructor <init>(Leg$a;Ljt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leg;->b:Leg$a;

    new-instance p1, Lfu;

    invoke-direct {p1, p2}, Lfu;-><init>(Ljt;)V

    iput-object p1, p0, Leg;->a:Lfu;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Leg;->d:Lut;

    invoke-interface {v0}, Lut;->getPositionUs()J

    move-result-wide v0

    iget-object v2, p0, Leg;->a:Lfu;

    invoke-virtual {v2, v0, v1}, Lfu;->a(J)V

    iget-object v0, p0, Leg;->d:Lut;

    invoke-interface {v0}, Lut;->getPlaybackParameters()Leh;

    move-result-object v0

    iget-object v1, p0, Leg;->a:Lfu;

    invoke-virtual {v1}, Lfu;->getPlaybackParameters()Leh;

    move-result-object v1

    invoke-virtual {v0, v1}, Leh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Leg;->a:Lfu;

    invoke-virtual {v1, v0}, Lfu;->b(Leh;)Leh;

    iget-object v1, p0, Leg;->b:Leg$a;

    invoke-interface {v1, v0}, Leg$a;->a(Leh;)V

    :cond_0
    return-void
.end method

.method public b(Leh;)Leh;
    .locals 1

    iget-object v0, p0, Leg;->d:Lut;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lut;->b(Leh;)Leh;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Leg;->a:Lfu;

    invoke-virtual {v0, p1}, Lfu;->b(Leh;)Leh;

    iget-object v0, p0, Leg;->b:Leg$a;

    invoke-interface {v0, p1}, Leg$a;->a(Leh;)V

    return-object p1
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Leg;->c:Ljh;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljh;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Leg;->c:Ljh;

    invoke-interface {v0}, Ljh;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leg;->c:Ljh;

    invoke-interface {v0}, Ljh;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljh;)V
    .locals 1

    iget-object v0, p0, Leg;->c:Ljh;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Leg;->d:Lut;

    iput-object p1, p0, Leg;->c:Ljh;

    :cond_0
    return-void
.end method

.method public e(Ljh;)V
    .locals 2

    invoke-interface {p1}, Ljh;->getMediaClock()Lut;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Leg;->d:Lut;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Leg;->d:Lut;

    iput-object p1, p0, Leg;->c:Ljh;

    iget-object p1, p0, Leg;->a:Lfu;

    invoke-virtual {p1}, Lfu;->getPlaybackParameters()Leh;

    move-result-object p1

    invoke-interface {v0, p1}, Lut;->b(Leh;)Leh;

    invoke-virtual {p0}, Leg;->a()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfg;->d(Ljava/lang/RuntimeException;)Lfg;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public f(J)V
    .locals 1

    iget-object v0, p0, Leg;->a:Lfu;

    invoke-virtual {v0, p1, p2}, Lfu;->a(J)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Leg;->a:Lfu;

    invoke-virtual {v0}, Lfu;->c()V

    return-void
.end method

.method public getPlaybackParameters()Leh;
    .locals 1

    iget-object v0, p0, Leg;->d:Lut;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lut;->getPlaybackParameters()Leh;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leg;->a:Lfu;

    invoke-virtual {v0}, Lfu;->getPlaybackParameters()Leh;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    invoke-virtual {p0}, Leg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leg;->d:Lut;

    invoke-interface {v0}, Lut;->getPositionUs()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Leg;->a:Lfu;

    invoke-virtual {v0}, Lfu;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Leg;->a:Lfu;

    invoke-virtual {v0}, Lfu;->d()V

    return-void
.end method

.method public i()J
    .locals 2

    invoke-virtual {p0}, Leg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leg;->a()V

    iget-object v0, p0, Leg;->d:Lut;

    invoke-interface {v0}, Lut;->getPositionUs()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Leg;->a:Lfu;

    invoke-virtual {v0}, Lfu;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method
