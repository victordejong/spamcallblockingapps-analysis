.class public final Lcom/facebook/ads/redexgen/X/Yn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YV;->A0X()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YV;)V
    .locals 0

    .line 66003
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 66004
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:Lcom/facebook/ads/redexgen/X/YV;

    sget-wide v2, Landroid/os/Build;->TIME:J

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/6V;->A07(J)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
