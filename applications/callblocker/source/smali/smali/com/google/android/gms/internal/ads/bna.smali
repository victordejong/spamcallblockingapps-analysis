.class public final Lcom/google/android/gms/internal/ads/bna;
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
        "Lcom/google/android/gms/internal/ads/ake;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ajy;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/bee;

.field private final d:Lcom/google/android/gms/internal/ads/chh;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ajy;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bee;Lcom/google/android/gms/internal/ads/chh;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bna;->b:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bna;->a:Lcom/google/android/gms/internal/ads/ajy;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bna;->e:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bna;->c:Lcom/google/android/gms/internal/ads/bee;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bna;->d:Lcom/google/android/gms/internal/ads/chh;

    .line 7
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 9

    .prologue
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bna;->b:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->r:Ljava/util/List;

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/chk;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bna;->c:Lcom/google/android/gms/internal/ads/bee;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/bee;->a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/act;

    move-result-object v2

    .line 16
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/bna;->a:Lcom/google/android/gms/internal/ads/ajy;

    new-instance v8, Lcom/google/android/gms/internal/ads/amy;

    const/4 v0, 0x0

    invoke-direct {v8, p1, p2, v0}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ajr;

    .line 17
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v1

    .line 18
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/chk;->a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/cgq;

    move-result-object v3

    iget v4, p2, Lcom/google/android/gms/internal/ads/cgr;->R:I

    iget-boolean v5, p2, Lcom/google/android/gms/internal/ads/cgr;->V:Z

    iget-boolean v6, p2, Lcom/google/android/gms/internal/ads/cgr;->F:Z

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ajr;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/cgq;IZZ)V

    .line 19
    invoke-virtual {v7, v8, v0}, Lcom/google/android/gms/internal/ads/ajy;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/ajr;)Lcom/google/android/gms/internal/ads/ajs;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ajs;->i()Lcom/google/android/gms/internal/ads/beh;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/beh;->a(Lcom/google/android/gms/internal/ads/act;Z)V

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amj;->d()Lcom/google/android/gms/internal/ads/aqh;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/bnc;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/bnc;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    .line 23
    sget-object v4, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 24
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ajs;->i()Lcom/google/android/gms/internal/ads/beh;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cgu;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgu;->a:Ljava/lang/String;

    .line 27
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/beh;->a(Lcom/google/android/gms/internal/ads/act;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 28
    new-instance v2, Lcom/google/android/gms/internal/ads/bnb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/bnb;-><init>(Lcom/google/android/gms/internal/ads/ajs;)V

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 30
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Z
    .locals 1

    .prologue
    .line 8
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/ake;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bmz;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/bmz;-><init>(Lcom/google/android/gms/internal/ads/bna;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bna;->e:Ljava/util/concurrent/Executor;

    .line 11
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
