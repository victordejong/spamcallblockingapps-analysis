.class public final Lcom/facebook/ads/redexgen/X/Wp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Wq;->A0N()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Wq;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wp;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wq;)V
    .locals 0

    .line 57333
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wp;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Vh7d3JLClPU6O6M8cwd6Jw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qoTOEE24iOX0Q2iJnmkuihyFZ58dtUeG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nAWEC03NDSwq9NkCe2EWt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lKLCTUg5DoQjO8iCafmP2M1qyzkHzRyN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zIUGSnqgNQBLElYl1akNx9HRDEYjixyz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "g15BZq0dmNsNcXFZVGLSC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "388jVMFAtK4Tm3JKA9SjxAcbz1TvPoye"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "A1Sv5qAzVDWgkr4HaP1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wp;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 57334
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ge v1, v0, :cond_0

    .line 57335
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wp;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 57336
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wp;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wp;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wp;->A01:[Ljava/lang/String;

    const-string v1, "bZz0x6nk4wqsfLm60KBH7nDut9sP39y5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "KyjNNUgB1DvvpLcjDLXdCxQbayCmxayp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Wq;->A03(Lcom/facebook/ads/redexgen/X/Wq;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57337
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wp;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Wq;->A03(Lcom/facebook/ads/redexgen/X/Wq;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 57338
    :goto_0
    return-object v0

    .line 57339
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wp;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
