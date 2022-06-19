.class public final Lcom/google/android/gms/common/util/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
