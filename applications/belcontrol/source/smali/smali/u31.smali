.class public final Lu31;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lf41;


# direct methods
.method public constructor <init>(Lf41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu31;->a:Lf41;

    return-void
.end method

.method public static a(Lv31;)Lu31;
    .locals 2

    move-object v0, p0

    check-cast v0, Lf41;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lb51;->i(Lf41;)V

    invoke-static {v0}, Lb51;->g(Lf41;)V

    new-instance p0, Lu31;

    invoke-direct {p0, v0}, Lu31;-><init>(Lf41;)V

    invoke-virtual {v0}, Lf41;->t()Lf51;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf51;->d(Lu31;)V

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-static {v0}, Lb51;->g(Lf41;)V

    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-static {v0}, Lb51;->k(Lf41;)V

    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-virtual {v0}, Lf41;->p()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-virtual {v0}, Lf41;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-virtual {v0}, Lf41;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-virtual {v0}, Lf41;->j()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-static {v0}, Lb51;->k(Lf41;)V

    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-virtual {v0}, Lf41;->l()V

    return-void
.end method

.method public d(Lk41;)V
    .locals 1

    const-string v0, "VastProperties is null"

    invoke-static {p1, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-static {v0}, Lb51;->h(Lf41;)V

    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-static {v0}, Lb51;->k(Lf41;)V

    iget-object v0, p0, Lu31;->a:Lf41;

    invoke-virtual {p1}, Lk41;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf41;->i(Lorg/json/JSONObject;)V

    return-void
.end method
