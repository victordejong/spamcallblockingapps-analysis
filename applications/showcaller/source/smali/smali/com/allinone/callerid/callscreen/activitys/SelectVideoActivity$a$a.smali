.class Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a;
.super Ljava/lang/Object;
.source "SelectVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->a(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->a(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->e:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->X(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)Lcom/allinone/callerid/d/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;

    invoke-static {v1}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->a(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/d/a/e/a;->A(Ljava/util/ArrayList;Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->e:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->X(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)Lcom/allinone/callerid/d/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->e:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)Landroid/view/ViewStub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->e:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->Z(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_no_video"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
