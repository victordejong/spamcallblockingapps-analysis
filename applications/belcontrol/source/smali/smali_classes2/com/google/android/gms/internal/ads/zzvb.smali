.class public final Lcom/google/android/gms/internal/ads/zzvb;
.super Lcom/google/android/gms/internal/ads/zzwv;
.source ""


# instance fields
.field private final zzchd:Lcom/google/android/gms/internal/ads/zzvc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvc;->onAdClicked()V

    return-void
.end method
