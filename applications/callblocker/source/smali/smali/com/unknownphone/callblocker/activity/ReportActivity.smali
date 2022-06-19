.class public Lcom/unknownphone/callblocker/activity/ReportActivity;
.super Landroid/app/Activity;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

.field private c:Landroidx/appcompat/widget/AppCompatEditText;

.field private d:Landroidx/appcompat/widget/AppCompatTextView;

.field private e:Landroidx/appcompat/widget/AppCompatEditText;

.field private f:Landroidx/appcompat/widget/AppCompatEditText;

.field private g:Lcom/unknownphone/callblocker/d/b;

.field private h:Landroid/content/SharedPreferences;

.field private i:Landroidx/appcompat/widget/AppCompatButton;

.field private j:Lcom/unknownphone/callblocker/d/d;

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/ScrollView;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Landroid/view/View;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lretrofit2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/unknownphone/callblocker/activity/ReportActivity;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->p:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 331
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 332
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/activity/ReportActivity;->setResult(ILandroid/content/Intent;)V

    .line 333
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->finish()V

    .line 334
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/activity/ReportActivity;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroidx/appcompat/widget/AppCompatButton;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->i:Landroidx/appcompat/widget/AppCompatButton;

    return-object v0
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 341
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 342
    invoke-virtual {v3, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 343
    const v0, 0x7f0c0043

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 345
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_0
    const v0, 0x7f0901c4

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 349
    const v1, 0x7f090157

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    .line 350
    const v2, 0x7f090136

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 352
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%s\n%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f1001cb

    invoke-virtual {p0, v7}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f1001ca

    .line 353
    invoke-virtual {p0, v7}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 352
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    const v0, 0x7f1001c9

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 355
    const v0, 0x7f1001c8

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 357
    new-instance v0, Lcom/unknownphone/callblocker/activity/ReportActivity$7;

    invoke-direct {v0, p0, v3}, Lcom/unknownphone/callblocker/activity/ReportActivity$7;-><init>(Lcom/unknownphone/callblocker/activity/ReportActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    new-instance v0, Lcom/unknownphone/callblocker/activity/ReportActivity$8;

    invoke-direct {v0, p0, v3}, Lcom/unknownphone/callblocker/activity/ReportActivity$8;-><init>(Lcom/unknownphone/callblocker/activity/ReportActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 372
    return-void
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->l:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic d(Lcom/unknownphone/callblocker/activity/ReportActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/unknownphone/callblocker/activity/ReportActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/unknownphone/callblocker/activity/ReportActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/unknownphone/callblocker/activity/ReportActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->d:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method static synthetic i(Lcom/unknownphone/callblocker/activity/ReportActivity;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->b:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->b:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->getIndex()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->a()V

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->b()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 226
    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/app/Activity;)V

    .line 228
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->e:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const v0, 0x7f1001c4

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    .line 272
    :goto_0
    return-void

    .line 235
    :cond_0
    sget-boolean v0, Lcom/unknownphone/callblocker/activity/ReportActivity;->a:Z

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 236
    :cond_1
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v2, 0xbb8

    if-le v0, v2, :cond_3

    .line 237
    :cond_2
    const v0, 0x7f100081

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->b:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 244
    const-string/jumbo v0, "_action"

    const-string/jumbo v3, "_submit_comment"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v0, "api_key"

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->h:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "api_key"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v3, "lang"

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->h:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "language_code"

    .line 247
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string/jumbo v3, "_opt_type_call"

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "_not_specified"

    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v0, "_opt_username"

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->c:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v0, "comment"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v0, "_opt_phone_owner"

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v0, "phone"

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/util/Map;)V

    .line 256
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->j:Lcom/unknownphone/callblocker/d/d;

    new-instance v1, Lcom/unknownphone/callblocker/activity/ReportActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/unknownphone/callblocker/activity/ReportActivity$6;-><init>(Lcom/unknownphone/callblocker/activity/ReportActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2, v1}, Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;Lcom/unknownphone/callblocker/d/d$b;)Lretrofit2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->s:Lretrofit2/b;

    goto/16 :goto_0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 79
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->q:Ljava/lang/String;

    .line 84
    const-string/jumbo v1, "identity"

    const v2, 0x7f10015a

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->o:Ljava/lang/String;

    .line 89
    :cond_0
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 90
    const v1, 0x7f0901e0

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    .line 91
    const v2, 0x7f090077

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 92
    const v3, 0x7f090168

    invoke-virtual {p0, v3}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 93
    const v4, 0x7f0901df

    invoke-virtual {p0, v4}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatSpinner;

    .line 94
    const v5, 0x7f090057

    invoke-virtual {p0, v5}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    .line 95
    const v6, 0x7f0901eb

    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->b:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    .line 96
    const v6, 0x7f09016a

    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 97
    const v6, 0x7f090169

    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    const v6, 0x7f090094

    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 99
    const v6, 0x7f090076

    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 100
    const v6, 0x7f0901d6

    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->i:Landroidx/appcompat/widget/AppCompatButton;

    .line 101
    const v6, 0x7f090179

    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->l:Landroid/widget/ScrollView;

    .line 102
    const v6, 0x7f09011e

    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->p:Landroid/view/View;

    .line 106
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 107
    if-nez v6, :cond_2

    move-object v6, v7

    :goto_0
    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->m:Ljava/lang/String;

    .line 108
    iget-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->m:Ljava/lang/String;

    invoke-static {v6}, Lcom/unknownphone/callblocker/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->k:Ljava/lang/String;

    .line 109
    new-instance v6, Lcom/unknownphone/callblocker/d/b;

    invoke-direct {v6, p0}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->g:Lcom/unknownphone/callblocker/d/b;

    .line 110
    invoke-static {}, Lcom/unknownphone/callblocker/d/d;->a()Lcom/unknownphone/callblocker/d/d;

    move-result-object v6

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->j:Lcom/unknownphone/callblocker/d/d;

    .line 111
    const-string/jumbo v6, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {p0, v6, v8}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->h:Landroid/content/SharedPreferences;

    .line 115
    iget-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->i:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v10, Lcom/unknownphone/callblocker/activity/ReportActivity$1;

    invoke-direct {v10, p0}, Lcom/unknownphone/callblocker/activity/ReportActivity$1;-><init>(Lcom/unknownphone/callblocker/activity/ReportActivity;)V

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->i:Landroidx/appcompat/widget/AppCompatButton;

    const v10, 0x7f0800ac

    .line 145
    invoke-static {p0, v10}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 144
    invoke-virtual {v6, v7, v7, v10, v7}, Landroidx/appcompat/widget/AppCompatButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->i:Landroidx/appcompat/widget/AppCompatButton;

    const v7, 0x7f1001d2

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 147
    iget-object v6, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->p:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 151
    new-instance v6, Lcom/unknownphone/callblocker/activity/ReportActivity$2;

    invoke-direct {v6, p0}, Lcom/unknownphone/callblocker/activity/ReportActivity$2;-><init>(Lcom/unknownphone/callblocker/activity/ReportActivity;)V

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v3, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v2, Lcom/unknownphone/callblocker/activity/ReportActivity$3;

    invoke-direct {v2, p0}, Lcom/unknownphone/callblocker/activity/ReportActivity$3;-><init>(Lcom/unknownphone/callblocker/activity/ReportActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v0, Lcom/unknownphone/callblocker/activity/ReportActivity$4;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/activity/ReportActivity$4;-><init>(Lcom/unknownphone/callblocker/activity/ReportActivity;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v0, Lcom/unknownphone/callblocker/activity/ReportActivity$5;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/activity/ReportActivity$5;-><init>(Lcom/unknownphone/callblocker/activity/ReportActivity;)V

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    const v2, 0x7f100006

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    const v2, 0x7f100008

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const v2, 0x7f100005

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const v2, 0x7f100004

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    const v2, 0x7f100003

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    const v2, 0x7f100009

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    const v2, 0x7f10000b

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const v2, 0x7f100007

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const v2, 0x7f100001

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const v2, 0x7f100002

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const v2, 0x7f10000a

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 203
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 204
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 205
    invoke-virtual {v4, p0}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 209
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->b:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-static {p0, v0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 212
    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 214
    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->g:Lcom/unknownphone/callblocker/d/b;

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/unknownphone/callblocker/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 219
    if-eqz v2, :cond_3

    move v0, v8

    :goto_1
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 220
    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 221
    return-void

    .line 107
    :cond_2
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_3
    move v0, v9

    .line 219
    goto :goto_1

    :cond_4
    move v9, v8

    .line 220
    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->s:Lretrofit2/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->s:Lretrofit2/b;

    invoke-interface {v0}, Lretrofit2/b;->b()V

    .line 327
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 328
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 276
    packed-switch p3, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 278
    :pswitch_0
    const-string/jumbo v0, "_not_specified"

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_0

    .line 281
    :pswitch_1
    const-string/jumbo v0, "_scam"

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_0

    .line 284
    :pswitch_2
    const-string/jumbo v0, "_missed_call"

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_0

    .line 287
    :pswitch_3
    const-string/jumbo v0, "_marketing"

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_0

    .line 290
    :pswitch_4
    const-string/jumbo v0, "_fake_id"

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_0

    .line 293
    :pswitch_5
    const-string/jumbo v0, "_survey"

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_0

    .line 296
    :pswitch_6
    const-string/jumbo v0, "_threats"

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_0

    .line 299
    :pswitch_7
    const-string/jumbo v0, "_prank_call"

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_0

    .line 302
    :pswitch_8
    const-string/jumbo v0, "_auto_reminder"

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_0

    .line 305
    :pswitch_9
    const-string/jumbo v0, "_debt_collector"

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_0

    .line 308
    :pswitch_a
    const-string/jumbo v0, "_text_message"

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity;->r:Ljava/lang/String;

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 316
    return-void
.end method
