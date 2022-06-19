.class public final Lcom/google/android/gms/internal/ads/zzdpq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzhom:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/zzdpi;",
            "Lcom/google/android/gms/internal/ads/zzdpp<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbnt;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhom:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdpi;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdov;Lcom/google/android/gms/internal/ads/zzdpx;)Lcom/google/android/gms/internal/ads/zzdpp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdT:",
            "Lcom/google/android/gms/internal/ads/zzbnt;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdpi;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzdov;",
            "Lcom/google/android/gms/internal/ads/zzdpx<",
            "TAdT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdpp<",
            "TAdT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhom:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpb;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdpf;->zza(Lcom/google/android/gms/internal/ads/zzdpi;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdpf;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzdpb;-><init>(Lcom/google/android/gms/internal/ads/zzdpf;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-direct {p2, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzdpu;-><init>(Lcom/google/android/gms/internal/ads/zzdpc;Lcom/google/android/gms/internal/ads/zzdov;Lcom/google/android/gms/internal/ads/zzdpx;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdpp;

    invoke-direct {p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzdpp;-><init>(Lcom/google/android/gms/internal/ads/zzdpc;Lcom/google/android/gms/internal/ads/zzdpu;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhom:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    :cond_0
    return-object v0
.end method
