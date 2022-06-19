.class public final Lcom/google/android/gms/internal/ads/zzcif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsh;


# instance fields
.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcpe:Lcom/google/android/gms/internal/ads/zzaba;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    return-void
.end method


# virtual methods
.method public final zzcb(Landroid/content/Context;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->onPause()V

    :cond_0
    return-void
.end method

.method public final zzcc(Landroid/content/Context;)V
    .locals 0

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->onResume()V

    :cond_0
    return-void
.end method

.method public final zzcd(Landroid/content/Context;)V
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->destroy()V

    :cond_0
    return-void
.end method
