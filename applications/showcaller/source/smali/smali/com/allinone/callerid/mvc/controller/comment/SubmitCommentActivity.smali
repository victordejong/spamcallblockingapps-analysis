.class public Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "SubmitCommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Lcom/allinone/callerid/customview/BaseEditText;

.field private E:Landroid/widget/FrameLayout;

.field private F:Ljava/lang/String;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/ImageView;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Landroid/widget/FrameLayout;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/FrameLayout;

.field private S:Lcom/allinone/callerid/dialog/a;

.field private T:Z

.field private U:Z

.field private V:Lcom/allinone/callerid/util/w;

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private a0:Landroid/text/TextWatcher;

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

    const-string v0, "SubmitCommentActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->u:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->L:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->U:Z

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->s0()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Y:I

    return p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Lcom/allinone/callerid/dialog/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->S:Lcom/allinone/callerid/dialog/a;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->o0()V

    return-void
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->O:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->T:Z

    return p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->r0()V

    return-void
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->u0()V

    return-void
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->P:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Z:I

    return p0
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    return p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->E:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private o0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

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

    const-string v1, "unknow_submit_has_comment"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const v2, 0x7f08006d

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->P:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->C:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Y:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unknow_submit_comment_least"

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
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->P:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unknow_submit_comment_special"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->P:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 19
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unknow_submit_comment_url"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unknow_submit_no_comment"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 21
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->N:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->t0(Ljava/lang/String;Ljava/lang/String;J)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->N:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100312

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    iput-boolean v7, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->U:Z

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_5
    return-void
.end method

.method private p0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->K:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/dialog/a;

    const v1, 0x7f1100f6

    new-instance v2, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$c;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/allinone/callerid/dialog/a;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->S:Lcom/allinone/callerid/dialog/a;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unknow_select_dialog_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->S:Lcom/allinone/callerid/dialog/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method private q0(Landroid/os/IBinder;)V
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

