.class Lcom/callerid/block/sms/MessageBoxListActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/f/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->R0()V
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

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$d;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$d;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0, p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->c0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$d;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->d0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$d;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->e0(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    :cond_0
    return-void
.end method
