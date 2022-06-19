.class public final Lcom/facebook/ads/redexgen/X/aT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/G0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/C4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/CJ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/HH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HH;)V
    .locals 1

    .line 67452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67453
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    .line 67454
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A01:I

    .line 67455
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A00:I

    .line 67456
    return-void
.end method


# virtual methods
.method public final A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/C4;
    .locals 9

    .line 67457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A05:Z

    .line 67458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A02:Lcom/facebook/ads/redexgen/X/CJ;

    if-nez v0, :cond_0

    .line 67459
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Yq;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A02:Lcom/facebook/ads/redexgen/X/CJ;

    .line 67460
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/C4;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aT;->A02:Lcom/facebook/ads/redexgen/X/CJ;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/aT;->A01:I

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/aT;->A04:Ljava/lang/String;

    iget v6, p0, Lcom/facebook/ads/redexgen/X/aT;->A00:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/aT;->A03:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/C4;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/CJ;ILjava/lang/String;ILjava/lang/Object;Lcom/facebook/ads/redexgen/X/FA;)V

    return-object v0
.end method
