.class public final Lcom/google/android/gms/internal/ads/y21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/d01;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/d01<",
        "Lcom/google/android/gms/internal/ads/ni0;",
        "Lcom/google/android/gms/internal/ads/gg;",
        "Lcom/google/android/gms/internal/ads/s11;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/fh0;

.field private c:Lcom/google/android/gms/internal/ads/we;

.field private final d:Lcom/google/android/gms/internal/ads/zzbbq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/fh0;Lcom/google/android/gms/internal/ads/zzbbq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y21;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/y21;->b:Lcom/google/android/gms/internal/ads/fh0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/y21;->d:Lcom/google/android/gms/internal/ads/zzbbq;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/y21;Lcom/google/android/gms/internal/ads/we;)Lcom/google/android/gms/internal/ads/we;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y21;->c:Lcom/google/android/gms/internal/ads/we;

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/il1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/il1;->a:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sl1;->g:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y21;->c:Lcom/google/android/gms/internal/ads/we;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/si0;->w(Lcom/google/android/gms/internal/ads/we;)Lcom/google/android/gms/internal/ads/si0;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/il1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/il1;->a:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sl1;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->X()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y21;->b:Lcom/google/android/gms/internal/ads/fh0;

    new-instance v2, Lcom/google/android/gms/internal/ads/k40;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/yz0;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/k40;-><init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/fj0;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/fj0;-><init>(Lcom/google/android/gms/internal/ads/si0;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/tk0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y21;->c:Lcom/google/android/gms/internal/ads/we;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0, v3}, Lcom/google/android/gms/internal/ads/tk0;-><init>(Lcom/google/android/gms/internal/ads/te;Lcom/google/android/gms/internal/ads/se;Lcom/google/android/gms/internal/ads/we;[B)V

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/fh0;->d(Lcom/google/android/gms/internal/ads/k40;Lcom/google/android/gms/internal/ads/fj0;Lcom/google/android/gms/internal/ads/tk0;)Lcom/google/android/gms/internal/ads/ui0;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    check-cast p2, Lcom/google/android/gms/internal/ads/s11;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/v30;->g()Lcom/google/android/gms/internal/ads/v41;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/s11;->A6(Lcom/google/android/gms/internal/ads/ne;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wi0;->h()Lcom/google/android/gms/internal/ads/ni0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzczn;

    const/4 p2, 0x1

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzczn;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzczn;

    const/4 p2, 0x2

    const-string p3, "Unified must be used for RTB."

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzczn;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ml1;",
            "Lcom/google/android/gms/internal/ads/al1;",
            "Lcom/google/android/gms/internal/ads/yz0<",
            "Lcom/google/android/gms/internal/ads/gg;",
            "Lcom/google/android/gms/internal/ads/s11;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/yz0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/gg;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/al1;->T:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gg;->r0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y21;->d:Lcom/google/android/gms/internal/ads/zzbbq;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->d:I

    sget-object v1, Lcom/google/android/gms/internal/ads/m3;->X0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/yz0;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/gg;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/al1;->O:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/al1;->u:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/il1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/il1;->a:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/sl1;->d:Lcom/google/android/gms/internal/ads/zzys;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y21;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/x21;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/x21;-><init>(Lcom/google/android/gms/internal/ads/y21;Lcom/google/android/gms/internal/ads/yz0;Lcom/google/android/gms/internal/ads/w21;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/ne;

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/gg;->p4(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/ag;Lcom/google/android/gms/internal/ads/ne;)V

    return-void

    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/yz0;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/gg;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/al1;->O:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/al1;->u:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/il1;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/il1;->a:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/sl1;->d:Lcom/google/android/gms/internal/ads/zzys;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y21;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/x21;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/x21;-><init>(Lcom/google/android/gms/internal/ads/y21;Lcom/google/android/gms/internal/ads/yz0;Lcom/google/android/gms/internal/ads/w21;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    move-object v9, p2

    check-cast v9, Lcom/google/android/gms/internal/ads/ne;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/il1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/il1;->a:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/sl1;->i:Lcom/google/android/gms/internal/ads/zzagy;

    invoke-interface/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/gg;->Y5(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/ag;Lcom/google/android/gms/internal/ads/ne;Lcom/google/android/gms/internal/ads/zzagy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdrl;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdrl;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
