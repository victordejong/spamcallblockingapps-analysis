.class final Lcom/google/android/gms/internal/ads/hh;
.super Lcom/google/android/gms/internal/ads/aev;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/hb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hh;->a:Lcom/google/android/gms/internal/ads/hb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aev;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/hb;Lcom/google/android/gms/internal/ads/hf;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/hh;-><init>(Lcom/google/android/gms/internal/ads/hb;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/aey;)V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->a:Lcom/google/android/gms/internal/ads/hb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hb;->a(Lcom/google/android/gms/internal/ads/hb;)Lcom/google/android/gms/internal/ads/hs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->a:Lcom/google/android/gms/internal/ads/hb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hb;->a(Lcom/google/android/gms/internal/ads/hb;)Lcom/google/android/gms/internal/ads/hs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hs;->a()V

    .line 4
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/aey;)V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->a:Lcom/google/android/gms/internal/ads/hb;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/aey;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ho;->a(Landroid/net/Uri;)Z

    .line 6
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/aey;)Z
    .locals 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->a:Lcom/google/android/gms/internal/ads/hb;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/aey;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ho;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
