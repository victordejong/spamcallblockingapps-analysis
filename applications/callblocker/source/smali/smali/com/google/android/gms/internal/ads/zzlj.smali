.class public final Lcom/google/android/gms/internal/ads/zzlj;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "Failed to query underlying media codecs"

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/dpd;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzlj;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
