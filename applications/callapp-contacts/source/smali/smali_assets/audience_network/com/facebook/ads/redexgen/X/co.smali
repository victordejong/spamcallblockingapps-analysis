.class public final Lcom/facebook/ads/redexgen/X/co;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ND;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cp;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/50;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/cp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cp;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 73287
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/co;->A01:Lcom/facebook/ads/redexgen/X/cp;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/co;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9k()V
    .locals 2

    .line 73288
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/co;->A00:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 73289
    return-void
.end method
