.class public final Lcom/facebook/ads/redexgen/X/bv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bb;->A0a(Lcom/facebook/ads/redexgen/X/50;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/50;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/bb;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bv;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bb;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 71374
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bv;->A01:Lcom/facebook/ads/redexgen/X/bb;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bv;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9zQQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ignw1BD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Iwiu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Rj9759ruFeEHfZFHtC0tN77N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Yw9WW67qBp7nurOongm62UMTZpj72Daq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XdprQx2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zMrI2nkZvee1EVY6Hu3DKwgaLEX6aHI5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7LD9TnQa5MzlVBDCJJS9JW3wW2x"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bv;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A9k()V
    .locals 4

    .line 71375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bv;->A01:Lcom/facebook/ads/redexgen/X/bb;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bb;->A0C:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A07:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 71376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bv;->A01:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71377
    return-void

    .line 71378
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bv;->A01:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A0c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71379
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bv;->A01:Lcom/facebook/ads/redexgen/X/bb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bv;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A0b(Lcom/facebook/ads/redexgen/X/50;)V

    .line 71380
    :goto_0
    return-void

    .line 71381
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bv;->A00:Lcom/facebook/ads/redexgen/X/50;

    sget-object v1, Lcom/facebook/ads/redexgen/X/bv;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/bv;->A02:[Ljava/lang/String;

    const-string v1, "TQLH18Rv5MEOVOxcIrRMtSKcbgUrlpIS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    goto :goto_0
.end method
