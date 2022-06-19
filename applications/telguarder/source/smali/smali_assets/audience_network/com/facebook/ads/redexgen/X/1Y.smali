.class public final Lcom/facebook/ads/redexgen/X/1Y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/1Y;)Ljava/lang/String;
    .locals 0

    .line 3472
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1Y;->A00:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/1Y;)Ljava/lang/String;
    .locals 0

    .line 3473
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1Y;->A01:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1Y;
    .locals 0

    .line 3474
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1Y;->A00:Ljava/lang/String;

    .line 3475
    return-object p0
.end method

.method public final A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1Y;
    .locals 0

    .line 3476
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1Y;->A01:Ljava/lang/String;

    .line 3477
    return-object p0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/1Z;
    .locals 2

    .line 3478
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1Z;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1Z;-><init>(Lcom/facebook/ads/redexgen/X/1Y;Lcom/facebook/ads/redexgen/X/1X;)V

    return-object v0
.end method
