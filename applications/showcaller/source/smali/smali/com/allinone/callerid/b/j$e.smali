.class Lcom/allinone/callerid/b/j$e;
.super Ljava/lang/Object;
.source "DialAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/j;->h(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/search/CallLogBean;

.field final synthetic e:Lcom/allinone/callerid/b/j;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/j;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/j$e;->e:Lcom/allinone/callerid/b/j;

    iput-object p2, p0, Lcom/allinone/callerid/b/j$e;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/b/j$e;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/b/j$e;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-1"

    iget-object v1, p0, Lcom/allinone/callerid/b/j$e;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-2"

    iget-object v1, p0, Lcom/allinone/callerid/b/j$e;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-3"

    iget-object v1, p0, Lcom/allinone/callerid/b/j$e;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/b/j$e;->e:Lcom/allinone/callerid/b/j;

    invoke-static {v0}, Lcom/allinone/callerid/b/j;->g(Lcom/allinone/callerid/b/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/j$e;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/b/j$e;->e:Lcom/allinone/callerid/b/j;

    invoke-static {v0}, Lcom/allinone/callerid/b/j;->g(Lcom/allinone/callerid/b/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/j$e;->e:Lcom/allinone/callerid/b/j;

    invoke-static {v1}, Lcom/allinone/callerid/b/j;->g(Lcom/allinone/callerid/b/j;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100353

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/allinone/callerid/b/j$e;->e:Lcom/allinone/callerid/b/j;

    invoke-static {v0}, Lcom/allinone/callerid/b/j;->g(Lcom/allinone/callerid/b/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/j$e;->e:Lcom/allinone/callerid/b/j;

    invoke-static {v1}, Lcom/allinone/callerid/b/j;->g(Lcom/allinone/callerid/b/j;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100229

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void
.end method
