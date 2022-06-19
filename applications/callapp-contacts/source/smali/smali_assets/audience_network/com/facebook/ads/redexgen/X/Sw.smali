.class public final Lcom/facebook/ads/redexgen/X/Sw;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sw;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3D;)V
    .locals 0

    .line 53259
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2d;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qdMAGnvFuVn0ea0M3RnyzUUMgxm0S2Dt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2PeyHnmE0bX58Ffgk0gx7OXrgxltyZLW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2int"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nVrienaBQfkWnV6qIsNJmuY2fGTgVaBy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EIAfoPo9YRxYx4hqHxVbjlkHHJjThpFm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SPMlRY4DBSEQqdOiv1Q7wDslDeTbAa0F"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kfFOHzhabps7JVIWzUifit9US33gkwJk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A01:[Ljava/lang/String;

    return-void
.end method

.method private A01()Z
    .locals 2

    .line 53260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

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

    .line 53261
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 53262
    const-class v0, Lcom/facebook/ads/redexgen/X/3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 53263
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A01()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 53264
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v0, 0x1000

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_0

    .line 53265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 53266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 53267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 53268
    :cond_0
    return-void
.end method

.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 2

    .line 53269
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 53270
    const-class v0, Lcom/facebook/ads/redexgen/X/3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0P(Ljava/lang/CharSequence;)V

    .line 53271
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A01()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0S(Z)V

    .line 53272
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53273
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0O(I)V

    .line 53274
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53275
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0O(I)V

    .line 53276
    :cond_1
    return-void
.end method

.method public final A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .line 53277
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2d;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 53278
    return v3

    .line 53279
    :cond_0
    const/16 v0, 0x1000

    const/4 v5, 0x0

    if-eq p2, v0, :cond_3

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1

    .line 53280
    return v5

    .line 53281
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53282
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->setCurrentItem(I)V

    .line 53283
    return v3

    .line 53284
    :cond_2
    return v5

    .line 53285
    :cond_3
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A01:[Ljava/lang/String;

    const-string v1, "Vr8sNFSEZwclN9wLDYuYxTMloU2ohTqa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53286
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/3D;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->setCurrentItem(I)V

    .line 53287
    return v3

    .line 53288
    :cond_5
    return v5
.end method
