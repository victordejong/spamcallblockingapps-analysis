.class Lcom/allinone/callerid/b/t$i;
.super Ljava/lang/Object;
.source "RecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/t;->L(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/search/CallLogBean;

.field final synthetic e:Lcom/allinone/callerid/b/t;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/t;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/t$i;->e:Lcom/allinone/callerid/b/t;

    iput-object p2, p0, Lcom/allinone/callerid/b/t$i;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/b/t$i;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, ""

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/b/t$i;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v1}, Lcom/allinone/callerid/b/t;->F(Lcom/allinone/callerid/b/t;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/a1;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/b/t$i;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v2}, Lcom/allinone/callerid/b/t;->C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/allinone/callerid/util/b1;->d(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/b/t$i;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v1}, Lcom/allinone/callerid/b/t;->C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/b1;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/b/t$i;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v1}, Lcom/allinone/callerid/b/t;->C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/allinone/callerid/b/t$i;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v1}, Lcom/allinone/callerid/b/t;->C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/b/t$i;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v0}, Lcom/allinone/callerid/b/t;->C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/t$i;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v1}, Lcom/allinone/callerid/b/t;->C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;

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

    .line 12
    :catch_0
    iget-object v0, p0, Lcom/allinone/callerid/b/t$i;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v0}, Lcom/allinone/callerid/b/t;->C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/t$i;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v1}, Lcom/allinone/callerid/b/t;->C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100229

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_1
    return-void
.end method
