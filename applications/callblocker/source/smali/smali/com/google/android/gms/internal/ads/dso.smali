.class public final Lcom/google/android/gms/internal/ads/dso;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 5
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 7
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    :cond_0
    return-void
.end method
