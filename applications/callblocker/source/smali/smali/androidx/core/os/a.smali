.class public final Landroidx/core/os/a;
.super Ljava/lang/Object;
.source "TraceCompat.java"


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 60
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 62
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 47
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method
