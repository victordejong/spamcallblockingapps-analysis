.class public final Lcom/facebook/ads/redexgen/X/Za;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZM;->A0J()Lcom/facebook/ads/redexgen/X/6e;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Za;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZM;)V
    .locals 0

    .line 66384
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IWMGQhIT8vT7nU03CN4oRNYRF035yfnB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rj0L4QPmVum"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pMptPABroQ7hRZNaJ4G4ujvqGruhstSZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3SMHhPoXyRs65eYMrGGTdOl2w3gXi8e4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bPp2WYUcz1mJqYl9hkMLDJhm577hbQA5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dOpP1PytzNdSDEBLdxAyc2PaUWJAeZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PvIn2vbO94sdBSxirrSmdOKJeMjBFpsd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3u3xmzj1SM4QrpkDUyqMpve1ylV9eg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Za;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZM;->A03(Lcom/facebook/ads/redexgen/X/ZM;)Lcom/facebook/ads/redexgen/X/5v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0b()Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0I:Lcom/facebook/ads/redexgen/X/6i;

    if-ne v1, v0, :cond_1

    .line 66386
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Za;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Za;->A01:[Ljava/lang/String;

    const-string v1, "y"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A04:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 66387
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZM;->A06(Lcom/facebook/ads/redexgen/X/ZM;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v1

    const/16 v0, 0x271a

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6y;->A06(I)Ljava/lang/String;

    move-result-object v1

    .line 66388
    .local p0, "appDexMd5":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 66389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66390
    :goto_0
    return-object v0

    .line 66391
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
