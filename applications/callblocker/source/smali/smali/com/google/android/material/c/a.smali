.class public Lcom/google/android/material/c/a;
.super Ljava/lang/Object;
.source "CanvasCompat.java"


# direct methods
.method public static a(Landroid/graphics/Canvas;FFFFI)I
    .locals 7

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 59
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/16 v6, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    goto :goto_0
.end method
