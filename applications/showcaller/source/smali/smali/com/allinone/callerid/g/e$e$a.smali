.class Lcom/allinone/callerid/g/e$e$a;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/g/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e$e;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/e$e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$e$a;->a:Lcom/allinone/callerid/g/e$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e$e$a;->a:Lcom/allinone/callerid/g/e$e;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$e;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e$e$a;->a:Lcom/allinone/callerid/g/e$e;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$e;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->F2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/e$e$a;->a:Lcom/allinone/callerid/g/e$e;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$e;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/g/e$e$a;->a:Lcom/allinone/callerid/g/e$e;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$e;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/e$e$a;->a:Lcom/allinone/callerid/g/e$e;

    iget-object v1, v1, Lcom/allinone/callerid/g/e$e;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/b/t;->O(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/g/e$e$a;->a:Lcom/allinone/callerid/g/e$e;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$e;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/g/e$e$a;->a:Lcom/allinone/callerid/g/e$e;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$e;->d:Lcom/allinone/callerid/g/e;

    invoke-virtual {v0}, Lcom/allinone/callerid/g/e;->e3()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e$e$a;->a:Lcom/allinone/callerid/g/e$e;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$e;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->x2(Lcom/allinone/callerid/g/e;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
