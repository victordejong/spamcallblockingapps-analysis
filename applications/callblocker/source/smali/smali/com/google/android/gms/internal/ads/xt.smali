.class final Lcom/google/android/gms/internal/ads/xt;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xt;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/yf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yf;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yf;->a(Ljava/lang/String;)V

    .line 3
    return-void
.end method
