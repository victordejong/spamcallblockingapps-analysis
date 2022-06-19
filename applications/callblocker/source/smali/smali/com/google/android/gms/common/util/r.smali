.class public final Lcom/google/android/gms/common/util/r;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# direct methods
.method public static a(Landroid/content/Context;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "com.google.android.gms"

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/util/r;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    :cond_0
    :goto_0
    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5
    :try_start_0
    const-string/jumbo v2, "com.google.android.gms"

    const/16 v3, 0x40

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;)Lcom/google/android/gms/common/i;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/i;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    goto :goto_0

    .line 9
    :catch_0
    move-exception v1

    const-string/jumbo v1, "UidVerifier"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    const-string/jumbo v1, "UidVerifier"

    const-string/jumbo v2, "Package manager can\'t find google play services package, defaulting to false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 15
    invoke-static {p0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/c/b;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
