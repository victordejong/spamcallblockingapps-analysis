.class public Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "WriteCommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/EditText;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/ImageView;

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Landroid/widget/FrameLayout;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/FrameLayout;

.field private R:Lcom/allinone/callerid/dialog/b;

.field private S:Lcom/allinone/callerid/dialog/a;

.field private T:Landroid/widget/ImageView;

.field private U:Z

.field private V:Z

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private a0:I

.field private b0:I

.field private c0:Landroid/text/TextWatcher;

.field private final u:Ljava/lang/String;

.field private v:Landroid/graphics/Typeface;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "WriteCommentActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->u:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->K:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->V:Z

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->v:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->v:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->T:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->W:I

    return p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->T:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Lcom/allinone/callerid/dialog/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->S:Lcom/allinone/callerid/dialog/a;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->q0()V

    return-void
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Lcom/allinone/callerid/dialog/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->R:Lcom/allinone/callerid/dialog/b;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->N:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->U:Z

    return p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->r0()V

    return-void
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->t0()V

    return-void
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->v0()V

    return-void
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->B:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->O:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->b0:I

    return p0
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->Q:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->Z:I

    return p0
.end method

.method private q0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v0, ""

    .line 2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_3

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "submit_has_comment"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const v2, 0x7f08006d

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->P:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->B:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->W:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "submit_comment_least"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "http"

    .line 10
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wwww"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v4}, Lcom/allinone/callerid/util/h1;->l0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->P:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "submit_comment_special"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->P:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 19
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "submit_comment_url"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "submit_no_comment"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 21
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->M:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->u0(Ljava/lang/String;Ljava/lang/String;J)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->M:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->x0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->D:Ljava/lang/String;

    const-string v2, "typelabel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12d

    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 29
    iput-boolean v7, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->V:Z

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

