.class public final Lcom/google/android/gms/internal/ads/ge;
.super Lcom/google/android/gms/internal/ads/fd;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/fz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/fz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ge;->a:Lcom/google/android/gms/internal/ads/fz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fd;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fz;Lcom/google/android/gms/internal/ads/gc;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ge;-><init>(Lcom/google/android/gms/internal/ads/fz;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eo;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ge;->a:Lcom/google/android/gms/internal/ads/fz;

    .line 1013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fz;->a:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ge;->a:Lcom/google/android/gms/internal/ads/fz;

    .line 2012
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/fz;->a(Lcom/google/android/gms/internal/ads/eo;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;->onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    return-void
.end method
