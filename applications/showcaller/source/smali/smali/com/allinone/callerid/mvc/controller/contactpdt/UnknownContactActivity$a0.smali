.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/q/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->p1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->I0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Lcom/allinone/callerid/search/CallLogBean;->V0(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/allinone/callerid/search/CallLogBean;->p0(Z)V

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->U0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->E0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->F0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->G0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_0

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v2, -0x80000000

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 14
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->H0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->L0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->K0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->M0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v2, 0x7f0801b4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->j0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->j0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;->b(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->U0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->N0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 29
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 30
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 31
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 32
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method
