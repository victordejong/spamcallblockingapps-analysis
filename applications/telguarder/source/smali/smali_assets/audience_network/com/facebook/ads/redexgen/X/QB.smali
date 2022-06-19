.class public final Lcom/facebook/ads/redexgen/X/QB;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QB;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rQIl5N7VPfKdYPJpPoAtVMyZMy99P4x9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PltMJoJUoNKUoiKU9g8E45vZ11YXhZ8c"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Dj15PNqThKzSJ5rgUYjkzYgIYwsmp7Zv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "a9uitInFNtOBWkculkeZqlUrDZJBx3st"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kUexiMbXZkBESUK3bD4l7MKYNSBSiv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1n8Xv0E0fXzBNE5usuBA1Nf27I3K4LP8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4DPNNdejLcG9vMJExCrSPytZ3gIlmbXA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2XzQKkBGevJk3AOuOkjVAKczu2O9ZI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/QB;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A01(Landroid/view/View;)Z
    .locals 3

    .line 49149
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_1

    .line 49150
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/QB;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/QB;->A00:[Ljava/lang/String;

    const-string v1, "VvWjmMzUCUeRE9wUm3LNaHxJA9d87V8N"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "PH96s8M7TksfMzMk3oUF4ojCQwFkmMAr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 49151
    :goto_0
    return v0

    .line 49152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
