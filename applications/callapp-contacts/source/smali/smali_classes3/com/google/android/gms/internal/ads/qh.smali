.class public final Lcom/google/android/gms/internal/ads/qh;
.super Lcom/google/android/gms/internal/ads/fd;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/qg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/qg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qh;->a:Lcom/google/android/gms/internal/ads/qg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fd;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/qg;Lcom/google/android/gms/internal/ads/qf;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/qh;-><init>(Lcom/google/android/gms/internal/ads/qg;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eo;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qh;->a:Lcom/google/android/gms/internal/ads/qg;

    .line 1013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qg;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qh;->a:Lcom/google/android/gms/internal/ads/qg;

    .line 2012
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/qg;->a(Lcom/google/android/gms/internal/ads/eo;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;->onCustomFormatAdLoaded(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    return-void
.end method
