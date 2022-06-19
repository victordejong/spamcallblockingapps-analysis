.class public Lcom/kedlin/cca/ui/startwizard/WizardView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kedlin/cca/ui/Slide;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kedlin/cca/ui/Slide;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Lcom/kedlin/cca/ui/Slide;

.field public d:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->b:Ljava/util/Stack;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->b:Ljava/util/Stack;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->b:Ljava/util/Stack;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/kedlin/cca/ui/startwizard/WizardView;)Lcom/kedlin/cca/ui/Slide;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/kedlin/cca/ui/Slide;ZLandroid/view/ViewGroup;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    neg-int p2, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/kedlin/cca/ui/startwizard/WizardView$c;

    invoke-direct {v0, p0, p3, p1}, Lcom/kedlin/cca/ui/startwizard/WizardView$c;-><init>(Lcom/kedlin/cca/ui/startwizard/WizardView;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/Slide;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    instance-of v1, v0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;

    if-nez v1, :cond_2

    instance-of v0, v0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardThirdSlide;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/kedlin/cca/ui/Slide;->a()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kedlin/cca/ui/startwizard/WizardView;->j(Ljava/lang/Class;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    const v0, 0x7f0a02b7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/kedlin/cca/ui/startwizard/WizardView$b;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/startwizard/WizardView$b;-><init>(Lcom/kedlin/cca/ui/startwizard/WizardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/Slide;->a()V

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0d00cf

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    const-class v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardFirstSlide;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lta1;->L:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    const-class v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSecondSlide;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    const-class v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardThirdSlide;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lr71;->m()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    const-class v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    const-class v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kedlin/cca/ui/startwizard/WizardView$a;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/startwizard/WizardView$a;-><init>(Lcom/kedlin/cca/ui/startwizard/WizardView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    return-void
.end method

.method public h(Z)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    instance-of v1, v0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSecondSlide;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardFirstSlide;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    const-class v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSecondSlide;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->f:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    instance-of p1, p1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardThirdSlide;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void

    :cond_4
    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v0

    iget-object v2, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    iget-object v1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    move-object v1, p1

    :cond_5
    if-nez v1, :cond_6

    invoke-static {}, Lr71;->m()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->b:Ljava/util/Stack;

    iget-object v2, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->e()V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Slide "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not in the sequence!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-virtual {p0, v1, v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->j(Ljava/lang/Class;Z)V

    return-void
.end method

.method public i(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kedlin/cca/ui/Slide;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->j(Ljava/lang/Class;Z)V

    return-void
.end method

.method public j(Ljava/lang/Class;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kedlin/cca/ui/Slide;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/Slide;->a()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kedlin/cca/ui/Slide;->d(Landroid/content/Context;Ljava/lang/Class;)Lcom/kedlin/cca/ui/Slide;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    const v1, 0x1030239

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/Slide;->c(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/kedlin/cca/ui/Slide;->b()V

    :goto_0
    const-class v1, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_3
    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    iput-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    const v1, 0x7f0a02b6

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    const v0, 0x7f0a02b7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/Button;

    iget-object v2, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    instance-of v3, v2, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;

    if-nez v3, :cond_6

    instance-of v2, v2, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->c:Lcom/kedlin/cca/ui/Slide;

    instance-of v3, v2, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardFirstSlide;

    if-eqz v3, :cond_7

    const v2, 0x7f11037d

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    :cond_7
    instance-of v3, v2, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSecondSlide;

    if-eqz v3, :cond_8

    const v2, 0x7f11037f

    goto :goto_3

    :cond_8
    instance-of v2, v2, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardThirdSlide;

    if-eqz v2, :cond_9

    const v2, 0x7f1102c7

    goto :goto_3

    :cond_9
    const v2, 0x7f11052e

    goto :goto_3

    :goto_4
    if-nez p1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/kedlin/cca/ui/startwizard/WizardView;->b(Lcom/kedlin/cca/ui/Slide;ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public setOnAfterDrawPermissionSlideHandler(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnAfterLastSlideHandler(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnAfterPermissionSlideHandler(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView;->f:Ljava/lang/Runnable;

    return-void
.end method
