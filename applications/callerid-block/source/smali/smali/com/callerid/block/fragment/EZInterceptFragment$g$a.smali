.class Lcom/callerid/block/fragment/EZInterceptFragment$g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/callerid/block/fragment/EZInterceptFragment$g;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment$g;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->c:Lcom/callerid/block/fragment/EZInterceptFragment$g;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->c:Lcom/callerid/block/fragment/EZInterceptFragment$g;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$g;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->f2(Lcom/callerid/block/fragment/EZInterceptFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->c:Lcom/callerid/block/fragment/EZInterceptFragment$g;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$g;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->f2(Lcom/callerid/block/fragment/EZInterceptFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->c:Lcom/callerid/block/fragment/EZInterceptFragment$g;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$g;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->V1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/callerid/block/b/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->c:Lcom/callerid/block/fragment/EZInterceptFragment$g;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$g;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->W1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->c:Lcom/callerid/block/fragment/EZInterceptFragment$g;

    iget-object v1, v1, Lcom/callerid/block/fragment/EZInterceptFragment$g;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v1}, Lcom/callerid/block/fragment/EZInterceptFragment;->Z1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->c:Lcom/callerid/block/fragment/EZInterceptFragment$g;

    iget-object v2, v2, Lcom/callerid/block/fragment/EZInterceptFragment$g;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v2}, Lcom/callerid/block/fragment/EZInterceptFragment;->f2(Lcom/callerid/block/fragment/EZInterceptFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->c:Lcom/callerid/block/fragment/EZInterceptFragment$g;

    iget-object v2, v2, Lcom/callerid/block/fragment/EZInterceptFragment$g;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v2}, Lcom/callerid/block/fragment/EZInterceptFragment;->W1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/g;->b(Landroid/widget/ListView;)V

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v2, v1, :cond_1

    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;->c:Lcom/callerid/block/fragment/EZInterceptFragment$g;

    iget-object v1, v1, Lcom/callerid/block/fragment/EZInterceptFragment$g;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v1}, Lcom/callerid/block/fragment/EZInterceptFragment;->W1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
