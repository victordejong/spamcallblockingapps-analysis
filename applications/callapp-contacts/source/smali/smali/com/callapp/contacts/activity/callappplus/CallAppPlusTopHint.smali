.class public Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/viewcontroller/ViewController;


# instance fields
.field private final a:Landroid/view/View;

.field private b:Ljava/lang/Runnable;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;->b:Ljava/lang/Runnable;

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;->c:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d018c

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;->a:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint$1;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0957

    .line 1061
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a049d

    .line 1062
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a049c

    .line 1063
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a00d5

    .line 1064
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0496

    .line 1065
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1066
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const v6, 0x7f060088

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v5, 0x7f120190

    .line 1067
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f12018f

    .line 1068
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0601cc

    .line 1069
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f120097

    .line 1070
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    new-instance v2, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint$2;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint$2;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1077
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    const v7, 0x7f08009a

    const/4 v8, 0x0

    invoke-static {v3, v7, v2, v5, v8}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 1080
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v2

    const/4 v3, 0x3

    const v5, 0x7f0800b0

    if-eqz v2, :cond_0

    const v2, 0x7f0601f0

    .line 1081
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-static {v0, v5, v2, v7, v3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 1082
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0601ef

    .line 1085
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-static {v0, v5, v2, v6, v3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    const v0, 0x7f060244

    .line 1086
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1089
    :goto_0
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusTopHint$CyRpretdsoV4U1e2g2ASoidRJA0;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusTopHint$CyRpretdsoV4U1e2g2ASoidRJA0;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget-object p1, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusTopHint$8MEMslAP0GI--y3Y4bQbam9uaFU;->INSTANCE:Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusTopHint$8MEMslAP0GI--y3Y4bQbam9uaFU;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;->setOnClickAnimationEndAction(Ljava/lang/Runnable;)V

    .line 46
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "ViewPermissionToNotificationHint"

    const-string v2, "CallAppPlus"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a()V
    .locals 2

    .line 45
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 90
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    .line 91
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 92
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint$3;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;)V
    .locals 3

    .line 2050
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    .line 2051
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string v0, "Permissions"

    const-string v1, "ClickPermissionToNotificationHint"

    const-string v2, "CallAppPlus"

    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic lambda$8MEMslAP0GI--y3Y4bQbam9uaFU()V
    .locals 0

    invoke-static {}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;->a()V

    return-void
.end method

.method public static synthetic lambda$CyRpretdsoV4U1e2g2ASoidRJA0(Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private setOnClickAnimationEndAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$a(Lcom/callapp/contacts/activity/viewcontroller/ViewController;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$b(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)V

    return-void
.end method

.method public synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getContext(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getResources(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;->a:Landroid/view/View;

    return-object v0
.end method

.method public synthetic isViewShown()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$isViewShown(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Z

    move-result v0

    return v0
.end method
