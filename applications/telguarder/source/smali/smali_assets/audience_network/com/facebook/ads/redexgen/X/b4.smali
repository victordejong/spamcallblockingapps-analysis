.class public final Lcom/facebook/ads/redexgen/X/b4;
.super Lcom/facebook/ads/redexgen/X/2d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAccessibilityDelegate"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3D;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b4;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3D;)V
    .locals 0

    .line 69041
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2d;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gP5iRBNUcEm4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hagqDV25a6ynaoYCoJf0l9z0sKG8jhWl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ooYhQl9ZMyV9UByvd6u2ZbJwINTXZRCk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "quE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9rQMt62DD9QRN345Nnq0LTFFdDUm2qAK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qEkkF74LDRYf2iXVehyp9KJG4XjlQH4Q"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6Z5psXCaQYJ6H"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "E0d3lf1uFrHxpWzWCxHKFqknJeusaBoL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b4;->A01:[Ljava/lang/String;

    return-void
.end method

.method private A01()Z
    .locals 2

    .line 69042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    if-le v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 69043
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 69044
    const-class v0, Lcom/facebook/ads/redexgen/X/3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 69045
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b4;->A01()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 69046
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v0, 0x1000

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_0

    .line 69047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 69048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 69049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 69050
    :cond_0
    return-void
.end method

.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 4

    .line 69051
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 69052
    const-class v0, Lcom/facebook/ads/redexgen/X/3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0P(Ljava/lang/CharSequence;)V

    .line 69053
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b4;->A01()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0S(Z)V

    .line 69054
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69055
    const/16 v3, 0x1000

    sget-object v1, Lcom/facebook/ads/redexgen/X/b4;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/b4;->A01:[Ljava/lang/String;

    const-string v1, "jglgbim5NCizxs0Sda1mccX23gBCKHWl"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p2, v3}, Lcom/facebook/ads/redexgen/X/3O;->A0O(I)V

    .line 69056
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69057
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0O(I)V

    .line 69058
    :cond_2
    return-void
.end method

.method public final A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 69059
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2d;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 69060
    return v3

    .line 69061
    :cond_0
    const/16 v0, 0x1000

    const/4 v2, 0x0

    if-eq p2, v0, :cond_3

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1

    .line 69062
    return v2

    .line 69063
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69064
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->setCurrentItem(I)V

    .line 69065
    return v3

    .line 69066
    :cond_2
    return v2

    .line 69067
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3D;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69068
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->setCurrentItem(I)V

    .line 69069
    return v3

    .line 69070
    :cond_4
    return v2
.end method