.method private r0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->J:Z

    const v1, 0x7f1100f6

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/dialog/a;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/allinone/callerid/dialog/a;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->S:Lcom/allinone/callerid/dialog/a;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "select_dialog_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->S:Lcom/allinone/callerid/dialog/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/allinone/callerid/dialog/b;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$d;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/allinone/callerid/dialog/b;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->R:Lcom/allinone/callerid/dialog/b;

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unselect_dialog_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private s0(Landroid/os/IBinder;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private t0()V
    .locals 7

    const v0, 0x7f040129

    const v1, 0x7f060061

    .line 1
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->W:I

    const v0, 0x7f040118

    const v1, 0x7f06004b

    .line 2
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    const v0, 0x7f04011b

    const v1, 0x7f06003a

    .line 3
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->Y:I

    const v0, 0x7f040119

    const v1, 0x7f06004d

    .line 4
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->Z:I

    const v0, 0x7f04012a

    const v1, 0x7f060112

    .line 5
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->a0:I

    const v0, 0x7f040063

    const v1, 0x7f08006b

    .line 6
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->b0:I

    const v0, 0x7f090647

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0906e6

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f090765

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f090741

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f090788

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f0906bb

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f090192

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    const v0, 0x7f0904d3

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->O:Landroid/widget/FrameLayout;

    const v0, 0x7f0904de

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->Q:Landroid/widget/FrameLayout;

    const v0, 0x7f090646

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->P:Landroid/widget/TextView;

    const v0, 0x7f0901fb

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09021e

    .line 18
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f09020c

    .line 19
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f090220

    .line 20
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 21
    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->T:Landroid/widget/ImageView;

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    const v4, 0x7f090290

    .line 22
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->F:Landroid/widget/ImageView;

    const v4, 0x7f090292

    .line 23
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->G:Landroid/widget/ImageView;

    const v4, 0x7f090291

    .line 24
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->H:Landroid/widget/ImageView;

    const v4, 0x7f090295

    .line 25
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->I:Landroid/widget/ImageView;

    const v4, 0x7f0904d4

    .line 26
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f090508

    .line 27
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v6, 0x7f0907df

    .line 28
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 29
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    new-instance v0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->c0:Landroid/text/TextWatcher;

    .line 46
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private u0(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 1
    new-instance v0, Lcom/allinone/callerid/bean/CommentContent;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/CommentContent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/CommentContent;->setTel_number(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CommentContent;->setType_label(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10037d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CommentContent;->setAuthor(Ljava/lang/String;)V

    .line 5
    invoke-static {p3, p4}, Lcom/allinone/callerid/util/i;->d(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/allinone/callerid/bean/CommentContent;->setCreate_time(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/allinone/callerid/bean/CommentContent;->setContent(Ljava/lang/String;)V

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/allinone/callerid/bean/CommentContent;->setT_p(Ljava/lang/String;)V

    .line 8
    new-instance p3, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f;

    invoke-direct {p3, p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/allinone/callerid/i/a/j/a;->b(Lcom/allinone/callerid/bean/CommentContent;Lcom/allinone/callerid/i/a/j/c;)V

    return-void
.end method

.method private v0()V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "</font>"

    const-string v2, "\'> "

    const-string v3, "<font color=\'"

    const-string v4, ""

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v6, "number_content"

    .line 2
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v5, :cond_a

    .line 3
    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->S()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->E:Ljava/lang/String;

    .line 4
    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->L:Ljava/lang/String;

    .line 6
    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->M:Ljava/lang/String;

    .line 7
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->E:Ljava/lang/String;

    if-eqz v7, :cond_a

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 8
    sget-boolean v7, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v7, :cond_0

    const-string v7, "comment"

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "typelabel_id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->E:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->E:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v10, 0x273a9c

    const-string v11, "Telemarketing"

    const-string v12, "Spam"

    const-string v13, "Scam"

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v9, v10, :cond_3

    const v10, 0x276b69

    if-eq v9, v10, :cond_2

    const v10, 0x45e1359c

    if-eq v9, v10, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v8, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v8, 0x1

    :cond_4
    :goto_0
    const v9, 0x7f0800e7

    const v7, 0x7f0800e6

    const v10, 0x7f1000d7

    if-eqz v8, :cond_8

    const v12, 0x7f0800e9

    if-eq v8, v15, :cond_6

    if-eq v8, v14, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v8, "is_telemarketing"

    .line 11
    iput-object v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->K:Ljava/lang/String;

    .line 12
    iput-object v11, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->D:Ljava/lang/String;

    .line 13
    iput-boolean v15, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->J:Z

    .line 14
    iput-object v4, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->N:Ljava/lang/String;

    .line 15
    iput-boolean v15, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->U:Z

    .line 16
    iget-object v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->x:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->z:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->y:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->I:Landroid/widget/ImageView;

    const v8, 0x7f0800ec

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->A:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->W:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->T:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_2

    :cond_6
    const-string v8, "is_scam"

    .line 26
    iput-object v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->K:Ljava/lang/String;

    .line 27
    iput-object v13, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->D:Ljava/lang/String;

    .line 28
    iput-boolean v15, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->J:Z

    .line 29
    iput-object v4, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->N:Ljava/lang/String;

    .line 30
    iget-object v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->E:Ljava/lang/String;

    if-eqz v8, :cond_7

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    .line 31
    :cond_7
    iput-boolean v15, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->U:Z

    .line 32
    :goto_1
    iget-object v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->x:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->H:Landroid/widget/ImageView;

    const v8, 0x7f0800e8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->z:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->W:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->y:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->I:Landroid/widget/ImageView;

    const v8, 0x7f0800eb

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->A:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->T:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    :cond_8
    const-string v8, "is_spam"

    .line 42
    iput-object v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->K:Ljava/lang/String;

    .line 43
    iput-object v12, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->D:Ljava/lang/String;

    .line 44
    iput-boolean v15, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->J:Z

    .line 45
    iput-object v4, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->N:Ljava/lang/String;

    .line 46
    iput-boolean v15, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->U:Z

    .line 47
    iget-object v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->x:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->z:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->G:Landroid/widget/ImageView;

    const v8, 0x7f0800ea

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->y:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->W:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->I:Landroid/widget/ImageView;

    const v8, 0x7f0800eb

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->A:Landroid/widget/TextView;

    iget v8, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->T:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 57
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1000e6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 58
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->a0:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "XX"

    .line 59
    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "X"

    if-eqz v6, :cond_9

    .line 60
    :try_start_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->a0:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v2, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->w:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 64
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->a0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'> 10</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v2, v1, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->w:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_3
    return-void
.end method

.method private w0()V
    .locals 3

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private x0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 1
    new-instance v6, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {p1, p2, v6}, Lcom/allinone/callerid/i/a/g/m;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/g/o;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800e6

    const v2, 0x7f0800eb

    const v3, 0x7f0800e9

    const v4, 0x7f0800e7

    const-string v5, "1"

    const-string v6, "type_select"

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x7f1000d7

    const-string v9, "0"

    const/4 v10, 0x1

    const-string v11, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_7

    .line 2
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->s0(Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 3
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->s0(Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 4
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->s0(Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 5
    :sswitch_3
    :try_start_0
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "submit_comment_click"

    const/4 v1, 0x0

    const v2, 0x7f1002c3

    if-eqz p1, :cond_2

    .line 6
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->q0()V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 10
    :goto_0
    new-instance p1, Lcom/allinone/callerid/bean/CollectInfo;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/CollectInfo;-><init>()V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v9}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->U:Z

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p1, v9}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    .line 17
    :goto_1
    invoke-virtual {p1, v9}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/allinone/callerid/i/a/i/c;->c(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V

    goto/16 :goto_7

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 20
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->q0()V

    .line 23
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 25
    :goto_2
    new-instance p1, Lcom/allinone/callerid/bean/CollectInfo;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/CollectInfo;-><init>()V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, v9}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v9}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v9}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/allinone/callerid/i/a/i/c;->c(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :sswitch_4
    const-string p1, "is_telemarketing"

    .line 33
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->K:Ljava/lang/String;

    const-string p1, "Telemarketing"

    .line 34
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->D:Ljava/lang/String;

    .line 35
    iput-boolean v10, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->J:Z

    .line 36
    iput-object v11, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->N:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->E:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 38
    :cond_4
    iput-boolean v10, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->U:Z

    .line 39
    :goto_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->x:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->z:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->y:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->I:Landroid/widget/ImageView;

    const v0, 0x7f0800ec

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->A:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->W:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 49
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->w0()V

    .line 50
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_5
    const-string p1, "is_spam"

    .line 52
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->K:Ljava/lang/String;

    const-string p1, "Spam"

    .line 53
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->D:Ljava/lang/String;

    .line 54
    iput-boolean v10, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->J:Z

    .line 55
    iput-object v11, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->N:Ljava/lang/String;

    .line 56
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->E:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    .line 57
    :cond_5
    iput-boolean v10, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->U:Z

    .line 58
    :goto_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->x:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->z:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->G:Landroid/widget/ImageView;

    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->y:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->W:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->A:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 68
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->w0()V

    .line 69
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_6
    const-string p1, "is_scam"

    .line 71
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->K:Ljava/lang/String;

    const-string p1, "Scam"

    .line 72
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->D:Ljava/lang/String;

    .line 73
    iput-boolean v10, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->J:Z

    .line 74
    iput-object v11, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->N:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->E:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_5

    .line 76
    :cond_6
    iput-boolean v10, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->U:Z

    .line 77
    :goto_5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->x:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->H:Landroid/widget/ImageView;

    const v0, 0x7f0800e8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->z:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->W:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->y:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->A:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 87
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->w0()V

    .line 88
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_7

    .line 90
    :sswitch_7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->E:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 91
    iput-object v5, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->N:Ljava/lang/String;

    goto :goto_6

    .line 92
    :cond_7
    iput-object v9, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->N:Ljava/lang/String;

    .line 93
    :goto_6
    iput-object v11, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->K:Ljava/lang/String;

    .line 94
    iput-object v11, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->D:Ljava/lang/String;

    .line 95
    iput-boolean v10, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->J:Z

    .line 96
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->F:Landroid/widget/ImageView;

    const v0, 0x7f0800e5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->x:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->Y:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->z:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->y:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->A:Landroid/widget/TextView;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 106
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->w0()V

    .line 107
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_8
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901fb -> :sswitch_7
        0x7f09020c -> :sswitch_6
        0x7f09021e -> :sswitch_5
        0x7f090220 -> :sswitch_4
        0x7f090269 -> :sswitch_3
        0x7f0904d4 -> :sswitch_2
        0x7f090508 -> :sswitch_1
        0x7f0907df -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0066

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->V:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "submit_comment_drop_out"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->J:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "drop_out_select_type"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "drop_out_write_text"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "drop_out_unselect"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->c0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->c0:Landroid/text/TextWatcher;

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->r0()V

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    return-void
.end method
