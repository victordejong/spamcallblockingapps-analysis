.class public final Lcom/facebook/ads/redexgen/X/SZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/N8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SY;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/50;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SY;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SY;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 52498
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SZ;->A01:Lcom/facebook/ads/redexgen/X/SY;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9j()V
    .locals 2

    .line 52499
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 52500
    return-void
.end method
