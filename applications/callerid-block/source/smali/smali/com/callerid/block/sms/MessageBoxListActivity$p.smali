.class Lcom/callerid/block/sms/MessageBoxListActivity$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/a/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/sms/MessageBoxListActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$p;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    new-instance p1, Landroid/view/KeyEvent;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x43

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$p;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->S(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
