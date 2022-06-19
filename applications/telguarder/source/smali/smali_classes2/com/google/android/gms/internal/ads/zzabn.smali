.class final synthetic Lcom/google/android/gms/internal/ads/zzabn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdws;


# instance fields
.field private final zzcmb:Lcom/google/android/gms/internal/ads/zzabl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzabl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabn;->zzcmb:Lcom/google/android/gms/internal/ads/zzabl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabn;->zzcmb:Lcom/google/android/gms/internal/ads/zzabl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzsf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
