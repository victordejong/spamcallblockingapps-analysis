.class public final Lcom/google/android/gms/internal/ads/bw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/uj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oh2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bw;->a:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/uj;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bw;->a:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v0, Lcom/google/android/gms/internal/ads/kv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kv;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->q()Lcom/google/android/gms/internal/ads/zc;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbq;->a()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/jd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/gd;->b:Lcom/google/android/gms/internal/ads/cd;

    const-string v3, "google.afma.request.getAdDictionary"

    invoke-virtual {v1, v3, v2, v2}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bd;Lcom/google/android/gms/internal/ads/ad;)Lcom/google/android/gms/internal/ads/yc;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->q()Lcom/google/android/gms/internal/ads/zc;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbq;->a()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/jd;

    move-result-object v1

    const-string v3, "google.afma.sdkConstants.getSdkConstants"

    invoke-virtual {v1, v3, v2, v2}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bd;Lcom/google/android/gms/internal/ads/ad;)Lcom/google/android/gms/internal/ads/yc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/tj;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/tj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yc;)V

    return-object v2
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bw;->a()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v0

    return-object v0
.end method
