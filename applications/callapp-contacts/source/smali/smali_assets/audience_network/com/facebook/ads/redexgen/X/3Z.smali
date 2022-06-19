.class public final Lcom/facebook/ads/redexgen/X/3Z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/T6;,
        Lcom/facebook/ads/redexgen/X/3Y;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/3Y;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 8986
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 8987
    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/T6;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3Z;->A00:Lcom/facebook/ads/redexgen/X/3Y;

    .line 8988
    :goto_0
    return-void

    .line 8989
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/3Y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3Y;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3Z;->A00:Lcom/facebook/ads/redexgen/X/3Y;

    goto :goto_0
.end method

.method public static A00(Landroid/widget/EdgeEffect;FF)V
    .locals 1

    .line 8990
    sget-object v0, Lcom/facebook/ads/redexgen/X/3Z;->A00:Lcom/facebook/ads/redexgen/X/3Y;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/3Y;->A00(Landroid/widget/EdgeEffect;FF)V

    .line 8991
    return-void
.end method
