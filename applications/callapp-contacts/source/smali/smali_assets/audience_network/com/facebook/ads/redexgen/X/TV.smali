.class public final Lcom/facebook/ads/redexgen/X/TV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4x;->A0B(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/MA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4x;)V
    .locals 0

    .line 54958
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAC()V
    .locals 2

    .line 54959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4x;->A01(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/50;

    move-result-object v1

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 54960
    return-void
.end method
