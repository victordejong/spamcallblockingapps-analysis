.class public final Lcom/google/android/gms/internal/ads/vl2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/zzfcg;",
            "Lcom/google/android/gms/internal/ads/ul2<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vl2;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzfcg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/el2;Lcom/google/android/gms/internal/ads/bm2;)Lcom/google/android/gms/internal/ads/ul2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/internal/ads/g21<",
            "TAdT;>;AdT:",
            "Lcom/google/android/gms/internal/ads/xy0;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzfcg;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/el2;",
            "Lcom/google/android/gms/internal/ads/bm2<",
            "TR;TAdT;>;)",
            "Lcom/google/android/gms/internal/ads/ul2<",
            "TR;TAdT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vl2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ul2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/kl2;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfcj;->k0(Lcom/google/android/gms/internal/ads/zzfcg;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfcj;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/kl2;-><init>(Lcom/google/android/gms/internal/ads/zzfcj;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/dm2;

    .line 3
    invoke-direct {p2, v0, p3, p4}, Lcom/google/android/gms/internal/ads/dm2;-><init>(Lcom/google/android/gms/internal/ads/jl2;Lcom/google/android/gms/internal/ads/el2;Lcom/google/android/gms/internal/ads/bm2;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/ul2;

    .line 4
    invoke-direct {p3, v0, p2}, Lcom/google/android/gms/internal/ads/ul2;-><init>(Lcom/google/android/gms/internal/ads/jl2;Lcom/google/android/gms/internal/ads/dm2;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vl2;->a:Ljava/util/HashMap;

    .line 5
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_0
    return-object v0
.end method
