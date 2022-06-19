.class final Lcom/explorestack/iab/mraid/MraidView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Point;

.field final synthetic b:Lcom/explorestack/iab/mraid/MraidView$5;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/MraidView$5;Landroid/graphics/Point;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$5$1;->b:Lcom/explorestack/iab/mraid/MraidView$5;

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView$5$1;->a:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 435
    new-instance v0, Lcom/explorestack/iab/mraid/MraidView$5$1$1;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/MraidView$5$1$1;-><init>(Lcom/explorestack/iab/mraid/MraidView$5$1;)V

    .line 441
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$5$1;->b:Lcom/explorestack/iab/mraid/MraidView$5;

    iget-object v1, v1, Lcom/explorestack/iab/mraid/MraidView$5;->b:Lcom/explorestack/iab/mraid/MraidView;

    iget-object v2, p0, Lcom/explorestack/iab/mraid/MraidView$5$1;->a:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/explorestack/iab/mraid/MraidView$5$1;->a:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/explorestack/iab/mraid/MraidView$5$1;->b:Lcom/explorestack/iab/mraid/MraidView$5;

    iget-object v4, v4, Lcom/explorestack/iab/mraid/MraidView$5;->a:Lcom/explorestack/iab/mraid/h;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/explorestack/iab/mraid/MraidView;->access$4000(Lcom/explorestack/iab/mraid/MraidView;IILcom/explorestack/iab/mraid/h;Ljava/lang/Runnable;)V

    return-void
.end method
