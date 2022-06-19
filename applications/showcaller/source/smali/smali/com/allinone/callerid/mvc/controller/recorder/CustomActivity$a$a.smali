.class Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;
.super Ljava/lang/Object;
.source "CustomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;->d:Ljava/util/ArrayList;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v0

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;->d:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/allinone/callerid/b/z/b;->A(Ljava/util/ArrayList;Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->Y(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->Z(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->Y(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->Z(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
