.class public Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/viewcontroller/ViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->h:Z

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0189

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->i:Landroid/view/View;

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a04f8

    .line 47
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->b:Landroid/view/View;

    const p2, 0x7f0a04f5

    .line 48
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->c:Landroid/widget/TextView;

    const v0, 0x7f0a04f4

    .line 49
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->d:Landroid/widget/TextView;

    const v1, 0x7f0a04f3

    .line 50
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->e:Landroid/widget/TextView;

    const v2, 0x7f0a016c

    .line 51
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a:Landroid/widget/TextView;

    const v3, 0x7f0a0172

    .line 52
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->f:Landroid/widget/TextView;

    const v4, 0x7f0a023a

    .line 53
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->g:Landroid/view/View;

    const/4 v5, 0x0

    .line 55
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 56
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    const p1, 0x7f12017e

    .line 57
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f12017d

    .line 58
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    const p1, 0x7f12017c

    .line 60
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    const p1, 0x7f1201e3

    .line 62
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    const p1, 0x7f120354

    .line 64
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 66
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 67
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    .line 68
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->i:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 69
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "Permissions"

    const-string v0, "Call Screen Theme"

    const-string v1, "Banner View Shown"

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance p1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance p1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->h:Z

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->i:Landroid/view/View;

    return-object p0
.end method

.method public static c()Z
    .locals 8

    .line 152
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->du:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dF:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    .line 1164
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1165
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xa

    if-lt v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 2158
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dD:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    .line 2159
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v4}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    :cond_2
    return v3

    :cond_3
    return v1
.end method


# virtual methods
.method public synthetic a(I)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$a(Lcom/callapp/contacts/activity/viewcontroller/ViewController;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 9

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x6

    new-array v4, v0, [Landroid/view/View;

    .line 125
    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->b:Landroid/view/View;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->c:Landroid/widget/TextView;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->d:Landroid/widget/TextView;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->e:Landroid/widget/TextView;

    const/4 v7, 0x3

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->f:Landroid/widget/TextView;

    const/4 v7, 0x4

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a:Landroid/widget/TextView;

    const/4 v7, 0x5

    aput-object v5, v4, v7

    :goto_0
    if-ge v6, v0, :cond_0

    .line 128
    aget-object v5, v4, v6

    .line 129
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v7, 0xb4

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
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

.method public getListener()Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->j:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;

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

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->i:Landroid/view/View;

    return-object v0
.end method

.method public synthetic isViewShown()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$isViewShown(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->j:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;

    return-void
.end method
