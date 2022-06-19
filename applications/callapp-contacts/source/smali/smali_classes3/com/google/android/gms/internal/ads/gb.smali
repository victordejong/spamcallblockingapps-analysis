.class public final Lcom/google/android/gms/internal/ads/gb;
.super Lcom/google/android/gms/internal/ads/fc;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/fz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/fz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gb;->a:Lcom/google/android/gms/internal/ads/fz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fc;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fz;Lcom/google/android/gms/internal/ads/gc;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gb;-><init>(Lcom/google/android/gms/internal/ads/fz;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eo;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gb;->a:Lcom/google/android/gms/internal/ads/fz;

    .line 1014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fz;->b:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gb;->a:Lcom/google/android/gms/internal/ads/fz;

    .line 2014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fz;->b:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gb;->a:Lcom/google/android/gms/internal/ads/fz;

    .line 3012
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/fz;->a(Lcom/google/android/gms/internal/ads/eo;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V

    return-void
.end method
