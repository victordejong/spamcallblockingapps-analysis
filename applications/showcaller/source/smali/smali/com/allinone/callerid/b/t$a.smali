.class Lcom/allinone/callerid/b/t$a;
.super Ljava/lang/Object;
.source "RecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/t;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/b/t;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/t$a;->d:Lcom/allinone/callerid/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "permission_guide_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/start/PermissionActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/b/t$a;->d:Lcom/allinone/callerid/b/t;

    invoke-static {v0}, Lcom/allinone/callerid/b/t;->C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/b/t$a;->d:Lcom/allinone/callerid/b/t;

    invoke-static {p1}, Lcom/allinone/callerid/b/t;->D(Lcom/allinone/callerid/b/t;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/t$a;->d:Lcom/allinone/callerid/b/t;

    invoke-static {p1}, Lcom/allinone/callerid/b/t;->D(Lcom/allinone/callerid/b/t;)Landroid/app/Activity;

    move-result-object p1

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
