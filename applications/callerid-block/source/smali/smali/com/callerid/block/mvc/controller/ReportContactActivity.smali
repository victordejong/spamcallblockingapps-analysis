.class public Lcom/callerid/block/mvc/controller/ReportContactActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/CheckBox;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Ljava/lang/String;

.field private w:Landroid/widget/TextView;

.field private x:Z

.field private y:Landroid/graphics/Typeface;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->C:Ljava/lang/String;

    return-void
.end method

.method private Q(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/callerid/block/mvc/controller/ReportContactActivity$a;

    invoke-direct {p2, p0, p1}, Lcom/callerid/block/mvc/controller/ReportContactActivity$a;-><init>(Lcom/callerid/block/mvc/controller/ReportContactActivity;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/callerid/block/h/a/c/b;->b(Ljava/lang/String;Lcom/callerid/block/h/a/c/a;)V

    :cond_0
    return-void
.end method

.method private R()V
    .locals 11

    const v0, 0x7f0902df

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09021f

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/LImageButton;

    const v2, 0x7f09008b

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f090093

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f090090

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f0902f0

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->z:Landroid/widget/RelativeLayout;

    const v5, 0x7f0903a1

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0903b9

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f09046f

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0900a5

    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->G:Landroid/widget/CheckBox;

    const v8, 0x7f090233

    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->A:Landroid/widget/LinearLayout;

    const v8, 0x7f090138

    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const v9, 0x7f09015a

    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const v10, 0x7f0901e5

    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->D:Landroid/widget/ImageView;

    const v10, 0x7f0901f0

    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->E:Landroid/widget/ImageView;

    const v10, 0x7f0901fb

    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090474

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f090479

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090475

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->s:Landroid/widget/TextView;

    const v1, 0x7f090478

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f090476

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/g/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/callerid/block/h/a/g/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {p1, p3}, Lcom/callerid/block/h/a/g/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/callerid/block/bean/CollectInfo;

    invoke-direct {p2}, Lcom/callerid/block/bean/CollectInfo;-><init>()V

    invoke-virtual {p2, p1}, Lcom/callerid/block/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->G:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "1"

    const-string v2, "0"

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p2, v0}, Lcom/callerid/block/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2}, Lcom/callerid/block/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, v2}, Lcom/callerid/block/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callerid/block/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/callerid/block/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/callerid/block/h/a/e/c;->c(Landroid/content/Context;Lcom/callerid/block/bean/CollectInfo;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100182

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "typelabel"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x3c3

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const p1, 0x7f01003d

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private T()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "report_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->v:Ljava/lang/String;

    const-string v1, "format_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isshowblock"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->x:Z

    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->w:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->v:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->x:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "answered_report_show"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "unkonwn_content_report_show"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080181

    const v1, 0x7f0801a5

    const v2, 0x7f08019d

    const v3, 0x7f06005a

    const-string v4, "unkonwn_content_report_dialog_click"

    const v5, 0x7f01003d

    const v6, 0x7f1000ef

    const-string v7, ""

    const v8, 0x7f0600c2

    const/4 v9, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    invoke-static {}, Lcom/callerid/block/util/v0/b;->c()Lcom/callerid/block/util/v0/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callerid/block/util/v0/b;->f(Landroid/app/Activity;)V

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "answered_report_submit"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->v:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->B:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->C:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/callerid/block/mvc/controller/ReportContactActivity;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "answered_report_report"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->G:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "answered_report_select_block"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->v:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/callerid/block/mvc/controller/ReportContactActivity;->Q(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100182

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100174

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    :sswitch_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "answered_report_cancel"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :goto_1
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v9, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_6

    :sswitch_4
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->v:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->x:Z

    const-string v1, "Telemarketing"

    const-string v5, "is_telemarketing"

    if-eqz p1, :cond_2

    iput-object v5, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->C:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->F:Landroid/widget/ImageView;

    const v0, 0x7f0801a6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->v:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v1}, Lcom/callerid/block/mvc/controller/ReportContactActivity;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_5
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->v:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->x:Z

    const-string v2, "Spam"

    const-string v5, "is_spam"

    if-eqz p1, :cond_3

    iput-object v5, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->B:Ljava/lang/String;

    iput-object v2, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->C:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->E:Landroid/widget/ImageView;

    const v0, 0x7f08019e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->v:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v2}, Lcom/callerid/block/mvc/controller/ReportContactActivity;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_6
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->v:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->x:Z

    const-string v0, "Scam"

    const-string v5, "is_scam"

    if-eqz p1, :cond_4

    iput-object v5, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->C:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->D:Landroid/widget/ImageView;

    const v0, 0x7f080182

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_4
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->v:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v0}, Lcom/callerid/block/mvc/controller/ReportContactActivity;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-static {p0, p1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008b -> :sswitch_6
        0x7f090090 -> :sswitch_5
        0x7f090093 -> :sswitch_4
        0x7f090138 -> :sswitch_2
        0x7f09015a -> :sswitch_1
        0x7f09021f -> :sswitch_0
        0x7f0902df -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f06014d

    invoke-static {p0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/callerid/block/util/t0;->c0(Landroid/app/Activity;I)V

    const p1, 0x7f0c0031

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/ReportContactActivity;->R()V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/ReportContactActivity;->T()V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int p1, v1

    :try_start_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 p1, 0x0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    const p2, 0x7f01003d

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    return-void
.end method
