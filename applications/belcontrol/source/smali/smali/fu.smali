.class public final Lfu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lut;


# instance fields
.field public final a:Ljt;

.field public b:Z

.field public c:J

.field public d:J

.field public f:Leh;


# direct methods
.method public constructor <init>(Ljt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfu;->a:Ljt;

    sget-object p1, Leh;->e:Leh;

    iput-object p1, p0, Lfu;->f:Leh;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lfu;->c:J

    iget-boolean p1, p0, Lfu;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfu;->a:Ljt;

    invoke-interface {p1}, Ljt;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lfu;->d:J

    :cond_0
    return-void
.end method

.method public b(Leh;)Leh;
    .locals 2

    iget-boolean v0, p0, Lfu;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfu;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lfu;->a(J)V

    :cond_0
    iput-object p1, p0, Lfu;->f:Leh;

    return-object p1
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lfu;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfu;->a:Ljt;

    invoke-interface {v0}, Ljt;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lfu;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfu;->b:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lfu;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfu;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lfu;->a(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfu;->b:Z

    :cond_0
    return-void
.end method

.method public getPlaybackParameters()Leh;
    .locals 1

    iget-object v0, p0, Lfu;->f:Leh;

    return-object v0
.end method

.method public getPositionUs()J
    .locals 7

    iget-wide v0, p0, Lfu;->c:J

    iget-boolean v2, p0, Lfu;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lfu;->a:Ljt;

    invoke-interface {v2}, Ljt;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lfu;->d:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lfu;->f:Leh;

    iget v5, v4, Leh;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    invoke-static {v2, v3}, Lcg;->a(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v2, v3}, Leh;->a(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method
