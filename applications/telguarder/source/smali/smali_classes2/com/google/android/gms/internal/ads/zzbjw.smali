.class final synthetic Lcom/google/android/gms/internal/ads/zzbjw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfsc:Lcom/google/android/gms/internal/ads/zzbjt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbjt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjw;->zzfsc:Lcom/google/android/gms/internal/ads/zzbjt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjw;->zzfsc:Lcom/google/android/gms/internal/ads/zzbjt;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbjt;->zzfrx:Lcom/google/android/gms/internal/ads/zzbju;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbju;->zzb(Lcom/google/android/gms/internal/ads/zzbju;)Lcom/google/android/gms/internal/ads/zzbjz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzaiy()V

    return-void
.end method
