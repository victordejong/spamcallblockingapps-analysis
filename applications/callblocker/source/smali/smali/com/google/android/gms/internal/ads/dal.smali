.class public final Lcom/google/android/gms/internal/ads/dal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string/jumbo v1, "android.app.Application"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    const/4 v0, 0x1

    .line 4
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
