.class Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e$a;
.super Ljava/lang/Object;
.source "StrangerRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->b2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/b/z/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->j2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->k2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->c2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
