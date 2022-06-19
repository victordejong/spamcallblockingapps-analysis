.class public final Lcom/facebook/ads/redexgen/X/XJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XF;->A0K()Lcom/facebook/ads/redexgen/X/6e;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XJ;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XF;)V
    .locals 0

    .line 65039
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jQMBozSyNSG6fUrCN2QaddJHspHH76Ga"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "opSOJU44420OPvswjbzBtk8mAk4DIQD6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TsqgWHgN5AAXr4REvaAH4qbHcU3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "B6hWz38YVF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FYClfpnUcySPW54qe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HI6roq0k0XSsbfo88c3oh13rIj8qfQoe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "V5MdKqUqAG2iLlaBKP4Sef3Pkhe3bcoV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "taXLkhzTLiV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XJ;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 65040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XF;->A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65041
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/XF;

    sget-object v2, Lcom/facebook/ads/redexgen/X/XJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/XJ;->A01:[Ljava/lang/String;

    const-string v1, "Yb0rtWJLoA1WbdWayzkYFlvefJbSo7jK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "teu2yfpJzxxSHFDsQ9xOMqAShvu5PCXJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XF;->A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 65042
    :goto_0
    return-object v0

    .line 65043
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/XF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
