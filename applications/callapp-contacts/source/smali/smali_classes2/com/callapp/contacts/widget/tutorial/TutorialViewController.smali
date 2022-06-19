.class public Lcom/callapp/contacts/widget/tutorial/TutorialViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;
.implements Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;
.implements Lcom/callapp/contacts/widget/tutorial/command/events/OnFinishedTutorialListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener;
    }
.end annotation


# instance fields
.field private final b:J

.field private c:Lcom/callapp/contacts/event/bus/EventBus;

.field private d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

.field private e:Lcom/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener;

.field private f:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

.field private j:Landroid/widget/FrameLayout;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;Lcom/callapp/contacts/event/bus/EventBus;Landroid/view/ViewGroup;Landroid/app/Activity;Lcom/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xfa0

    .line 29
    iput-wide v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->b:J

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    .line 48
    iput-object p5, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->e:Lcom/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener;

    .line 1075
    new-instance p5, Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->j:Landroid/widget/FrameLayout;

    .line 1076
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p5, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    iget-object p5, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1078
    new-instance p3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialViewController$huT4F_lo4PowPx6MVOOJh2VwKPQ;

    invoke-direct {p3, p0, p4, p1}, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialViewController$huT4F_lo4PowPx6MVOOJh2VwKPQ;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;Landroid/app/Activity;Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;)V

    iput-object p3, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->k:Ljava/lang/Runnable;

    .line 1095
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    iput-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->c:Lcom/callapp/contacts/event/bus/EventBus;

    .line 51
    sget-object p1, Lcom/callapp/contacts/widget/tutorial/command/events/OnFinishedTutorialListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p2, p1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->getTutorialPages()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->g:Ljava/util/List;

    .line 53
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    .line 2078
    iget-object p1, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->g:Ljava/util/List;

    .line 2082
    iget-object p1, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->a(Ljava/util/List;)V

    .line 55
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->g:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getPageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->setCurrentPage(Ljava/lang/String;)V

    .line 56
    new-instance p1, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$1;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)V

    .line 69
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->g:Ljava/util/List;

    return-object p0
.end method

.method private synthetic a(Landroid/app/Activity;Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;)V
    .locals 3

    .line 79
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;

    iget-object v2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->j:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;-><init>(Landroid/widget/FrameLayout;)V

    new-instance v2, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialViewController$_u79iw_3qNeY2vJDIboZ_Va3Jww;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialViewController$_u79iw_3qNeY2vJDIboZ_Va3Jww;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)V

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;-><init>(Landroid/app/Activity;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager$OnWidgetAddedListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->f:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;

    .line 84
    new-instance p1, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$2;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)V

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->setOnWidgetClickedListener(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager$OnWidgetClickedListener;)V

    .line 91
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->f:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;

    const-class p2, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    const/4 v0, 0x0

    .line 2382
    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 92
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->f:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;

    .line 3234
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->fY:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "welcomeTutorialMinimized"

    .line 3239
    invoke-virtual {p1, p2, v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->a(Ljava/io/Serializable;ZZ)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    goto :goto_0

    :cond_1
    const-string p2, "welcomeTutorial"

    .line 3236
    invoke-virtual {p1, p2, v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->a(Ljava/io/Serializable;ZZ)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 93
    :goto_0
    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->k:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)V
    .locals 1

    .line 4162
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->h:Z

    if-eqz v0, :cond_1

    .line 4164
    iget-object p0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->f:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;

    if-eqz p0, :cond_0

    .line 4165
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->k()V

    .line 4167
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->b()V

    return-void

    .line 4168
    :cond_1
    iget-object p0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->f:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;

    if-eqz p0, :cond_2

    .line 4169
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->e()V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)Z
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)Lcom/callapp/contacts/widget/tutorial/TutorialPopup;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->i:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    return-object p0
.end method

.method private synthetic e()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->e:Lcom/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$_u79iw_3qNeY2vJDIboZ_Va3Jww(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->e()V

    return-void
.end method

.method public static synthetic lambda$huT4F_lo4PowPx6MVOOJh2VwKPQ(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;Landroid/app/Activity;Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->a(Landroid/app/Activity;Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 101
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Widget tutorial dismissed from close button"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->i:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->dismiss()V

    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 135
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->h:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Showing tutorial popup"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->c:Lcom/callapp/contacts/event/bus/EventBus;

    invoke-direct {v0, p0, v1, v2}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;Ljava/util/List;Lcom/callapp/contacts/event/bus/EventBus;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->i:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    .line 138
    new-instance v1, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$3;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 156
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->i:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->h:Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->setCurrentPage(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->i:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->dismiss()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->i:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->h:Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->f:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->l()V

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->f:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->m()V

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->c:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/widget/tutorial/command/events/OnFinishedTutorialListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->e:Lcom/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener;

    .line 124
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->f:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;

    if-eqz v1, :cond_0

    .line 2122
    iput-object v0, v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager$OnWidgetAddedListener;

    .line 2123
    iput-object v0, v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager$OnWidgetClickedListener;

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->b()V

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
