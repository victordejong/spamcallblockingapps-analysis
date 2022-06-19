.class public final Lcom/facebook/ads/redexgen/X/XQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XF;->A0S()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XF;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XQ;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XF;)V
    .locals 0

    .line 65080
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6N6vVeSa2fiLMumI874MmZheUZ1A3qOQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GO6Ruzt48gM95hBGUPDoi67S53Hwi31Y"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BVhI2ufrrienHkMUXKPz3hHOxL1NyTlk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uARnj0BYaSeQmY4wW9rpXK6Yh5v9yLJ9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Va0mqVc8sekYcRrEQ0S2aNlJPjR8E5lq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "p"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "spqtYzm1yNPZrn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ckwma3dY2i4MTrO81fhpnwNKbyWfOD92"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XQ;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 65081
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_0

    .line 65082
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/XF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65083
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/72;->A0E()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/72;->A0D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/XF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65085
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XF;->A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XQ;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XQ;->A01:[Ljava/lang/String;

    const-string v1, "CWfOcIkYN6z6U2MP9PYSlUUhuPmO1Xan"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "u3XrYbbYKI2MiHK4ROZWywhsPzyxjIJR"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 65086
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/XF;

    .line 65087
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XF;->A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XF;->A02(Landroid/telephony/CellInfo;)I

    move-result v0

    .line 65088
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 65089
    :goto_0
    return-object v0

    .line 65090
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/XF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
