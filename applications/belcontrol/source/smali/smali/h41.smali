.class public final Lh41;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lf41;


# direct methods
.method public constructor <init>(Lf41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh41;->a:Lf41;

    return-void
.end method

.method public static g(Lv31;)Lh41;
    .locals 2

    move-object v0, p0

    check-cast v0, Lf41;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lb51;->l(Lf41;)V

    invoke-static {v0}, Lb51;->c(Lf41;)V

    invoke-static {v0}, Lb51;->g(Lf41;)V

    invoke-static {v0}, Lb51;->j(Lf41;)V

    new-instance p0, Lh41;

    invoke-direct {p0, v0}, Lh41;-><init>(Lf41;)V

    invoke-virtual {v0}, Lf41;->t()Lf51;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf51;->h(Lh41;)V

    return-object p0
.end method


# virtual methods
.method public a(Lg41;)V
    .locals 2

    const-string v0, "InteractionType is null"

    invoke-static {p1, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "interactionType"

    invoke-static {v0, v1, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lh41;->a:Lf41;

    invoke-virtual {p1}, Lf41;->t()Lf51;

    move-result-object p1

    const-string v1, "adUserInteraction"

    invoke-virtual {p1, v1, v0}, Lf51;->k(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-virtual {v0}, Lf41;->t()Lf51;

    move-result-object v0

    const-string v1, "bufferFinish"

    invoke-virtual {v0, v1}, Lf51;->i(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-virtual {v0}, Lf41;->t()Lf51;

    move-result-object v0

    const-string v1, "bufferStart"

    invoke-virtual {v0, v1}, Lf51;->i(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-virtual {v0}, Lf41;->t()Lf51;

    move-result-object v0

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Lf51;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final e(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Media duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Media volume"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-virtual {v0}, Lf41;->t()Lf51;

    move-result-object v0

    const-string v1, "firstQuartile"

    invoke-virtual {v0, v1}, Lf51;->i(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-virtual {v0}, Lf41;->t()Lf51;

    move-result-object v0

    const-string v1, "midpoint"

    invoke-virtual {v0, v1}, Lf51;->i(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-virtual {v0}, Lf41;->t()Lf51;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lf51;->i(Ljava/lang/String;)V

    return-void
.end method

.method public k(Li41;)V
    .locals 2

    const-string v0, "PlayerState is null"

    invoke-static {p1, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    invoke-static {v0, v1, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lh41;->a:Lf41;

    invoke-virtual {p1}, Lf41;->t()Lf51;

    move-result-object p1

    const-string v1, "playerStateChange"

    invoke-virtual {p1, v1, v0}, Lf51;->k(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-virtual {v0}, Lf41;->t()Lf51;

    move-result-object v0

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lf51;->i(Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-virtual {v0}, Lf41;->t()Lf51;

    move-result-object v0

    const-string v1, "skipped"

    invoke-virtual {v0, v1}, Lf51;->i(Ljava/lang/String;)V

    return-void
.end method

.method public n(FF)V
    .locals 2

    invoke-virtual {p0, p1}, Lh41;->e(F)V

    invoke-virtual {p0, p2}, Lh41;->f(F)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "duration"

    invoke-static {v0, v1, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "mediaPlayerVolume"

    invoke-static {v0, p2, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lq41;->c()Lq41;

    move-result-object p1

    invoke-virtual {p1}, Lq41;->g()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "deviceVolume"

    invoke-static {v0, p2, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lh41;->a:Lf41;

    invoke-virtual {p1}, Lf41;->t()Lf51;

    move-result-object p1

    const-string p2, "start"

    invoke-virtual {p1, p2, v0}, Lf51;->k(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-virtual {v0}, Lf41;->t()Lf51;

    move-result-object v0

    const-string v1, "thirdQuartile"

    invoke-virtual {v0, v1}, Lf51;->i(Ljava/lang/String;)V

    return-void
.end method

.method public p(F)V
    .locals 2

    invoke-virtual {p0, p1}, Lh41;->f(F)V

    iget-object v0, p0, Lh41;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "mediaPlayerVolume"

    invoke-static {v0, v1, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lq41;->c()Lq41;

    move-result-object p1

    invoke-virtual {p1}, Lq41;->g()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "deviceVolume"

    invoke-static {v0, v1, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lh41;->a:Lf41;

    invoke-virtual {p1}, Lf41;->t()Lf51;

    move-result-object p1

    const-string v1, "volumeChange"

    invoke-virtual {p1, v1, v0}, Lf51;->k(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
