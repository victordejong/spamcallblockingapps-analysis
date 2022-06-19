.class Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$b;
.super Ljava/lang/Object;
.source "StrangerRecordFragment.java"

# interfaces
.implements Lcom/allinone/callerid/b/z/g$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$b;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$b;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->e2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$b;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->e2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$b;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    .line 4
    invoke-static {v4}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->e2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 5
    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method
