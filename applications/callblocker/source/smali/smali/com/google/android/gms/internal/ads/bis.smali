.class final synthetic Lcom/google/android/gms/internal/ads/bis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bij;

.field private final b:Lcom/google/android/gms/internal/ads/yo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bij;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bis;->a:Lcom/google/android/gms/internal/ads/bij;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bis;->b:Lcom/google/android/gms/internal/ads/yo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bis;->b:Lcom/google/android/gms/internal/ads/yo;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/uw;->h()Lcom/google/android/gms/internal/ads/uh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/uh;->c()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
