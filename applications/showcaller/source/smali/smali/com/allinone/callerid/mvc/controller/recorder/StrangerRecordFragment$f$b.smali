.class Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$b;
.super Ljava/lang/Object;
.source "StrangerRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;->e:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->j2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;->e:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->k2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;->e:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->c2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;->e:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->a2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
