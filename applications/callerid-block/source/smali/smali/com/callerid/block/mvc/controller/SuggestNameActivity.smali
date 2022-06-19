.class public Lcom/callerid/block/mvc/controller/SuggestNameActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private s:Landroid/graphics/Typeface;

.field private t:Ljava/lang/String;

.field private u:Lcom/callerid/block/customview/DeletableEditText;

.field private v:Lcom/rey/material/widget/RadioButton;

.field private w:Lcom/rey/material/widget/RadioButton;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/mvc/controller/SuggestNameActivity;)Lcom/rey/material/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->w:Lcom/rey/material/widget/RadioButton;

    return-object p0
.end method

.method static synthetic R(Lcom/callerid/block/mvc/controller/SuggestNameActivity;)Lcom/rey/material/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->v:Lcom/rey/material/widget/RadioButton;

    return-object p0
.end method

.method static synthetic S(Lcom/callerid/block/mvc/controller/SuggestNameActivity;)Lcom/callerid/block/customview/DeletableEditText;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->u:Lcom/callerid/block/customview/DeletableEditText;

    return-object p0
.end method

.method private T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;-><init>(Lcom/callerid/block/mvc/controller/SuggestNameActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private U()V
    .locals 5

    const v0, 0x7f090471

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090102

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/DeletableEditText;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->u:Lcom/callerid/block/customview/DeletableEditText;

    const v1, 0x7f0902c3

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rey/material/widget/RadioButton;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->v:Lcom/rey/material/widget/RadioButton;

    const v1, 0x7f0902c6

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rey/material/widget/RadioButton;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->w:Lcom/rey/material/widget/RadioButton;

    const v1, 0x7f090217

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/LImageButton;

    const v2, 0x7f090092

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/rey/material/widget/Button;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->v:Lcom/rey/material/widget/RadioButton;

    new-instance v4, Lcom/callerid/block/mvc/controller/SuggestNameActivity$a;

    invoke-direct {v4, p0}, Lcom/callerid/block/mvc/controller/SuggestNameActivity$a;-><init>(Lcom/callerid/block/mvc/controller/SuggestNameActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->w:Lcom/rey/material/widget/RadioButton;

    new-instance v4, Lcom/callerid/block/mvc/controller/SuggestNameActivity$b;

    invoke-direct {v4, p0}, Lcom/callerid/block/mvc/controller/SuggestNameActivity$b;-><init>(Lcom/callerid/block/mvc/controller/SuggestNameActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->u:Lcom/callerid/block/customview/DeletableEditText;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->v:Lcom/rey/material/widget/RadioButton;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->w:Lcom/rey/material/widget/RadioButton;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Lcom/rey/material/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private W(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {p1}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/callerid/block/util/t0;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p3}, Lcom/callerid/block/util/t0;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Lcom/callerid/block/util/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_1

    const-string p2, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/callerid/block/util/k0;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v3, "android"

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/callerid/block/util/k0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xb

    if-lt p1, p3, :cond_0

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method

.method private X()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->t:Ljava/lang/String;

    const-string v1, "old_tel_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "suggest_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->y:Ljava/lang/String;

    const-string v1, "t_p"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->x:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private Y(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/mvc/controller/SuggestNameActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/callerid/block/mvc/controller/SuggestNameActivity$c;-><init>(Lcom/callerid/block/mvc/controller/SuggestNameActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tel_number"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "type"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "t_p"

    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    sget-boolean p3, Lcom/callerid/block/util/w;->a:Z

    if-eqz p3, :cond_0

    const-string p3, "reportName"

    invoke-static {p3, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3, p2, p1}, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->W(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public V()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/callerid/block/mvc/controller/SuggestNameActivity$e;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/SuggestNameActivity$e;-><init>(Lcom/callerid/block/mvc/controller/SuggestNameActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const-string v0, ""

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090092

    const v2, 0x7f010001

    const/high16 v3, 0x7f010000

    if-eq p1, v1, :cond_1

    const v0, 0x7f090217

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_2

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->u:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-gt v4, v5, :cond_5

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->v:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "name"

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "company"

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    iget-object v5, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->w:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v4

    :cond_3
    iget-object v5, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->x:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p1}, Lcom/callerid/block/util/t0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->y:Ljava/lang/String;

    invoke-static {p1}, Lcom/callerid/block/util/t0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->x:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v1, v6}, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->t:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->T(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->t:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->Y(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x34a

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100085

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100141

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f06014d

    invoke-static {p0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/callerid/block/util/t0;->c0(Landroid/app/Activity;I)V

    const p1, 0x7f0c00d6

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->s:Landroid/graphics/Typeface;

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
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->U()V

    invoke-virtual {p0}, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->V()V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->X()V

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

    const p1, 0x3e99999a    # 0.3f

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
