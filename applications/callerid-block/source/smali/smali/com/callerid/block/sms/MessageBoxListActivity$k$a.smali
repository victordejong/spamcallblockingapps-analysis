.class Lcom/callerid/block/sms/MessageBoxListActivity$k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity$k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/sms/MessageBoxListActivity$k;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity$k;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->b0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->b0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->d0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v3, v3, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v3}, Lcom/callerid/block/sms/MessageBoxListActivity;->b0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->t0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->l0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->t0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v3, v3, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v3}, Lcom/callerid/block/sms/MessageBoxListActivity;->q0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->l0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    new-instance v3, Lcom/callerid/block/bean/SMSBean;

    invoke-direct {v3}, Lcom/callerid/block/bean/SMSBean;-><init>()V

    invoke-static {v0, v3}, Lcom/callerid/block/sms/MessageBoxListActivity;->D0(Lcom/callerid/block/sms/MessageBoxListActivity;Lcom/callerid/block/bean/SMSBean;)Lcom/callerid/block/bean/SMSBean;

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/SMSBean;->setType_label(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0, v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->F0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->m0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v1, v1, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->u0(Lcom/callerid/block/sms/MessageBoxListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->n0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v1, v1, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->u0(Lcom/callerid/block/sms/MessageBoxListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v1, v1, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->v0(Lcom/callerid/block/sms/MessageBoxListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->l0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;->b:Lcom/callerid/block/sms/MessageBoxListActivity$k;

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->e0(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    return-void
.end method
