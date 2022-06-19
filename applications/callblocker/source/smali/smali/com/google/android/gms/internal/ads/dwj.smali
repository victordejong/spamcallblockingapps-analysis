.class public final Lcom/google/android/gms/internal/ads/dwj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dvu;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/dvu;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dwa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dwa;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dwa;->a(Lcom/google/android/gms/internal/ads/dvu;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