.method private r0()V
    .locals 6

    const v0, 0x7f04011b

    const v1, 0x7f06003a

    .line 1
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->W:I

    const v0, 0x7f040146

    const v1, 0x7f06004d

    .line 2
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    const v0, 0x7f04011a

    const v1, 0x7f060051

    .line 3
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Y:I

    const v0, 0x7f040063

    const v1, 0x7f08006b

    .line 4
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Z:I

    const v0, 0x7f090647

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0906e6

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f090765

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f090741

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f090788

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f09062c

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f0906bb

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f090192

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/BaseEditText;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    const v0, 0x7f0904d3

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->P:Landroid/widget/FrameLayout;

    const v0, 0x7f0904de

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    const v0, 0x7f090646

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Q:Landroid/widget/TextView;

    const v0, 0x7f0901fb

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09021e

    .line 17
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f09020c

    .line 18
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f090220

    .line 19
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f090208

    .line 20
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->E:Landroid/widget/FrameLayout;

    const v4, 0x7f090290

    .line 21
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->G:Landroid/widget/ImageView;

    const v4, 0x7f090292

    .line 22
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->H:Landroid/widget/ImageView;

    const v4, 0x7f090291

    .line 23
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->I:Landroid/widget/ImageView;

    const v4, 0x7f090295

    .line 24
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->J:Landroid/widget/ImageView;

    const v4, 0x7f0904d4

    .line 25
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f0907df

    .line 26
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 27
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    new-instance v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->a0:Landroid/text/TextWatcher;

    .line 44
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private s0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/w;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/util/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->V:Lcom/allinone/callerid/util/w;

    .line 2
    new-instance v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/w;->b(Lcom/allinone/callerid/util/w$b;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->V:Lcom/allinone/callerid/util/w;

    invoke-virtual {v0}, Lcom/allinone/callerid/util/w;->c()V

    return-void
.end method

.method private t0(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 1
    new-instance v0, Lcom/allinone/callerid/bean/CommentContent;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/CommentContent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/CommentContent;->setTel_number(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

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
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/allinone/callerid/bean/CommentContent;->setT_p(Ljava/lang/String;)V

    .line 8
    new-instance p3, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e;

    invoke-direct {p3, p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/allinone/callerid/i/a/j/a;->b(Lcom/allinone/callerid/bean/CommentContent;Lcom/allinone/callerid/i/a/j/c;)V

    return-void
.end method

.method private u0()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "number_content"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/search/CallLogBean;

    const-string v3, "is_activity"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "activity_count"

    .line 4
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_7

    .line 5
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->S()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->M:Ljava/lang/String;

    .line 9
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->N:Ljava/lang/String;

    const-string v7, ""

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, -0x1

    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, "Telemarketing"

    const-string v12, "Spam"

    const-string v13, "Scam"

    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    const v5, 0x7f0800e9

    const v14, 0x7f0800e7

    const v10, 0x7f0800e6

    const v15, 0x7f1000d7

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v9, "is_telemarketing"

    .line 12
    iput-object v9, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->L:Ljava/lang/String;

    .line 13
    iput-object v11, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

    .line 14
    iput-boolean v8, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->K:Z

    .line 15
    iput-object v7, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->O:Ljava/lang/String;

    .line 16
    iput-boolean v8, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->T:Z

    .line 17
    iget-object v9, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->x:Landroid/widget/TextView;

    iget v9, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->z:Landroid/widget/TextView;

    iget v9, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->y:Landroid/widget/TextView;

    iget v5, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->J:Landroid/widget/ImageView;

    const v5, 0x7f0800ec

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->A:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f060061

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->B:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f060126

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->E:Landroid/widget/FrameLayout;

    const v5, 0x7f0800b1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_1

    :pswitch_1
    const-string v5, "is_spam"

    .line 29
    iput-object v5, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->L:Ljava/lang/String;

    .line 30
    iput-object v12, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

    .line 31
    iput-boolean v8, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->K:Z

    .line 32
    iput-object v7, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->O:Ljava/lang/String;

    .line 33
    iput-boolean v8, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->T:Z

    .line 34
    iget-object v5, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 35
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->x:Landroid/widget/TextView;

    iget v5, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->z:Landroid/widget/TextView;

    iget v5, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->H:Landroid/widget/ImageView;

    const v5, 0x7f0800ea

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->y:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f060061

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->J:Landroid/widget/ImageView;

    const v5, 0x7f0800eb

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->A:Landroid/widget/TextView;

    iget v5, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->B:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f060126

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->E:Landroid/widget/FrameLayout;

    const v5, 0x7f0800b1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_2
    const-string v9, "is_scam"

    .line 46
    iput-object v9, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->L:Ljava/lang/String;

    .line 47
    iput-object v13, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

    .line 48
    iput-boolean v8, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->K:Z

    .line 49
    iput-object v7, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->O:Ljava/lang/String;

    .line 50
    iput-boolean v8, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->T:Z

    .line 51
    iget-object v9, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 52
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->x:Landroid/widget/TextView;

    iget v9, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->I:Landroid/widget/ImageView;

    const v9, 0x7f0800e8

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->z:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060061

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->y:Landroid/widget/TextView;

    iget v5, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->J:Landroid/widget/ImageView;

    const v5, 0x7f0800eb

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->A:Landroid/widget/TextView;

    iget v5, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->B:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f060126

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->E:Landroid/widget/FrameLayout;

    const v5, 0x7f0800b1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 63
    :cond_3
    :goto_1
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

    const-string v5, "<font color=\'#ee5164\'> 10</font>"

    const-string v9, "</font>"

    const-string v10, "<font color=\'#ee5164\'> "

    const-string v11, "X"

    if-eqz v4, :cond_5

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000e6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XX"

    .line 66
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_4

    .line 67
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 70
    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->w:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {v1, v11, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->w:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-ne v3, v8, :cond_7

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_6

    .line 74
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v2, v11, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->w:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 78
    :cond_6
    invoke-virtual {v2, v11, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 79
    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->w:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x273a9c -> :sswitch_2
        0x276b69 -> :sswitch_1
        0x45e1359c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private v0()V
    .locals 3

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 1
    new-instance v6, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {p1, p2, v6}, Lcom/allinone/callerid/i/a/g/m;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/g/o;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f060061

    const v3, 0x7f0800e6

    const v4, 0x7f0800eb

    const v5, 0x7f0800e9

    const v6, 0x7f0800e7

    const-string v7, "1"

    const-string v8, "unknow_type_select"

    const v9, 0x7f0800b1

    const v10, 0x7f060126

    const v11, 0x7f1000d7

    const/4 v12, 0x0

    const-string v13, "0"

    const/4 v14, 0x1

    const-string v15, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_7

    .line 2
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->q0(Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 3
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->q0(Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 4
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->p0()V

    goto/16 :goto_7

    :sswitch_3
    const-string v0, "is_telemarketing"

    .line 5
    iput-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->L:Ljava/lang/String;

    const-string v0, "Telemarketing"

    .line 6
    iput-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

    .line 7
    iput-boolean v14, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->K:Z

    .line 8
    iput-object v15, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->O:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput-boolean v14, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->T:Z

    .line 11
    :goto_0
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->x:Landroid/widget/TextView;

    iget v3, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->z:Landroid/widget/TextView;

    iget v3, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->y:Landroid/widget/TextView;

    iget v3, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->J:Landroid/widget/ImageView;

    const v3, 0x7f0800ec

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->A:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->B:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 23
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v0()V

    .line 24
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 25
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_4
    const-string v0, "is_spam"

    .line 26
    iput-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->L:Ljava/lang/String;

    const-string v0, "Spam"

    .line 27
    iput-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

    .line 28
    iput-boolean v14, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->K:Z

    .line 29
    iput-object v15, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->O:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    iput-boolean v14, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->T:Z

    .line 32
    :goto_1
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->x:Landroid/widget/TextView;

    iget v3, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->z:Landroid/widget/TextView;

    iget v3, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->H:Landroid/widget/ImageView;

    const v3, 0x7f0800ea

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->y:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->A:Landroid/widget/TextView;

    iget v2, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->B:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 44
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v0()V

    .line 45
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 46
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_5
    const-string v0, "is_scam"

    .line 47
    iput-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->L:Ljava/lang/String;

    const-string v0, "Scam"

    .line 48
    iput-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

    .line 49
    iput-boolean v14, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->K:Z

    .line 50
    iput-object v15, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->O:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 52
    :cond_2
    iput-boolean v14, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->T:Z

    .line 53
    :goto_2
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 54
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->x:Landroid/widget/TextView;

    iget v3, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->I:Landroid/widget/ImageView;

    const v3, 0x7f0800e8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->z:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->y:Landroid/widget/TextView;

    iget v2, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->A:Landroid/widget/TextView;

    iget v2, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->B:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 65
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v0()V

    .line 66
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 68
    :sswitch_6
    :try_start_0
    iget-boolean v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->K:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "unknow_submit_comment_click"

    const v3, 0x7f1002c3

    if-eqz v0, :cond_5

    .line 69
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->o0()V

    .line 71
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    :goto_3
    new-instance v0, Lcom/allinone/callerid/bean/CollectInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/CollectInfo;-><init>()V

    .line 74
    iget-object v2, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v13}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v7}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    .line 77
    iget-boolean v2, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->T:Z

    if-eqz v2, :cond_4

    .line 78
    invoke-virtual {v0, v7}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    goto :goto_4

    .line 79
    :cond_4
    invoke-virtual {v0, v13}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    .line 80
    :goto_4
    invoke-virtual {v0, v13}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/allinone/callerid/i/a/i/c;->c(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V

    goto/16 :goto_7

    .line 82
    :cond_5
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 83
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->o0()V

    .line 86
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_5

    .line 87
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    :goto_5
    new-instance v0, Lcom/allinone/callerid/bean/CollectInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/CollectInfo;-><init>()V

    .line 89
    iget-object v2, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v13}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v7}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v13}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v13}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/allinone/callerid/i/a/i/c;->c(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 96
    :sswitch_7
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 97
    iput-object v7, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->O:Ljava/lang/String;

    goto :goto_6

    .line 98
    :cond_7
    iput-object v13, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->O:Ljava/lang/String;

    .line 99
    :goto_6
    iput-object v15, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->L:Ljava/lang/String;

    .line 100
    iput-object v15, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->F:Ljava/lang/String;

    .line 101
    iput-boolean v14, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->K:Z

    .line 102
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 103
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->G:Landroid/widget/ImageView;

    const v2, 0x7f0800e5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->x:Landroid/widget/TextView;

    iget v2, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->W:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->z:Landroid/widget/TextView;

    iget v2, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->y:Landroid/widget/TextView;

    iget v2, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->A:Landroid/widget/TextView;

    iget v2, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->B:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->v0()V

    .line 115
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_8
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901fb -> :sswitch_7
        0x7f090208 -> :sswitch_6
        0x7f09020c -> :sswitch_5
        0x7f09021e -> :sswitch_4
        0x7f090220 -> :sswitch_3
        0x7f090369 -> :sswitch_2
        0x7f0904d4 -> :sswitch_1
        0x7f0907df -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060121

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/h1;->C0(Landroid/app/Activity;I)V

    const p1, 0x7f0c0063

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v3

    double-to-int p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 p1, 0x0

    .line 13
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
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
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->U:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unknow_submit_comment_drop_out"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->K:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unknow_drop_out_select_type"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

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

    const-string v1, "unknow_drop_out_write_text"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unknow_drop_out_unselect"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->V:Lcom/allinone/callerid/util/w;

    invoke-virtual {v0}, Lcom/allinone/callerid/util/w;->d()V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->a0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->a0:Landroid/text/TextWatcher;

    .line 13
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->D:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->p0()V

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
