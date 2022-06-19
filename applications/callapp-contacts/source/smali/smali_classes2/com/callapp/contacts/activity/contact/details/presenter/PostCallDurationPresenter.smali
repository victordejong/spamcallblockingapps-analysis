.class public Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;
.implements Lcom/callapp/contacts/event/listener/DestroyListener;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# static fields
.field private static final a:I


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f0600f3

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    check-cast p0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {p0}, Lcom/callapp/contacts/widget/RetractableView;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;II)V
    .locals 3

    .line 1058
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    .line 1060
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f0600f3

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1061
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/widget/RetractableView;->setExpandMaxHeight(I)V

    .line 1062
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/RetractableView;->c()V

    .line 1063
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    const v1, 0x7f0a06d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->c:Landroid/widget/ImageView;

    .line 1064
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    const v1, 0x7f0a06d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->e:Landroid/widget/TextView;

    const v1, 0x7f12053e

    .line 1065
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    const v1, 0x7f0a06d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->f:Landroid/widget/TextView;

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->c:Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    .line 1070
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->e:Landroid/widget/TextView;

    sget v0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez p1, :cond_1

    .line 1073
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->f:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1075
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->f:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callapp/contacts/util/date/DateUtils;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1080
    :goto_0
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    check-cast p0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {p0}, Lcom/callapp/contacts/widget/RetractableView;->a()V

    return-void
.end method

.method public static synthetic lambda$9SsdN7rl-4PnwGRxR58Ak0ZU7js(Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->a()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0a06d6

    .line 33
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->b:Landroid/view/View;

    .line 34
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 35
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addDestroyListener(Lcom/callapp/contacts/event/listener/DestroyListener;)V

    .line 36
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addThemeChangeListener(Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->removeCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->removeThemeChangeListener(Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 92
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$PostCallDurationPresenter$9SsdN7rl-4PnwGRxR58Ak0ZU7js;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$PostCallDurationPresenter$9SsdN7rl-4PnwGRxR58Ak0ZU7js;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
