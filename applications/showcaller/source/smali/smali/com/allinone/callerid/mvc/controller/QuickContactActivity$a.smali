.class Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    new-instance v1, Lcom/allinone/callerid/util/n;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/allinone/callerid/util/n;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;Lcom/allinone/callerid/util/n;)Lcom/allinone/callerid/util/n;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    const v1, 0x7f04011b

    const v2, 0x7f06003a

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->j0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->l0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->m0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    new-instance v1, Lcom/allinone/callerid/b/s;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->p0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v4}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->q0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/allinone/callerid/b/s;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListView;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->o0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;Lcom/allinone/callerid/b/s;)Lcom/allinone/callerid/b/s;

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->q0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->n0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Lcom/allinone/callerid/b/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->q0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
