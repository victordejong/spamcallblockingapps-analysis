.class Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/UnknownContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
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
.field private a:I

.field private b:I

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/mvc/controller/UnknownContactActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;->c:Ljava/lang/ref/WeakReference;

    const v0, 0x7f040106

    const v1, 0x7f06005a

    invoke-static {p1, v0, v1}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;->a:I

    const v0, 0x7f040107

    const v1, 0x7f06005b

    invoke-static {p1, v0, v1}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;->b:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getcontactname"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Y(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/customview/LImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Z(Lcom/callerid/block/mvc/controller/UnknownContactActivity;Z)Z

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->a0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->b0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;->b:I

    invoke-static {v0, p1}, Lcom/callerid/block/util/t0;->d0(Landroid/app/Activity;I)V

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->c0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;->a:I

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->d0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;->b(Ljava/lang/String;)V

    return-void
.end method
