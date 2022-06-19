.class Lcom/allinone/callerid/b/y$a;
.super Ljava/lang/Object;
.source "SubtypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/y;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/b/y$c;

.field final synthetic e:Lcom/allinone/callerid/bean/SubType;

.field final synthetic f:Lcom/allinone/callerid/b/y;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/y;Lcom/allinone/callerid/b/y$c;Lcom/allinone/callerid/bean/SubType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    iput-object p2, p0, Lcom/allinone/callerid/b/y$a;->d:Lcom/allinone/callerid/b/y$c;

    iput-object p3, p0, Lcom/allinone/callerid/b/y$a;->e:Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v0}, Lcom/allinone/callerid/b/y;->D(Lcom/allinone/callerid/b/y;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/allinone/callerid/b/y;->E(Lcom/allinone/callerid/b/y;Z)Z

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a;->d:Lcom/allinone/callerid/b/y$c;

    invoke-static {v0}, Lcom/allinone/callerid/b/y$c;->O(Lcom/allinone/callerid/b/y$c;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a;->d:Lcom/allinone/callerid/b/y$c;

    invoke-static {v0}, Lcom/allinone/callerid/b/y$c;->M(Lcom/allinone/callerid/b/y$c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v1}, Lcom/allinone/callerid/b/y;->F(Lcom/allinone/callerid/b/y;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a;->d:Lcom/allinone/callerid/b/y$c;

    invoke-static {v0}, Lcom/allinone/callerid/b/y$c;->M(Lcom/allinone/callerid/b/y$c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v1}, Lcom/allinone/callerid/b/y;->F(Lcom/allinone/callerid/b/y;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a;->d:Lcom/allinone/callerid/b/y$c;

    invoke-static {v0}, Lcom/allinone/callerid/b/y$c;->O(Lcom/allinone/callerid/b/y$c;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/b/y$a;->d:Lcom/allinone/callerid/b/y$c;

    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->O(Lcom/allinone/callerid/b/y$c;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance p1, Lcom/allinone/callerid/b/y$a$a;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/b/y$a$a;-><init>(Lcom/allinone/callerid/b/y$a;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
