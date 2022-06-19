.class public final Lcom/google/android/gms/internal/ads/v31;
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
        "Lcom/google/android/gms/internal/ads/gg;",
        "Lcom/google/android/gms/internal/ads/s11;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/ao0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ao0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v31;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v31;->b:Lcom/google/android/gms/internal/ads/ao0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/d21;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/yz0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/gg;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/d21;-><init>(Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/gg;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v31;->b:Lcom/google/android/gms/internal/ads/ao0;

    new-instance v2, Lcom/google/android/gms/internal/ads/k40;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/yz0;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/k40;-><init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/wn0;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/wn0;-><init>(Lcom/google/android/gms/internal/ads/qg0;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/ao0;->a(Lcom/google/android/gms/internal/ads/k40;Lcom/google/android/gms/internal/ads/wn0;)Lcom/google/android/gms/internal/ads/vn0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/v30;->d()Lcom/google/android/gms/internal/ads/i80;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/d21;->b(Lcom/google/android/gms/internal/ads/i80;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    check-cast p2, Lcom/google/android/gms/internal/ads/s11;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn0;->n()Lcom/google/android/gms/internal/ads/u41;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/s11;->A6(Lcom/google/android/gms/internal/ads/ne;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn0;->h()Lcom/google/android/gms/internal/ads/un0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)V
    .locals 10
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

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/il1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/il1;->a:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sl1;->o:Lcom/google/android/gms/internal/ads/hl1;

    iget v0, v0, Lcom/google/android/gms/internal/ads/hl1;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

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

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/v31;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/u31;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/u31;-><init>(Lcom/google/android/gms/internal/ads/v31;Lcom/google/android/gms/internal/ads/yz0;Lcom/google/android/gms/internal/ads/t31;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/ne;

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/gg;->u1(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dg;Lcom/google/android/gms/internal/ads/ne;)V

    return-void

    :cond_0
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

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/v31;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/u31;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/u31;-><init>(Lcom/google/android/gms/internal/ads/v31;Lcom/google/android/gms/internal/ads/yz0;Lcom/google/android/gms/internal/ads/t31;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/ne;

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/gg;->W0(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dg;Lcom/google/android/gms/internal/ads/ne;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote exception loading a rewarded RTB ad"

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/y0;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
