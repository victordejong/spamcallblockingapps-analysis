.class Lcom/allinone/callerid/b/z/g$d;
.super Ljava/lang/Object;
.source "StrangerRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/g;->M(Lcom/allinone/callerid/bean/recorder/RecordCall;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/bean/recorder/RecordCall;

.field final synthetic e:I

.field final synthetic f:Lcom/allinone/callerid/b/z/g;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/g;Lcom/allinone/callerid/bean/recorder/RecordCall;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/g$d;->f:Lcom/allinone/callerid/b/z/g;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/g$d;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    iput p3, p0, Lcom/allinone/callerid/b/z/g$d;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090488

    if-eq p1, v0, :cond_2

    const v0, 0x7f09048a

    if-eq p1, v0, :cond_1

    const v0, 0x7f09048c

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance p1, Lcom/allinone/callerid/dialog/n;

    iget-object v0, p0, Lcom/allinone/callerid/b/z/g$d;->f:Lcom/allinone/callerid/b/z/g;

    invoke-static {v0}, Lcom/allinone/callerid/b/z/g;->D(Lcom/allinone/callerid/b/z/g;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1100f6

    iget-object v0, p0, Lcom/allinone/callerid/b/z/g$d;->f:Lcom/allinone/callerid/b/z/g;

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/b/z/g;->D(Lcom/allinone/callerid/b/z/g;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x2

    iget-object v0, p0, Lcom/allinone/callerid/b/z/g$d;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    .line 4
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilepath()Ljava/lang/String;

    move-result-object v8

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/allinone/callerid/dialog/n;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/b/z/g$d;->f:Lcom/allinone/callerid/b/z/g;

    invoke-static {v1}, Lcom/allinone/callerid/b/z/g;->D(Lcom/allinone/callerid/b/z/g;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 11
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 12
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 13
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 14
    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "recorder_share_count"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/b/z/g$d;->f:Lcom/allinone/callerid/b/z/g;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->D(Lcom/allinone/callerid/b/z/g;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/z/g$d;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    iget-object v1, p0, Lcom/allinone/callerid/b/z/g$d;->f:Lcom/allinone/callerid/b/z/g;

    invoke-static {v1}, Lcom/allinone/callerid/b/z/g;->H(Lcom/allinone/callerid/b/z/g;)Lcom/allinone/callerid/b/z/g;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/recorder/f;->y(Landroid/app/Activity;Lcom/allinone/callerid/bean/recorder/RecordCall;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/b/z/g$d;->f:Lcom/allinone/callerid/b/z/g;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->D(Lcom/allinone/callerid/b/z/g;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/z/g$d;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    iget v2, p0, Lcom/allinone/callerid/b/z/g$d;->e:I

    invoke-static {p1, v0, v1, v2}, Lcom/allinone/callerid/b/z/g;->I(Lcom/allinone/callerid/b/z/g;Landroid/content/Context;Lcom/allinone/callerid/bean/recorder/RecordCall;I)V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/b/z/g$d;->f:Lcom/allinone/callerid/b/z/g;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->J(Lcom/allinone/callerid/b/z/g;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/b/z/g$d;->f:Lcom/allinone/callerid/b/z/g;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->J(Lcom/allinone/callerid/b/z/g;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    return-void
.end method
