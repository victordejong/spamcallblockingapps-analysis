.class Lcom/callerid/block/sms/MessageBoxListActivity$y;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/sms/MessageBoxListActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->b:Ljava/lang/ref/WeakReference;

    const v0, 0x7f04047e

    const v1, 0x7f060139

    invoke-static {p1, v0, v1}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->c:I

    const v0, 0x7f040106

    const v2, 0x7f06005a

    invoke-static {p1, v0, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->a:I

    const v0, 0x7f04047d

    invoke-static {p1, v0, v1}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->d:I

    const v0, 0x7f040107

    const v1, 0x7f06005b

    invoke-static {p1, v0, v1}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->e:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/sms/MessageBoxListActivity;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_2

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v1

    invoke-static {p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/callerid/block/util/t0;->a0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/sms/MessageBoxListActivity;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, -0x80000000

    const/16 v4, 0x15

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/callerid/block/bean/SMSBean;->setType_label(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->F0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->E0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->E0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->l0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->E0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->l0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->m0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->c:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->n0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->c:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    iget v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->d:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callerid/block/bean/SMSBean;->setType_label(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->F0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->m0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->a:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->n0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->a:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    iget v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$y;->e:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->l0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->e0(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    :cond_3
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/callerid/block/sms/MessageBoxListActivity$y;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/sms/MessageBoxListActivity$y;->b(Ljava/lang/String;)V

    return-void
.end method
