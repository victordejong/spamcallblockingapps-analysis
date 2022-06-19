.class public final Lcom/facebook/ads/redexgen/X/JX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/T8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/T8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 0

    .line 40170
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 40171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Lcom/facebook/ads/redexgen/X/T8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/T8;->A01:Lcom/facebook/ads/redexgen/X/T6;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/T6;->A0Y:Lcom/facebook/ads/redexgen/X/c9;

    if-eqz v0, :cond_0

    .line 40172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Lcom/facebook/ads/redexgen/X/T8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/T8;->A01:Lcom/facebook/ads/redexgen/X/T6;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T6;->A0Y:Lcom/facebook/ads/redexgen/X/c9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02(Lcom/facebook/ads/redexgen/X/T8;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A0e(Ljava/util/Map;)V

    .line 40173
    :cond_0
    return-void
.end method
