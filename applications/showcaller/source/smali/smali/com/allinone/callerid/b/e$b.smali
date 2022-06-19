.class Lcom/allinone/callerid/b/e$b;
.super Ljava/lang/Object;
.source "CallLogsFragmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/e;->d(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/search/CallLogBean;

.field final synthetic e:Lcom/allinone/callerid/b/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/e;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/e$b;->e:Lcom/allinone/callerid/b/e;

    iput-object p2, p0, Lcom/allinone/callerid/b/e$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    :try_start_0
    sput-boolean p1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->u:Z

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->h1(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/b/e$b;->e:Lcom/allinone/callerid/b/e;

    invoke-static {v0}, Lcom/allinone/callerid/b/e;->b(Lcom/allinone/callerid/b/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/a1;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/b/e$b;->e:Lcom/allinone/callerid/b/e;

    invoke-static {v1}, Lcom/allinone/callerid/b/e;->b(Lcom/allinone/callerid/b/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/b/e$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/allinone/callerid/util/b1;->d(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/b/e$b;->e:Lcom/allinone/callerid/b/e;

    invoke-static {v0}, Lcom/allinone/callerid/b/e;->c(Lcom/allinone/callerid/b/e;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/e$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/b1;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/b/e$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/allinone/callerid/b/e$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/b/e$b;->e:Lcom/allinone/callerid/b/e;

    invoke-static {v0}, Lcom/allinone/callerid/b/e;->b(Lcom/allinone/callerid/b/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/e$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/b/e$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/allinone/callerid/b/e$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/b/e$b;->e:Lcom/allinone/callerid/b/e;

    invoke-static {v0}, Lcom/allinone/callerid/b/e;->b(Lcom/allinone/callerid/b/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/e$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    iget-object v0, p0, Lcom/allinone/callerid/b/e$b;->e:Lcom/allinone/callerid/b/e;

    invoke-static {v0}, Lcom/allinone/callerid/b/e;->b(Lcom/allinone/callerid/b/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/e$b;->e:Lcom/allinone/callerid/b/e;

    invoke-static {v1}, Lcom/allinone/callerid/b/e;->b(Lcom/allinone/callerid/b/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100229

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method
