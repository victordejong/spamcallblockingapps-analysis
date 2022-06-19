.class public Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;
.super Lcom/kedlin/cca/ui/Slide;
.source ""


# instance fields
.field public a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

.field public b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

.field public d:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/Slide;-><init>(Landroid/content/Context;)V

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    return-void
.end method

.method public static synthetic f(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;)Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    return-object p0
.end method

.method public static synthetic g(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;)Lcom/kedlin/cca/ui/EveryCallerSignInForm;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->c:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    return-object p0
.end method

.method public static synthetic h(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->d:Landroid/app/AlertDialog;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->c:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->h()V

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->c:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->g()V

    return-void
.end method

.method public e()V
    .locals 9

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$a;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$a;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;)V

    new-instance v2, Lu91;

    iget-object v3, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {v2, v3, v0, v1}, Lu91;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ScheduledExecutorService;Lu91$i;)V

    sget-object v0, Lv91$a;->c:Lv91$a;

    invoke-static {v0, v2}, Lv91;->c(Lv91$a;Lv91$b;)Lv91;

    move-result-object v0

    check-cast v0, Lr91;

    const v1, 0x7f0a03b2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    iput-object v1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->c:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    new-instance v3, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$b;

    invoke-direct {v3, p0, v0}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$b;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;Lr91;)V

    invoke-virtual {v1, v3}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->setListener(Lcom/kedlin/cca/ui/EveryCallerSignInForm$f;)V

    const v1, 0x7f0a0585

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$c;

    invoke-direct {v3, p0}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$c;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0587

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$d;

    invoke-direct {v3, p0}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$d;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0584

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "https://www.callcontrol.com/terms-and-privacy"

    aput-object v6, v4, v5

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const v6, 0x7f110673

    invoke-virtual {v3, v6, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v1, 0x7f0a0583

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const v4, 0x7f110672

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v6, Landroid/text/style/URLSpan;

    invoke-virtual {v4, v5, v3, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v7, v3, v5

    new-instance v8, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$e;

    invoke-direct {v8, p0}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$e;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;)V

    invoke-static {v4, v7, v8}, Loe1;->Q(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Landroid/text/style/ClickableSpan;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v1, 0x7f0a0586

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$f;

    invoke-direct {v3, p0, v2, v0}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$f;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;Lu91;Lr91;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d016e

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

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->d:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method
