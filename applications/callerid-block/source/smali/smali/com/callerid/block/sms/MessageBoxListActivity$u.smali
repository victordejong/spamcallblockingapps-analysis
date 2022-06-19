.class Lcom/callerid/block/sms/MessageBoxListActivity$u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->E0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->E0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v3}, Lcom/callerid/block/sms/MessageBoxListActivity;->C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;

    move-result-object v3

    const-string v4, "is_normal"

    invoke-static {p1, v2, v3, v4}, Lcom/callerid/block/sms/MessageBoxListActivity;->G0(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/content/Context;Lcom/callerid/block/bean/SMSBean;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/callerid/block/sms/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;

    move-result-object v2

    const-string v3, "is_spam"

    invoke-static {p1, v1, v2, v3}, Lcom/callerid/block/sms/MessageBoxListActivity;->T(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/content/Context;Lcom/callerid/block/bean/SMSBean;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->U(Lcom/callerid/block/sms/MessageBoxListActivity;Lcom/callerid/block/bean/SMSBean;)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Spam"

    invoke-static {p1, v1, v2}, Lcom/callerid/block/sms/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100182

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$u;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100183

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
