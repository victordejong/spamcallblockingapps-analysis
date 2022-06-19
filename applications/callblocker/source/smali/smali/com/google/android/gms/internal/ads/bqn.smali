.class public final Lcom/google/android/gms/internal/ads/bqn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bmv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bmv",
        "<",
        "Lcom/google/android/gms/internal/ads/bdr;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bee;

.field private final c:Lcom/google/android/gms/internal/ads/bdu;

.field private final d:Lcom/google/android/gms/internal/ads/chh;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lcom/google/android/gms/internal/ads/yd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/chh;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bdu;Lcom/google/android/gms/internal/ads/bee;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqn;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bqn;->d:Lcom/google/android/gms/internal/ads/chh;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bqn;->c:Lcom/google/android/gms/internal/ads/bdu;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bqn;->e:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqn;->f:Lcom/google/android/gms/internal/ads/yd;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bqn;->b:Lcom/google/android/gms/internal/ads/bee;

    .line 8
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bev;Lcom/google/android/gms/internal/ads/chd;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 12

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqn;->b:Lcom/google/android/gms/internal/ads/bee;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqn;->d:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->e:Lcom/google/android/gms/internal/ads/dyd;

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/cgr;->P:Z

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bee;->a(Lcom/google/android/gms/internal/ads/dyd;Z)Lcom/google/android/gms/internal/ads/act;

    move-result-object v7

    .line 18
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/cgr;->M:Z

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/ads/act;->f(Z)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqn;->a:Landroid/content/Context;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/bev;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 20
    new-instance v6, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 22
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/bqn;->c:Lcom/google/android/gms/internal/ads/bdu;

    new-instance v10, Lcom/google/android/gms/internal/ads/amy;

    const/4 v0, 0x0

    invoke-direct {v10, p3, p1, v0}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/bds;

    new-instance v0, Lcom/google/android/gms/internal/ads/bqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqn;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bqn;->b:Lcom/google/android/gms/internal/ads/bee;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bqn;->d:Lcom/google/android/gms/internal/ads/chh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bqn;->f:Lcom/google/android/gms/internal/ads/yd;

    const/4 v8, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/bqt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bee;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/bqu;)V

    invoke-direct {v11, v0, v7}, Lcom/google/android/gms/internal/ads/bds;-><init>(Lcom/google/android/gms/internal/ads/awx;Lcom/google/android/gms/internal/ads/act;)V

    .line 23
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/ads/bdu;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/bds;)Lcom/google/android/gms/internal/ads/bdt;

    move-result-object v1

    .line 24
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bdt;->k()Lcom/google/android/gms/internal/ads/avb;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/fl;->a(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/fk;)V

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amj;->d()Lcom/google/android/gms/internal/ads/aqh;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/bqs;

    invoke-direct {v2, v7}, Lcom/google/android/gms/internal/ads/bqs;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    .line 28
    sget-object v3, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 29
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bdt;->l()Lcom/google/android/gms/internal/ads/beh;

    move-result-object v0

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v7, v2}, Lcom/google/android/gms/internal/ads/beh;->a(Lcom/google/android/gms/internal/ads/act;Z)V

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->df:Lcom/google/android/gms/internal/ads/ect;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/cgr;->P:Z

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 40
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/bqr;

    invoke-direct {v2, p0, v7, p1, v1}, Lcom/google/android/gms/internal/ads/bqr;-><init>(Lcom/google/android/gms/internal/ads/bqn;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bdt;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqn;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bdt;->l()Lcom/google/android/gms/internal/ads/beh;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgu;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cgu;->a:Ljava/lang/String;

    .line 39
    invoke-static {v7, v0, v2}, Lcom/google/android/gms/internal/ads/beh;->a(Lcom/google/android/gms/internal/ads/act;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Z
    .locals 1

    .prologue
    .line 9
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgu;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bdr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/bev;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bev;-><init>()V

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bqq;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/bqq;-><init>(Lcom/google/android/gms/internal/ads/bqn;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bev;Lcom/google/android/gms/internal/ads/chd;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bqn;->e:Ljava/util/concurrent/Executor;

    .line 13
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bqp;->a(Lcom/google/android/gms/internal/ads/bev;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bqn;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    return-object v1
.end method
