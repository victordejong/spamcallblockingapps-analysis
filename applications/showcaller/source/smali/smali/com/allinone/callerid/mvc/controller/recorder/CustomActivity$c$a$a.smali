.class Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;
.super Ljava/lang/Object;
.source "CustomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;Lcom/allinone/callerid/bean/recorder/CustomRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/b/z/b;->B(Ljava/lang/Object;Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->j(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->k(II)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->Z(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->Z(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->Y(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    const v1, 0x7f100116

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
