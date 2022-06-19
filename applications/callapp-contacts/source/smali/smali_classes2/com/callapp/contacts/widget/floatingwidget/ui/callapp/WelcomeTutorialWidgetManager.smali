.class public Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;
.super Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager$OnWidgetAddedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;",
        "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager$OnWidgetAddedListener;

.field public b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager$OnWidgetClickedListener;

.field private final d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager$OnWidgetAddedListener;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;-><init>(Landroid/app/Activity;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;)V

    .line 48
    iput-object p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    .line 49
    iput-object p4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager$OnWidgetAddedListener;

    .line 50
    invoke-virtual {p0, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->setListener(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;)V

    .line 51
    invoke-virtual {p0, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->setOnItemSelectedListener(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;)V

    return-void
.end method

.method public static synthetic lambda$B6CbIi0oP_dhjOCKvk12UoKqFxc(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->n()V

    return-void
.end method

.method public static synthetic lambda$dymk9pxNYIIsNxDTLt5pAO9VaOY(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->o()V

    return-void
.end method

.method private synthetic n()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getListener()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;->a(I)V

    return-void
.end method

.method private synthetic o()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getListener()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;->a(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/Serializable;Z)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;
    .locals 6

    .line 31
    check-cast p1, Ljava/lang/String;

    const-string v0, "welcomeTutorial"

    .line 7061
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7062
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getSpringSystem()Lcom/facebook/rebound/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V

    return-object p1

    .line 7064
    :cond_0
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    invoke-direct {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;-><init>()V

    .line 7065
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->setHeadWidth(I)V

    .line 7066
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->setHeadHeight(I)V

    .line 7067
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getMaxWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getMaxHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->setInitialPosition(Landroid/graphics/Point;)V

    const/4 v0, 0x1

    .line 7068
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->setMaxChatHeads(I)V

    .line 7069
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->setConfig(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;)V

    .line 7070
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getSpringSystem()Lcom/facebook/rebound/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V

    return-object p1
.end method

.method public final a(Landroid/content/Context;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;
    .locals 4

    .line 165
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->a(Landroid/content/Context;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object p1

    .line 166
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fW:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 167
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 169
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 170
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 172
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->fW:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 173
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 175
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fW:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->fX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->setInitialPosition(Landroid/graphics/Point;)V

    return-object p1
.end method

.method public final a(DD)V
    .locals 3

    .line 128
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getChatHeads()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 128
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    .line 130
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getIconOrientation()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 131
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fW:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getMaxWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fW:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :goto_0
    const-wide/16 p1, 0x0

    cmpg-double v1, p3, p1

    if-gez v1, :cond_1

    .line 136
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result p1

    int-to-double p1, p1

    add-double/2addr p1, p3

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getMaxHeight()I

    move-result v0

    int-to-double v0, v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2

    .line 138
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getMaxHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    return-void

    .line 140
    :cond_2
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    double-to-int p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->e()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    const-string v1, "welcomeTutorialMinimized"

    .line 200
    invoke-virtual {p0, v1, p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->a(Ljava/io/Serializable;ZZ)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 201
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fY:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 202
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f12087b

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 6111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 205
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fY:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->e()V

    return-void
.end method

.method public final synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Z
    .locals 1

    .line 7217
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager$OnWidgetClickedListener;

    if-eqz p1, :cond_0

    .line 7218
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager$OnWidgetClickedListener;->a(Landroid/app/Activity;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public getTutorialProgress()F
    .locals 3

    .line 97
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "tutorialPagesNumber"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->d:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->getCurrentPage()Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k()V
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->e()V

    const-string v0, "welcomeTutorialMinimized"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 157
    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->a(Ljava/io/Serializable;ZZ)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 158
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fY:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 159
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f12087b

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 5111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final l()V
    .locals 6

    .line 103
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getChatHeads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 104
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v2

    .line 1153
    iget-object v2, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, v2, Lcom/facebook/rebound/e$a;->a:D

    .line 104
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v4

    .line 2153
    iget-object v4, v4, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v4, v4, Lcom/facebook/rebound/e$a;->a:D

    .line 104
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->a(DD)V

    const/16 v2, 0x8

    .line 105
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 6

    .line 110
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getChatHeads()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getChatHeads()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 112
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    move-object v2, v0

    check-cast v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->c(Z)V

    .line 114
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fW:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x1

    .line 3113
    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 115
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    .line 4113
    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 116
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final synthetic s_()V
    .locals 1

    .line 7181
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager$OnWidgetAddedListener;

    if-eqz v0, :cond_0

    .line 7182
    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager$OnWidgetAddedListener;->onWidgetAdded()V

    :cond_0
    return-void
.end method

.method public final setChatHeadToDefaultPosition$6fde7147(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setChatHeadToDefaultPosition(Z)V

    return-void
.end method

.method public setCloseButtons(II)V
    .locals 5

    .line 76
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;

    const v2, 0x7f120400

    .line 77
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$WelcomeTutorialWidgetManager$dymk9pxNYIIsNxDTLt5pAO9VaOY;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$WelcomeTutorialWidgetManager$dymk9pxNYIIsNxDTLt5pAO9VaOY;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;)V

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setChatHeadCloseButtonData(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;)V

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;

    const v2, 0x7f1202c1

    .line 80
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$WelcomeTutorialWidgetManager$B6CbIi0oP_dhjOCKvk12UoKqFxc;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$WelcomeTutorialWidgetManager$B6CbIi0oP_dhjOCKvk12UoKqFxc;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;)V

    invoke-direct {v1, v2, v4, v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setChatHeadCloseButtonData(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;)V

    .line 82
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getCloseButtonShadow()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e()V

    .line 85
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v0

    int-to-float p2, p2

    const v1, 0x3e99999a    # 0.3f

    mul-float v1, v1, p2

    float-to-int v1, v1

    int-to-float p1, p1

    const v2, 0x3f666666    # 0.9f

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setCenter(II)V

    .line 87
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e()V

    .line 88
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setCenter(II)V

    .line 90
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setOnWidgetClickedListener(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager$OnWidgetClickedListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager$OnWidgetClickedListener;

    return-void
.end method
