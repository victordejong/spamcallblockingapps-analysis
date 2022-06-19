.class Lcom/callerid/block/fragment/EZInterceptFragment$n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment$n;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/EZInterceptFragment$n;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment$n;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n$a;->a:Lcom/callerid/block/fragment/EZInterceptFragment$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "add_blacklist"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n$a;->a:Lcom/callerid/block/fragment/EZInterceptFragment$n;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$n;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->G1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n$a;->a:Lcom/callerid/block/fragment/EZInterceptFragment$n;

    iget-object v1, v1, Lcom/callerid/block/fragment/EZInterceptFragment$n;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n$a;->a:Lcom/callerid/block/fragment/EZInterceptFragment$n;

    iget-boolean v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$n;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/callerid/block/bean/CollectInfo;

    invoke-direct {v0}, Lcom/callerid/block/bean/CollectInfo;-><init>()V

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n$a;->a:Lcom/callerid/block/fragment/EZInterceptFragment$n;

    iget-object v1, v1, Lcom/callerid/block/fragment/EZInterceptFragment$n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callerid/block/h/a/e/c;->c(Landroid/content/Context;Lcom/callerid/block/bean/CollectInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$n$a;->a:Lcom/callerid/block/fragment/EZInterceptFragment$n;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$n;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->I1(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    return-void
.end method
