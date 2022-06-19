.class public final Lcom/google/android/gms/internal/ads/zzvb;
.super Lcom/google/android/gms/internal/ads/zzwv;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final zzchd:Lcom/google/android/gms/internal/ads/zzvc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwv;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvc;->onAdClicked()V

    return-void
.end method
