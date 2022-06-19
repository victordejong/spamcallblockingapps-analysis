.class public final Lcom/facebook/ads/redexgen/X/3I;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ex;,
        Lcom/facebook/ads/redexgen/X/T0;,
        Lcom/facebook/ads/redexgen/X/3H;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/3H;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 8160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 8161
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ex;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ex;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3I;->A00:Lcom/facebook/ads/redexgen/X/3H;

    .line 8162
    :goto_0
    return-void

    .line 8163
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    .line 8164
    new-instance v0, Lcom/facebook/ads/redexgen/X/T0;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/T0;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3I;->A00:Lcom/facebook/ads/redexgen/X/3H;

    goto :goto_0

    .line 8165
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/3H;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3H;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3I;->A00:Lcom/facebook/ads/redexgen/X/3H;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .line 8166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8167
    return-void
.end method

.method public static A00(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .line 8168
    sget-object v0, Lcom/facebook/ads/redexgen/X/3I;->A00:Lcom/facebook/ads/redexgen/X/3H;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/3H;->A00(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static A01(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1

    .line 8169
    sget-object v0, Lcom/facebook/ads/redexgen/X/3I;->A00:Lcom/facebook/ads/redexgen/X/3H;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/3H;->A01(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 8170
    return-void
.end method
