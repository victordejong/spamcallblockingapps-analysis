.class Lcom/allinone/callerid/util/recorder/f$q;
.super Ljava/lang/Object;
.source "RecorderUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/f;->y(Landroid/app/Activity;Lcom/allinone/callerid/bean/recorder/RecordCall;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/BaseEditText;

.field final synthetic e:Lcom/allinone/callerid/bean/recorder/RecordCall;

.field final synthetic f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic g:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/customview/BaseEditText;Lcom/allinone/callerid/bean/recorder/RecordCall;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/f$q;->d:Lcom/allinone/callerid/customview/BaseEditText;

    iput-object p2, p0, Lcom/allinone/callerid/util/recorder/f$q;->e:Lcom/allinone/callerid/bean/recorder/RecordCall;

    iput-object p3, p0, Lcom/allinone/callerid/util/recorder/f$q;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p4, p0, Lcom/allinone/callerid/util/recorder/f$q;->g:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09013d

    if-eq p1, v0, :cond_2

    const v0, 0x7f090140

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$q;->d:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/f$q;->d:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/f$q;->e:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setRemark(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/f$q;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/allinone/callerid/util/recorder/f$q$a;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/util/recorder/f$q$a;-><init>(Lcom/allinone/callerid/util/recorder/f$q;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "recorder_remark_add_count"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->l()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->l()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$q;->g:Landroid/app/Activity;

    const v0, 0x7f10001e

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->l()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->l()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method
