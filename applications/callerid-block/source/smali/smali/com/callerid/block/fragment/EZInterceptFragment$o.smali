.class Lcom/callerid/block/fragment/EZInterceptFragment$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment;->l2(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/view/animation/Animation;

.field final synthetic d:Lcom/callerid/block/fragment/EZInterceptFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment;Landroid/content/Context;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->c:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    new-instance p1, Lcom/callerid/block/fragment/EZInterceptFragment$o$a;

    invoke-direct {p1, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$o$a;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment$o;)V

    invoke-static {p1}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "offline_db_check_update_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/callerid/block/util/n0;->z0(Landroid/content/Context;J)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->K1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->L1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->M1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->N1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/victor/loading/rotate/RotateLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/victor/loading/rotate/RotateLoading;->e()V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->d:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->O1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->c:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    new-instance v1, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$o$b;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment$o;)V

    invoke-static {p1, v0, v1}, Lcom/callerid/block/k/a/e;->h(Landroid/content/Context;ZLcom/callerid/block/k/a/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$o;->b:Landroid/content/Context;

    const v1, 0x7f100197

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
