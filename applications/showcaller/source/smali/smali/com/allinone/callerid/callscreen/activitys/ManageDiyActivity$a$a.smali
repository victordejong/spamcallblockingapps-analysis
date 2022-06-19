.class Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;
.super Ljava/lang/Object;
.source "ManageDiyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->X(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "diy_list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;

    iget-object v1, v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->X(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callscreen"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Lcom/allinone/callerid/d/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;

    iget-object v1, v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->X(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/d/a/e/a;->A(Ljava/util/ArrayList;Z)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Lcom/allinone/callerid/d/a/c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->X(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/view/ViewStub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->f0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->f0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V

    :goto_0
    return-void
.end method
