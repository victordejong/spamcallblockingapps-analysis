.class Lcom/callerid/block/fragment/EZInterceptFragment$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment;->o2(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/callerid/block/fragment/EZInterceptFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->G1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/callerid/block/bean/EZBlackList;

    invoke-direct {p1}, Lcom/callerid/block/bean/EZBlackList;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZBlackList;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    new-instance v0, Lcom/callerid/block/fragment/EZInterceptFragment$n$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$n$a;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment$n;)V

    invoke-static {p1, v0}, Lcom/callerid/block/h/a/c/b;->a(Lcom/callerid/block/bean/EZBlackList;Lcom/callerid/block/h/a/a;)V

    :goto_0
    return-void
.end method
