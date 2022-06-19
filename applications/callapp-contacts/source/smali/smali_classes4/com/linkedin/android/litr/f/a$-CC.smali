.class public final synthetic Lcom/linkedin/android/litr/f/a$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$a(Lcom/linkedin/android/litr/f/a;Landroid/media/MediaFormat;)I
    .locals 1
    .param p0, "_this"    # Lcom/linkedin/android/litr/f/a;

    const-string v0, "sample-rate"

    .line 46
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static $default$b(Lcom/linkedin/android/litr/f/a;Landroid/media/MediaFormat;)I
    .locals 1
    .param p0, "_this"    # Lcom/linkedin/android/litr/f/a;

    const-string v0, "channel-count"

    .line 53
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
