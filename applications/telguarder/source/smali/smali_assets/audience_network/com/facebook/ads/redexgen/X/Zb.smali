.class public final Lcom/facebook/ads/redexgen/X/Zb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZM;->A0Y()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zb;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZM;)V
    .locals 0

    .line 66392
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zb;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BH3BGkkB5fnRc1R42FPMp6gzfKm2QE6u"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ao3SwELw4Qbdtl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "J9MB2ogCpw7WuEMRFQqLtOpu1MdcZin"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "edEOpflcCshPHZZjQQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6jEtSpmeP4eI3SBVOaPVwxKi3uurdpPk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CMoDo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZNAxNnHklNbtDR1frln"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dqYxd4Y0KVrw9WAcZt30wh57cDqndUjI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zb;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZM;->A06(Lcom/facebook/ads/redexgen/X/ZM;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v1

    const/16 v0, 0x2715

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6y;->A06(I)Ljava/lang/String;

    move-result-object v4

    .line 66394
    .local p0, "appSha256Hash":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 66395
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zb;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zb;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zb;->A01:[Ljava/lang/String;

    const-string v1, "NYTFsHuPqaLCrs8iaGp9buPNQcp2wa9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Jk2FTI69z1XmY4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66396
    :goto_0
    return-object v0

    .line 66397
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zb;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
