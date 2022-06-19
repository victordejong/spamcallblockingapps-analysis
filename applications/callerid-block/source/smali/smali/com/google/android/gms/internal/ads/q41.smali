.class public final Lcom/google/android/gms/internal/ads/q41;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/d01;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/d01<",
        "Lcom/google/android/gms/internal/ads/un0;",
        "Lcom/google/android/gms/internal/ads/im1;",
        "Lcom/google/android/gms/internal/ads/t11;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/ao0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ao0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q41;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/q41;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/q41;->c:Lcom/google/android/gms/internal/ads/ao0;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/q41;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/q41;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/q41;Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/q41;->e(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)V

    return-void
.end method

.method private static final e(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ml1;",
            "Lcom/google/android/gms/internal/ads/al1;",
            "Lcom/google/android/gms/internal/ads/yz0<",
            "Lcom/google/android/gms/internal/ads/im1;",
            "Lcom/google/android/gms/internal/ads/t11;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/yz0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/im1;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/il1;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/il1;->a:Lcom/google/android/gms/internal/ads/sl1;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sl1;->d:Lcom/google/android/gms/internal/ads/zzys;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/al1;->u:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/im1;->o(Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/yz0;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fail to load ad from adapter "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q41;->c:Lcom/google/android/gms/internal/ads/ao0;

    new-instance v1, Lcom/google/android/gms/internal/ads/k40;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/yz0;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/k40;-><init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/wn0;

    new-instance p2, Lcom/google/android/gms/internal/ads/m41;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/m41;-><init>(Lcom/google/android/gms/internal/ads/yz0;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/wn0;-><init>(Lcom/google/android/gms/internal/ads/qg0;)V

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ao0;->a(Lcom/google/android/gms/internal/ads/k40;Lcom/google/android/gms/internal/ads/wn0;)Lcom/google/android/gms/internal/ads/vn0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/v30;->a()Lcom/google/android/gms/internal/ads/q80;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/lz;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/yz0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/im1;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/lz;-><init>(Lcom/google/android/gms/internal/ads/im1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/q41;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/tc0;->t0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/v30;->b()Lcom/google/android/gms/internal/ads/y80;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/v30;->c()Lcom/google/android/gms/internal/ads/q70;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn0;->i()Lcom/google/android/gms/internal/ads/x90;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn0;->k()Lcom/google/android/gms/internal/ads/af0;

    move-result-object v7

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    check-cast p2, Lcom/google/android/gms/internal/ads/t11;

    new-instance p3, Lcom/google/android/gms/internal/ads/p41;

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/p41;-><init>(Lcom/google/android/gms/internal/ads/q41;Lcom/google/android/gms/internal/ads/x90;Lcom/google/android/gms/internal/ads/q70;Lcom/google/android/gms/internal/ads/y80;Lcom/google/android/gms/internal/ads/af0;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/t11;->A6(Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn0;->h()Lcom/google/android/gms/internal/ads/un0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ml1;",
            "Lcom/google/android/gms/internal/ads/al1;",
            "Lcom/google/android/gms/internal/ads/yz0<",
            "Lcom/google/android/gms/internal/ads/im1;",
            "Lcom/google/android/gms/internal/ads/t11;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/yz0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/im1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/im1;->q()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/o41;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/o41;-><init>(Lcom/google/android/gms/internal/ads/q41;Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)V

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    check-cast v1, Lcom/google/android/gms/internal/ads/t11;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/t11;->B6(Lcom/google/android/gms/internal/ads/cf0;)V

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/yz0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/im1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/q41;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/il1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/il1;->a:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/sl1;->d:Lcom/google/android/gms/internal/ads/zzys;

    const/4 v4, 0x0

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/kk;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/al1;->u:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/im1;->n(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/q41;->e(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)V

    return-void
.end method
