.class final Lcom/facebook/rebound/ui/SpringConfiguratorView$d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Landroid/content/Context;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 367
    iput-object p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->c:Landroid/content/Context;

    .line 368
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {p0}, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 403
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->c:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 404
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 407
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p3, 0x41400000    # 12.0f

    .line 408
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-virtual {v0}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/rebound/ui/a;->a(FLandroid/content/res/Resources;)I

    move-result p3

    .line 409
    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 410
    iget-object p3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {p3}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j(Lcom/facebook/rebound/ui/SpringConfiguratorView;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 412
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    .line 414
    :goto_0
    iget-object p3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
