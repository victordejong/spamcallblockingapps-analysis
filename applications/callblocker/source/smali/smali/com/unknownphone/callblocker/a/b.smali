.class public Lcom/unknownphone/callblocker/a/b;
.super Landroidx/fragment/app/Fragment;
.source "BlockedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/a/b$a;,
        Lcom/unknownphone/callblocker/a/b$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private ae:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Landroidx/recyclerview/widget/RecyclerView;

.field private ah:Ljava/lang/String;

.field private ai:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

.field private aj:Lcom/unknownphone/callblocker/a/a;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:I

.field private b:Lcom/unknownphone/callblocker/a/b$b;

.field private c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

.field private d:Lcom/unknownphone/callblocker/f/a;

.field private e:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private g:Landroid/content/SharedPreferences;

.field private h:Lcom/unknownphone/callblocker/d/b;

.field private i:Landroidx/appcompat/widget/AppCompatEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/unknownphone/callblocker/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unknownphone/callblocker/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/b;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/unknownphone/callblocker/a/b;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/a/b;-><init>()V

    .line 101
    iput-object p0, v0, Lcom/unknownphone/callblocker/a/b;->d:Lcom/unknownphone/callblocker/f/a;

    .line 102
    return-object v0
.end method

.method public static a(Lcom/unknownphone/callblocker/f/a;Ljava/lang/String;)Lcom/unknownphone/callblocker/a/b;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/unknownphone/callblocker/a/b;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/a/b;-><init>()V

    .line 107
    iput-object p0, v0, Lcom/unknownphone/callblocker/a/b;->d:Lcom/unknownphone/callblocker/f/a;

    .line 108
    iput-object p1, v0, Lcom/unknownphone/callblocker/a/b;->ak:Ljava/lang/String;

    .line 109
    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/b;->am:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->af:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/a/b;->p()Landroid/content/Context;

    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 235
    :cond_0
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v6, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 237
    const v0, 0x7f0c0042

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 239
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_1

    .line 241
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 245
    :cond_1
    const v0, 0x7f0900d7

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 246
    const v1, 0x7f0900be

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 247
    const v2, 0x7f0900d6

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 248
    const v3, 0x7f0901a4

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 250
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/a/b;->r()Landroidx/fragment/app/d;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 251
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/a/b;->p()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "android.permission.READ_CONTACTS"

    invoke-static {v7, v8}, Landroidx/core/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_4

    .line 252
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/a/b;->r()Landroidx/fragment/app/d;

    move-result-object v7

    const-string/jumbo v8, "android.permission.READ_CONTACTS"

    invoke-static {v7, v8}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/unknownphone/callblocker/a/b;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "asked_for_read_contacts_permission"

    .line 253
    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 255
    :goto_1
    if-eqz v4, :cond_3

    .line 256
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v5, v7, :cond_2

    .line 257
    const-string/jumbo v5, "#ababab"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 258
    :cond_2
    const-string/jumbo v5, "#ababab"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 261
    :cond_3
    new-instance v5, Lcom/unknownphone/callblocker/a/b$20;

    invoke-direct {v5, p0, v6}, Lcom/unknownphone/callblocker/a/b$20;-><init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    new-instance v0, Lcom/unknownphone/callblocker/a/b$21;

    invoke-direct {v0, p0, v6}, Lcom/unknownphone/callblocker/a/b$21;-><init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    new-instance v0, Lcom/unknownphone/callblocker/a/b$22;

    invoke-direct {v0, p0, v4, v6}, Lcom/unknownphone/callblocker/a/b$22;-><init>(Lcom/unknownphone/callblocker/a/b;ZLandroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    new-instance v0, Lcom/unknownphone/callblocker/a/b$2;

    invoke-direct {v0, p0, v6}, Lcom/unknownphone/callblocker/a/b$2;-><init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_4
    move v4, v5

    .line 253
    goto :goto_1
.end method

.method private a(Lcom/unknownphone/callblocker/a/b$b$a;)V
    .locals 3

    .prologue
    .line 619
    sget-object v0, Lcom/unknownphone/callblocker/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unknownphone/callblocker/a/b$b$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unknownphone/callblocker/a/b;->an:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->b:Lcom/unknownphone/callblocker/a/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->b:Lcom/unknownphone/callblocker/a/b$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/b$b;->cancel(Z)Z

    .line 621
    :cond_0
    new-instance v0, Lcom/unknownphone/callblocker/a/b$b;

    invoke-direct {v0, p0, p1}, Lcom/unknownphone/callblocker/a/b$b;-><init>(Lcom/unknownphone/callblocker/a/b;Lcom/unknownphone/callblocker/a/b$b$a;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->b:Lcom/unknownphone/callblocker/a/b$b;

    .line 622
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->b:Lcom/unknownphone/callblocker/a/b$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/b$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 623
    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/b;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/a/b;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/b;Lcom/unknownphone/callblocker/a/b$b$a;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b$b$a;)V

    return-void
.end method

.method private as()V
    .locals 8

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/a/b;->p()Landroid/content/Context;

    move-result-object v0

    .line 404
    if-nez v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 406
    :cond_0
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 407
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 408
    const v0, 0x7f0c0041

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 410
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_1

    .line 412
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 416
    :cond_1
    const v0, 0x7f0900b6

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    .line 417
    const v1, 0x7f0901d4

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 418
    const v2, 0x7f0900ae

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 419
    const v3, 0x7f090157

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 420
    const v4, 0x7f090136

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 421
    const v5, 0x7f090088

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 423
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->requestFocus()Z

    .line 424
    const v7, 0x7f10004d

    invoke-virtual {p0, v7}, Lcom/unknownphone/callblocker/a/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    const v1, 0x7f10004a

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/a/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    new-instance v1, Lcom/unknownphone/callblocker/a/b$6;

    invoke-direct {v1, p0, v6}, Lcom/unknownphone/callblocker/a/b$6;-><init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    new-instance v1, Lcom/unknownphone/callblocker/a/b$7;

    invoke-direct {v1, p0, v6}, Lcom/unknownphone/callblocker/a/b$7;-><init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    new-instance v1, Lcom/unknownphone/callblocker/a/b$8;

    invoke-direct {v1, p0, v0, v6}, Lcom/unknownphone/callblocker/a/b$8;-><init>(Lcom/unknownphone/callblocker/a/b;Landroidx/appcompat/widget/AppCompatEditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/a/b;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/unknownphone/callblocker/a/b;->an:I

    return p1
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->am:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/a/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 544
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/a/b;->p()Landroid/content/Context;

    move-result-object v0

    .line 546
    if-nez v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 548
    :cond_0
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 549
    invoke-virtual {v7, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 550
    const v0, 0x7f0c0045

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 552
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    :cond_1
    const v0, 0x7f0901c5

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 556
    const v1, 0x7f0901c6

    invoke-virtual {v7, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 557
    const v2, 0x7f0900ec

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 558
    const v3, 0x7f090137

    invoke-virtual {v7, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 559
    const v4, 0x7f090136

    invoke-virtual {v7, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 560
    const v5, 0x7f090157

    invoke-virtual {v7, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    .line 561
    const v6, 0x7f090088

    invoke-virtual {v7, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 563
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 565
    const/4 v8, 0x2

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v0, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 567
    const v0, 0x7f10021a

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/a/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    invoke-virtual {v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 570
    const v0, 0x7f0800be

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 572
    invoke-virtual {v3, v10}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 573
    const v0, 0x7f10021b

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 574
    new-instance v0, Lcom/unknownphone/callblocker/a/b$13;

    invoke-direct {v0, p0, p1, v7}, Lcom/unknownphone/callblocker/a/b$13;-><init>(Lcom/unknownphone/callblocker/a/b;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    const v0, 0x7f100055

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 595
    new-instance v0, Lcom/unknownphone/callblocker/a/b$14;

    invoke-direct {v0, p0, v7}, Lcom/unknownphone/callblocker/a/b$14;-><init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 604
    new-instance v0, Lcom/unknownphone/callblocker/a/b$15;

    invoke-direct {v0, p0, v7}, Lcom/unknownphone/callblocker/a/b$15;-><init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/unknownphone/callblocker/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ae:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/unknownphone/callblocker/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->d:Lcom/unknownphone/callblocker/f/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/a/a/e;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b;->d:Lcom/unknownphone/callblocker/f/a;

    invoke-interface {v1, v0}, Lcom/unknownphone/callblocker/f/a;->b(Landroidx/fragment/app/Fragment;)V

    .line 303
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/a/b;->p()Landroid/content/Context;

    move-result-object v1

    .line 474
    if-nez v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->af:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/c;

    .line 479
    new-instance v8, Landroid/app/Dialog;

    invoke-direct {v8, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 480
    invoke-virtual {v8, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 481
    const v1, 0x7f0c0045

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 483
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 484
    if-eqz v1, :cond_2

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    :cond_2
    const v1, 0x7f0901c5

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 487
    const v2, 0x7f0901c6

    invoke-virtual {v8, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 488
    const v3, 0x7f0900ec

    invoke-virtual {v8, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    .line 489
    const v4, 0x7f090137

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 490
    const v5, 0x7f090136

    invoke-virtual {v8, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    .line 491
    const v6, 0x7f090157

    invoke-virtual {v8, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatButton;

    .line 492
    const v7, 0x7f090088

    invoke-virtual {v8, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 494
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/c;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 496
    const/4 v9, 0x2

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v1, v9, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 498
    const v1, 0x7f10021a

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/a/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 501
    const v1, 0x7f0800be

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 503
    invoke-virtual {v4, v11}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 504
    const v1, 0x7f10021b

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 505
    new-instance v1, Lcom/unknownphone/callblocker/a/b$9;

    invoke-direct {v1, p0, p1, v8, v0}, Lcom/unknownphone/callblocker/a/b$9;-><init>(Lcom/unknownphone/callblocker/a/b;ILandroid/app/Dialog;Lcom/unknownphone/callblocker/a/c;)V

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    const v0, 0x7f100055

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 520
    new-instance v0, Lcom/unknownphone/callblocker/a/b$10;

    invoke-direct {v0, p0, v8}, Lcom/unknownphone/callblocker/a/b$10;-><init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 529
    new-instance v0, Lcom/unknownphone/callblocker/a/b$11;

    invoke-direct {v0, p0, v8}, Lcom/unknownphone/callblocker/a/b$11;-><init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/unknownphone/callblocker/a/b;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/unknownphone/callblocker/a/b;->a()V

    return-void
.end method

.method static synthetic f(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ak:Ljava/lang/String;

    return-object v0
.end method

.method private f()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/a/b;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return v2

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/a/b;->p()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    invoke-static {v0, v3}, Landroidx/core/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 315
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 316
    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "asked_for_read_contacts_permission"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x109

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/a/b;->a([Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 312
    goto :goto_1

    :cond_3
    move v2, v1

    .line 323
    goto :goto_0
.end method

.method static synthetic g(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/f/a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->d:Lcom/unknownphone/callblocker/f/a;

    return-object v0
.end method

.method private g()V
    .locals 8

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/a/b;->p()Landroid/content/Context;

    move-result-object v0

    .line 334
    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 337
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 338
    const v0, 0x7f0c0041

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 340
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_1

    .line 342
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 346
    :cond_1
    const v0, 0x7f0900b6

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    .line 347
    const v1, 0x7f0901d4

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 348
    const v2, 0x7f0900ae

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 349
    const v3, 0x7f090157

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 350
    const v4, 0x7f090136

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 351
    const v5, 0x7f090088

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 353
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->requestFocus()Z

    .line 354
    const v7, 0x7f100044

    invoke-virtual {p0, v7}, Lcom/unknownphone/callblocker/a/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    const v1, 0x7f100043

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/a/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v1, Lcom/unknownphone/callblocker/a/b$3;

    invoke-direct {v1, p0, v6}, Lcom/unknownphone/callblocker/a/b$3;-><init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    new-instance v1, Lcom/unknownphone/callblocker/a/b$4;

    invoke-direct {v1, p0, v6}, Lcom/unknownphone/callblocker/a/b$4;-><init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    new-instance v1, Lcom/unknownphone/callblocker/a/b$5;

    invoke-direct {v1, p0, v0, v6}, Lcom/unknownphone/callblocker/a/b$5;-><init>(Lcom/unknownphone/callblocker/a/b;Landroidx/appcompat/widget/AppCompatEditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/unknownphone/callblocker/a/b;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/unknownphone/callblocker/a/b;->g()V

    return-void
.end method

.method static synthetic i(Lcom/unknownphone/callblocker/a/b;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/unknownphone/callblocker/a/b;->d()V

    return-void
.end method

.method static synthetic j(Lcom/unknownphone/callblocker/a/b;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/unknownphone/callblocker/a/b;->as()V

    return-void
.end method

.method static synthetic k(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/a/a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->aj:Lcom/unknownphone/callblocker/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ah:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->al:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/d/b;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->h:Lcom/unknownphone/callblocker/d/b;

    return-object v0
.end method

.method static synthetic o(Lcom/unknownphone/callblocker/a/b;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic p(Lcom/unknownphone/callblocker/a/b;)I
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/unknownphone/callblocker/a/b;->an:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/unknownphone/callblocker/a/b;->an:I

    return v0
.end method


# virtual methods
.method public K()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->b:Lcom/unknownphone/callblocker/a/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->b:Lcom/unknownphone/callblocker/a/b$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/b$b;->cancel(Z)Z

    .line 223
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K()V

    .line 224
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 114
    const v0, 0x7f0c004c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ai:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    .line 115
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ai:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    .line 116
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ai:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ai:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v1, 0x7f09017c

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->i:Landroidx/appcompat/widget/AppCompatEditText;

    .line 118
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ai:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 119
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ai:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    return-object v0
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 201
    const/16 v1, 0x2fb

    if-ne p1, v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b;->ai:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const/16 v1, 0x109

    if-ne p1, v1, :cond_4

    .line 205
    array-length v2, p3

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, p3, v1

    .line 206
    if-eqz v3, :cond_3

    .line 207
    const/4 v0, 0x1

    .line 210
    :cond_2
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/unknownphone/callblocker/a/b;->d()V

    goto :goto_0

    .line 205
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    new-instance v0, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->h:Lcom/unknownphone/callblocker/d/b;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ae:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->g:Landroid/content/SharedPreferences;

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 130
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->al:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->al:Ljava/lang/String;

    invoke-static {v0}, Lcom/unknownphone/callblocker/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ah:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->af:Ljava/util/List;

    .line 135
    new-instance v0, Lcom/unknownphone/callblocker/a/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b;->af:Ljava/util/List;

    new-instance v2, Lcom/unknownphone/callblocker/a/b$1;

    invoke-direct {v2, p0}, Lcom/unknownphone/callblocker/a/b$1;-><init>(Lcom/unknownphone/callblocker/a/b;)V

    invoke-direct {v0, v1, v2}, Lcom/unknownphone/callblocker/a/a;-><init>(Ljava/util/List;Lcom/unknownphone/callblocker/custom/f;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->aj:Lcom/unknownphone/callblocker/a/a;

    .line 141
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 142
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 143
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 145
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 146
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b;->aj:Lcom/unknownphone/callblocker/a/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 149
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->aj:Lcom/unknownphone/callblocker/a/a;

    new-instance v1, Lcom/unknownphone/callblocker/a/b$12;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/b$12;-><init>(Lcom/unknownphone/callblocker/a/b;)V

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/a;->a(Landroidx/recyclerview/widget/RecyclerView$c;)V

    .line 158
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/unknownphone/callblocker/a/b$16;

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/b;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v2}, Lcom/unknownphone/callblocker/a/b$16;-><init>(Lcom/unknownphone/callblocker/a/b;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 167
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->i:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/unknownphone/callblocker/a/b$17;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/b$17;-><init>(Lcom/unknownphone/callblocker/a/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/unknownphone/callblocker/a/b$18;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/b$18;-><init>(Lcom/unknownphone/callblocker/a/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    sget-object v0, Lcom/unknownphone/callblocker/a/b$b$a;->a:Lcom/unknownphone/callblocker/a/b$b$a;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b$b$a;)V

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ai:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-virtual {v0, v4}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ak:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b;->ai:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    new-instance v1, Lcom/unknownphone/callblocker/a/b$19;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/b$19;-><init>(Lcom/unknownphone/callblocker/a/b;)V

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_1
    return-void

    .line 130
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
