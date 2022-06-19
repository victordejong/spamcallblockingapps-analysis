.class public Lr41;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.4-Mopub"

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lr41;->d(Landroid/content/Context;)V

    invoke-virtual {p0}, Lr41;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr41;->c(Z)V

    invoke-static {}, Lq41;->c()Lq41;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq41;->d(Landroid/content/Context;)V

    invoke-static {}, Lm41;->a()Lm41;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm41;->b(Landroid/content/Context;)V

    invoke-static {p1}, Ly41;->c(Landroid/content/Context;)V

    invoke-static {}, Lo41;->a()Lo41;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo41;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lr41;->a:Z

    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lr41;->a:Z

    return v0
.end method
