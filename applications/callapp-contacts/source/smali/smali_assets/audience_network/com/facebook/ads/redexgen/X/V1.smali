.class public final Lcom/facebook/ads/redexgen/X/V1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/V4;->A0J()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/V4;

.field public final synthetic A01:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/V4;Ljava/util/HashMap;)V
    .locals 0

    .line 56205
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:Lcom/facebook/ads/redexgen/X/V4;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 56206
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:Lcom/facebook/ads/redexgen/X/V4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A0V(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
