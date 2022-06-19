.class public Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Runnable;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/RelativeLayout;

.field private final e:Landroid/view/View;

.field private final f:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field private final g:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;IFLjava/lang/Runnable;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 7

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d018f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->e:Landroid/view/View;

    .line 46
    iput-object p8, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->f:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p8

    const v0, 0x7f07005e

    invoke-virtual {p8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p8

    const/high16 v0, 0x40000000    # 2.0f

    div-float v2, p8, v0

    sub-float/2addr p5, p8

    div-float/2addr p5, v0

    sub-float p5, v2, p5

    float-to-int p5, p5

    float-to-int p8, v2

    .line 50
    iput-object p6, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->a:Ljava/lang/Runnable;

    const v0, 0x7f0a0154

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->b:Landroid/widget/ImageView;

    const v2, 0x7f0a0156

    .line 52
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->c:Landroid/widget/ImageView;

    const v3, 0x7f0a0150

    .line 53
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->d:Landroid/widget/RelativeLayout;

    const v5, 0x7f0a0157

    .line 54
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 55
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p3

    const v6, 0x7f060111

    if-eqz p3, :cond_0

    const p3, 0x7f06010e

    .line 57
    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    if-eqz p6, :cond_1

    .line 63
    new-instance p3, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/-$$Lambda$CollapsingButtonViewController$-3E131VXHbW7CIAIIfutZF_yuu4;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/-$$Lambda$CollapsingButtonViewController$-3E131VXHbW7CIAIIfutZF_yuu4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 70
    :cond_1
    sget-object p3, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/-$$Lambda$CollapsingButtonViewController$mIR-UVYreVY7G4rzjF6CN3FTMf0;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/-$$Lambda$CollapsingButtonViewController$mIR-UVYreVY7G4rzjF6CN3FTMf0;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :goto_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p4, p1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    invoke-static {v2, p2, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    int-to-float p1, p8

    .line 80
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setPivotX(F)V

    int-to-float p1, p5

    .line 81
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 82
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result p1

    if-nez p1, :cond_2

    .line 83
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 88
    :cond_2
    iput-object p7, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->g:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;

    .line 1124
    invoke-virtual {p7}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->getRootView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0152

    .line 1125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 1126
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070172

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 1127
    new-instance p4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p4, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x6

    .line 1128
    invoke-virtual {p4, p3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p3, 0xb

    .line 1129
    invoke-virtual {p4, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p3, 0x15

    .line 1130
    invoke-virtual {p4, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 p3, 0x41400000    # 12.0f

    .line 1131
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    const/4 p5, 0x0

    invoke-virtual {p4, p5, p5, p3, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1132
    invoke-virtual {p1, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    invoke-virtual {v4, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const p1, 0x7f0601a2

    .line 1134
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 90
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->setScale(F)V

    return-void
.end method

.method private static synthetic a(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 71
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 72
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const-string v0, "Stop that!"

    const/16 v1, 0x50

    .line 1206
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->c()V

    .line 66
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 67
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->a()V

    return-void
.end method

.method public static synthetic lambda$-3E131VXHbW7CIAIIfutZF_yuu4(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$mIR-UVYreVY7G4rzjF6CN3FTMf0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->c()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->g:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->a()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public getDataType()Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->f:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->e:Landroid/view/View;

    return-object v0
.end method

.method public setScale(F)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->g:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->b:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
