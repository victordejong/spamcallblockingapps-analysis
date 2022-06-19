.class final Lcom/google/android/gms/internal/ads/mr;
.super Lcom/google/android/gms/internal/ads/vr;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/vr<",
        "Lcom/google/android/gms/internal/ads/ts;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzbdl;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/google/android/gms/internal/ads/s70;

.field final synthetic f:Lcom/google/android/gms/internal/ads/ur;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mr;->f:Lcom/google/android/gms/internal/ads/ur;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mr;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mr;->c:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mr;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/mr;->e:Lcom/google/android/gms/internal/ads/s70;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vr;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->b:Landroid/content/Context;

    const-string v1, "interstitial"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ur;->h(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/hv;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hv;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->f:Lcom/google/android/gms/internal/ads/ur;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ur;->a(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/tq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mr;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mr;->c:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/mr;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/mr;->e:Lcom/google/android/gms/internal/ads/s70;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/tq;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/ts;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/dt;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mr;->c:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/mr;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/mr;->e:Lcom/google/android/gms/internal/ads/s70;

    const v6, 0xcbe6bb0

    move-object v1, p1

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/dt;->w2(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/ts;

    move-result-object p1

    return-object p1
.end method
