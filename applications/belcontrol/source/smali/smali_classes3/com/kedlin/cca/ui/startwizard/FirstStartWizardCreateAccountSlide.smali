.class public Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;
.super Lcom/kedlin/cca/ui/Slide;
.source ""


# instance fields
.field public a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

.field public b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Landroid/widget/PopupWindow;

.field public d:Landroid/app/AlertDialog;

.field public f:Z

.field public g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/Slide;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->f:Z

    new-instance v0, Lqd1;

    invoke-direct {v0, p0}, Lqd1;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->g:Landroid/view/View$OnClickListener;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    return-void
.end method

.method public static synthetic f(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->f:Z

    return p0
.end method

.method public static synthetic g(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->f:Z

    return p1
.end method

.method public static synthetic h(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;)Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    return-object p0
.end method

.method public static synthetic i(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->d:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d014c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->c:Landroid/widget/PopupWindow;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const p1, 0x7f0a02e1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lrd1;

    invoke-direct {v0, p0}, Lrd1;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic l(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public e()V
    .locals 7

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$a;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$a;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;)V

    new-instance v2, Lu91;

    iget-object v3, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {v2, v3, v0, v1}, Lu91;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ScheduledExecutorService;Lu91$i;)V

    const v0, 0x7f0a03b9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$b;

    invoke-direct {v1, p0, v2}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$b;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;Lu91;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03ba

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$c;

    invoke-direct {v1, p0, v2}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$c;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;Lu91;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a020f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "https://www.callcontrol.com/terms-and-privacy"

    aput-object v4, v2, v3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const v4, 0x7f110224

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0a020e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const v2, 0x7f110672

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v4, Landroid/text/style/URLSpan;

    invoke-virtual {v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    new-instance v6, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$d;

    invoke-direct {v6, p0}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$d;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;)V

    invoke-static {v2, v5, v6}, Loe1;->Q(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Landroid/text/style/ClickableSpan;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0a0211

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$e;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$e;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0212

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d008c

    return v0
.end method

.method public getStyleId()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x1030239

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public synthetic k(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->j(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->l(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->c:Landroid/widget/PopupWindow;

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->d:Landroid/app/AlertDialog;

    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method
