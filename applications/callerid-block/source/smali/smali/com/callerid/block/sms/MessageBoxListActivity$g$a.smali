.class Lcom/callerid/block/sms/MessageBoxListActivity$g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/callerid/block/sms/MessageBoxListActivity$g;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity$g;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$g$a;->c:Lcom/callerid/block/sms/MessageBoxListActivity$g;

    iput-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$g$a;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$g$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$g$a;->c:Lcom/callerid/block/sms/MessageBoxListActivity$g;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$g;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->B0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/b/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$g$a;->c:Lcom/callerid/block/sms/MessageBoxListActivity$g;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$g;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->B0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$g$a;->b:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/callerid/block/b/j;->e(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$g$a;->c:Lcom/callerid/block/sms/MessageBoxListActivity$g;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$g;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->B0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/b/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$g$a;->c:Lcom/callerid/block/sms/MessageBoxListActivity$g;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$g;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->j0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$g$a;->c:Lcom/callerid/block/sms/MessageBoxListActivity$g;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$g;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->j0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$g$a;->c:Lcom/callerid/block/sms/MessageBoxListActivity$g;

    iget-object v1, v1, Lcom/callerid/block/sms/MessageBoxListActivity$g;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->A0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    return-void
.end method
