.class final Lcom/google/android/gms/internal/ads/hi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/hl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hl;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hi;->a:Lcom/google/android/gms/internal/ads/hl;

    .line 3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/hl;Lcom/google/android/gms/internal/ads/hf;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/hi;-><init>(Lcom/google/android/gms/internal/ads/hl;)V

    return-void
.end method


# virtual methods
.method public final notify(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi;->a:Lcom/google/android/gms/internal/ads/hl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/hl;->h(Ljava/lang/String;)Z

    .line 5
    return-void
.end method
