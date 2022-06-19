.class final Lcom/google/ads/mediation/f;
.super Lcom/google/android/gms/ads/reward/a;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/ads/mediation/AbstractAdViewAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final k_()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzb(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzb(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->c()Landroid/os/Bundle;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v1}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/reward/mediation/a;->a(Landroid/os/Bundle;)V

    .line 5
    :cond_0
    return-void
.end method
