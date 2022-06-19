.class public final Lcom/facebook/ads/redexgen/X/T9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/T6;->A0I()Lcom/facebook/ads/redexgen/X/JZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/T9;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hBf0w5eWi1Spl1ubHLZPwgySyKwDkFls"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "R1QfRDzVW3llag6pkWHTLJyFxLfuZYUb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hIMvI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VChjXPEjBKz9WEtkkyfZeEDOAtDm6pyS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZAoFS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FLKekHrPvHjWwOMiUj748H2wUl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "P5m22x1ZKo3VUkYY2cMyPktUJxi7JgjH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Nk3fSWmW4cxCKGmv1zm92qMESviF4Rnt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/T9;->A00:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ADy(Landroid/view/View;)Z
    .locals 4

    .line 53708
    instance-of v0, p1, Lcom/facebook/ads/MediaViewVideoRenderer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/facebook/ads/AdOptionsView;

    if-nez v0, :cond_1

    instance-of v3, p1, Lcom/facebook/ads/redexgen/X/1W;

    sget-object v2, Lcom/facebook/ads/redexgen/X/T9;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/T9;->A00:[Ljava/lang/String;

    const-string v1, "Wl6VPgUOv5U3aIay3uYdP7ATbKn3GAei"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "1IIQ0iRdDOMEIrt9vJnkadxPcZmieFNp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Ow;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
