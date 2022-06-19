.class public final Lcom/google/android/gms/internal/ads/xd;
.super Lcom/google/android/gms/internal/ads/uq;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yf;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/ads/xd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uq;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/yf;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/yf;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xd;->a:Lcom/google/android/gms/internal/ads/yf;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xd;->b:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xd;->a:Lcom/google/android/gms/internal/ads/yf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yf;->a(Ljava/lang/String;)V

    .line 8
    return-void
.end method
