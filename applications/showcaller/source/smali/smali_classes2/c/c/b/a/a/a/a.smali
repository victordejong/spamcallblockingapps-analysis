.class public Lc/c/b/a/a/a/a;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# direct methods
.method public static a(I)Z
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
