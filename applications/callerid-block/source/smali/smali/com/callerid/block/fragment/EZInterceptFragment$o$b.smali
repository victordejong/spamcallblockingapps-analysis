.class Lcom/callerid/block/fragment/EZInterceptFragment$o$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/k/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment$o;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/EZInterceptFragment$o;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment$o;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->P1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/rey/material/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->N1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/victor/loading/rotate/RotateLoading;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->N1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/victor/loading/rotate/RotateLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/victor/loading/rotate/RotateLoading;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->N1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/victor/loading/rotate/RotateLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/victor/loading/rotate/RotateLoading;->g()V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->O1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->O1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->K1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->L1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v1, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->Q1(Lcom/callerid/block/fragment/EZInterceptFragment;Landroid/content/Context;)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "checkupdate"

    const-string v1, "onEnd"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->P1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/rey/material/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v1, v1, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;->a:Lcom/callerid/block/fragment/EZInterceptFragment$o;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->P1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/rey/material/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
