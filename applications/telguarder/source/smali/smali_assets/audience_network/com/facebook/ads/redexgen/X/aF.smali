.class public final Lcom/facebook/ads/redexgen/X/aF;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5K;->A03(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/graphics/drawable/Drawable;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/5K;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/T6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5K;Lcom/facebook/ads/redexgen/X/T6;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 66799
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aF;->A01:Lcom/facebook/ads/redexgen/X/5K;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aF;->A02:Lcom/facebook/ads/redexgen/X/T6;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 66800
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aF;->A02:Lcom/facebook/ads/redexgen/X/T6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1J(Landroid/graphics/drawable/Drawable;)V

    .line 66801
    return-void
.end method
