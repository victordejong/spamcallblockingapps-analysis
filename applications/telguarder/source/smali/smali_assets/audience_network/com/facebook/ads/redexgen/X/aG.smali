.class public final Lcom/facebook/ads/redexgen/X/aG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5I;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5K;->A03(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/widget/ImageView;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/5K;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/T6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5K;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/T6;)V
    .locals 0

    .line 66802
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aG;->A01:Lcom/facebook/ads/redexgen/X/5K;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aG;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAJ(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A0c(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 66804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aG;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/T6;->A1J(Landroid/graphics/drawable/Drawable;)V

    .line 66805
    return-void
.end method
