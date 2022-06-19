.class public final Lcom/facebook/ads/redexgen/X/AP;
.super Lcom/facebook/ads/redexgen/X/L6;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AN;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AP;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AN;)V
    .locals 0

    .line 21458
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AP;->A00:Lcom/facebook/ads/redexgen/X/AN;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L6;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NidaN7FoPBbaKg721Bw4T4ZedkUEC8Kp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "T6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FoXhB5efLBt1Ix1VLvHMf2xPaJTvayS4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ki7KmbouuPEeN63k7Tf8VIoYM6z8lFxL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sQ99pP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JVozQuP1BqTf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NfzwiYkR35AXK2rv0hn4uIoCH9D93AVk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "I59WEHRkBvEx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AP;->A01:[Ljava/lang/String;

    return-void
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 3

    .line 21459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A00:Lcom/facebook/ads/redexgen/X/AN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AN;->A00(Lcom/facebook/ads/redexgen/X/AN;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21460
    return-void

    .line 21461
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A00:Lcom/facebook/ads/redexgen/X/AN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AN;->A00(Lcom/facebook/ads/redexgen/X/AN;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MF;->A9k()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/AP;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_1

    .line 21462
    sget-object v2, Lcom/facebook/ads/redexgen/X/AP;->A01:[Ljava/lang/String;

    const-string v1, "dba5oiQ8v4CkqUII5uWz8sPENBYPSf9M"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 21463
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AP;->A01(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method
