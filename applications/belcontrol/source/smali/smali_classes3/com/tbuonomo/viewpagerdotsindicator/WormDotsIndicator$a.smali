.class public Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$a;
.super Lyc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;


# direct methods
.method public constructor <init>(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$a;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-direct {p0, p2}, Lyc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$a;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$a;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$a;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
