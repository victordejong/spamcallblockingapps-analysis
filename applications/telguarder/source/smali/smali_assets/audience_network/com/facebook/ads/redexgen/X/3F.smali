.class public final Lcom/facebook/ads/redexgen/X/3F;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Et;,
        Lcom/facebook/ads/redexgen/X/b2;,
        Lcom/facebook/ads/redexgen/X/3E;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Lcom/facebook/ads/redexgen/X/3E;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 8204
    invoke-static {}, Lcom/facebook/ads/redexgen/X/3F;->A00()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 8205
    new-instance v0, Lcom/facebook/ads/redexgen/X/Et;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Et;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3F;->A01:Lcom/facebook/ads/redexgen/X/3E;

    .line 8206
    :goto_0
    return-void

    .line 8207
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_1

    .line 8208
    new-instance v0, Lcom/facebook/ads/redexgen/X/b2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/b2;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3F;->A01:Lcom/facebook/ads/redexgen/X/3E;

    goto :goto_0

    .line 8209
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/3E;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3E;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3F;->A01:Lcom/facebook/ads/redexgen/X/3E;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .line 8210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZL1anCMt3BLp6QH6mLG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eYchmtpQAx9MOQATO8FYbbZn0Imopvp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "womqJE18VUE38xqqJT9WKISB68M5cIbo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ts37DulPc8QB3fV2ykqejrUSGmoT8jSS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "b7DBuf20fhmi4MvO4gTJDnUAFhtFn7QS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "riPo3ZmcE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zdrgnlBB6epFGiAXytvDtgh2fpyUYHeQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pMT1BFzteNKtMElnfmBSO9c56WwnbBlh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3F;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A01(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 1

    .line 8211
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/b7;

    if-eqz v0, :cond_0

    .line 8212
    const/4 v0, 0x0

    throw v0

    .line 8213
    :cond_0
    if-nez p2, :cond_1

    .line 8214
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A01:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/3E;->A03(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 8215
    :cond_1
    return-void
.end method

.method public static A02(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .locals 1

    .line 8216
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/b7;

    if-eqz v0, :cond_0

    .line 8217
    const/4 v0, 0x0

    throw v0

    .line 8218
    :cond_0
    if-nez p6, :cond_1

    .line 8219
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A01:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/3E;->A04(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    .line 8220
    :cond_1
    return-void
.end method

.method public static A03(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 1

    .line 8221
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/b7;

    if-eqz v0, :cond_0

    .line 8222
    const/4 v0, 0x0

    throw v0

    .line 8223
    :cond_0
    if-nez p5, :cond_1

    .line 8224
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A01:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/3E;->A05(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    .line 8225
    :cond_1
    return-void
.end method

.method public static A04(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 8226
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/b7;

    if-eqz v0, :cond_0

    .line 8227
    const/4 v0, 0x0

    throw v0

    .line 8228
    :cond_0
    if-nez p4, :cond_1

    .line 8229
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A01:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3E;->A06(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    .line 8230
    :cond_1
    return-void
.end method

.method public static A05(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    .line 8231
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A01:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3E;->A07(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static A06(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 1

    .line 8232
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A01:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/3E;->A08(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static A07(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 3

    .line 8233
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/b7;

    if-eqz v0, :cond_1

    .line 8234
    sget-object v2, Lcom/facebook/ads/redexgen/X/3F;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3F;->A00:[Ljava/lang/String;

    const-string v1, "qPl"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    check-cast p0, Lcom/facebook/ads/redexgen/X/b7;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/b7;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0

    .line 8235
    :cond_1
    if-nez p4, :cond_2

    .line 8236
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A01:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3E;->A09(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 8237
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
