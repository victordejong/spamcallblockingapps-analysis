.class public final Lcom/google/android/gms/internal/ads/cet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/pw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/cjb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/cjb;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/pw;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cet;->a:Lcom/google/android/gms/internal/ads/pw;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cet;->b:Lcom/google/android/gms/internal/ads/cjb;

    .line 4
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/cjb;Lcom/google/android/gms/internal/ads/cer;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/cet;-><init>(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/cjb;)V

    return-void
.end method
