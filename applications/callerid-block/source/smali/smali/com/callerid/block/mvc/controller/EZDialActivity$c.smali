.class Lcom/callerid/block/mvc/controller/EZDialActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/EZDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/EZDialActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZDialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;->a:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/callerid/block/mvc/controller/EZDialActivity;->e0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;->a:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->T(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/EZKeyboardView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;->a:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->v0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;->a:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->g0(Lcom/callerid/block/mvc/controller/EZDialActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;->a:Lcom/callerid/block/mvc/controller/EZDialActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->i0(Lcom/callerid/block/mvc/controller/EZDialActivity;Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;->a:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->j0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/LImageButton;

    move-result-object p1

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;->a:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->j0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/LImageButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;->a:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->k0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/LImageButton;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;->a:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->k0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/LImageButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;->a:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->l0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/LImageButton;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;->a:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->l0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/LImageButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
