.class public final Lcom/google/android/gms/internal/ads/qi;
.super Lcom/google/android/gms/internal/ads/fc;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/qg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/qg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qi;->a:Lcom/google/android/gms/internal/ads/qg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fc;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/qg;Lcom/google/android/gms/internal/ads/qf;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/qi;-><init>(Lcom/google/android/gms/internal/ads/qg;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eo;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qi;->a:Lcom/google/android/gms/internal/ads/qg;

    .line 1014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qg;->b:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qi;->a:Lcom/google/android/gms/internal/ads/qg;

    .line 2014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qg;->b:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qi;->a:Lcom/google/android/gms/internal/ads/qg;

    .line 3012
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/qg;->a(Lcom/google/android/gms/internal/ads/eo;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Ljava/lang/String;)V

    return-void
.end method
