.class final synthetic Lcom/google/android/gms/internal/ads/zzdee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhcm:Lcom/google/android/gms/internal/ads/zzdef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdee;->zzhcm:Lcom/google/android/gms/internal/ads/zzdef;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdee;->zzhcm:Lcom/google/android/gms/internal/ads/zzdef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdef;->zzatk()Lcom/google/android/gms/internal/ads/zzdec;

    move-result-object v0

    return-object v0
.end method
