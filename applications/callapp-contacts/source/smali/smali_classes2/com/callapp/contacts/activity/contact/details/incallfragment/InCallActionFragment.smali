.class public Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;
.super Lcom/callapp/contacts/activity/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/view/ViewStub;

.field private i:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

.field private j:Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private m:Lcom/google/android/exoplayer2/m;

.field private n:Ljava/lang/String;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    const/4 v1, 0x0

    .line 300
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 301
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 300
    invoke-virtual {p0, v2, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 303
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    .line 302
    invoke-virtual {p0, v1, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 304
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->buildDrawingCache(Z)V

    .line 305
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View$OnTouchListener;
    .locals 8

    .line 338
    new-instance v7, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v7
.end method

.method public static a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 96
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;-><init>()V

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "phone"

    .line 98
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a()V
    .locals 4

    .line 436
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ho:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ho:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->q:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$6;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    .line 450
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ho:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x1

    .line 6039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;I)V
    .locals 3

    .line 6414
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    const v1, 0x7f07036d

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    .line 6415
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->s:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 6421
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->r:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6429
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->o:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6430
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 6422
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a()V

    .line 6423
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->o:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6424
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->o:Landroid/widget/TextView;

    const v0, 0x7f120528

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6425
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->o:Landroid/widget/TextView;

    const v0, 0x7f0804d8

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 6426
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->o:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void

    .line 6416
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a()V

    .line 6417
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->o:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6418
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->o:Landroid/widget/TextView;

    const v0, 0x7f120526

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6419
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->o:Landroid/widget/TextView;

    const v0, 0x7f080432

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 6420
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->o:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;ILjava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->setSimId(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->s:Z

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->r:Landroid/view/View;

    return-object p0
.end method

.method private synthetic b()V
    .locals 2

    .line 190
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->muteRingerIfNeeded()V

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;->onActionSelected(I)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->l:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-object p0
.end method

.method private synthetic c()V
    .locals 2

    .line 184
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->muteRingerIfNeeded()V

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;->onActionSelected(I)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->i:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->p:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic lambda$R2jDfXAgnNFJbUzsDJSxoBuVDoU(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->b()V

    return-void
.end method

.method public static synthetic lambda$qFIpVWHQBkUbWF-x_g9cxrGmP_0(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->c()V

    return-void
.end method

.method private setSimId(ILjava/lang/String;)V
    .locals 3

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId(Ljava/lang/Integer;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->g:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->h:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->g:Landroid/widget/LinearLayout;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->g:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0367

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 126
    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager;->b(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0363

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f060244

    .line 128
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->f:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/callapp/framework/phone/PhoneNumberUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->du:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f06008a

    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    .line 136
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->g:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 137
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->g:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d010f

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 110
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 112
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnActionDetected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a074f

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->i:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    const p2, 0x7f0a04e1

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->b:Landroid/widget/ImageView;

    .line 153
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;->getPlayerView()Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->l:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/16 p3, 0x8

    .line 154
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    const p2, 0x7f0a06ac

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->e:Landroid/widget/TextView;

    const v0, 0x7f060244

    .line 156
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a06aa

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->f:Landroid/widget/TextView;

    const p2, 0x7f0a04ed

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->r:Landroid/view/View;

    const p2, 0x7f0a04e3

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a:Landroid/widget/ImageView;

    const p2, 0x7f0a0368

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->h:Landroid/view/ViewStub;

    const p2, 0x7f0a00e0

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 163
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 165
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isSingleButtonSetResource()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const v3, 0x7f0a023b

    .line 168
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    .line 164
    invoke-static {v2, v1, p2, v3, v4}, Lcom/callapp/contacts/activity/contact/details/incallfragment/AnsweringMethodViewControllerFactory;->a(ILcom/callapp/contacts/activity/marketplace/ButtonSet;Landroid/view/ViewGroup;Lcom/callapp/contacts/widget/DrawingViewWithCallback;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;)Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->j:Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;

    const p2, 0x7f0a050a

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f1203c4

    .line 171
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a06ae

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->o:Landroid/widget/TextView;

    .line 173
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f0a0a96

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->p:Landroid/widget/LinearLayout;

    const v1, 0x7f0a08e7

    .line 175
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->q:Landroid/widget/TextView;

    const v1, 0x7f1203c5

    .line 176
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p2, 0x7f0a04e2

    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/ImageView;

    const p2, 0x7f0a04e4

    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f0a0a74

    .line 180
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/widget/TextView;

    const p3, 0x7f0a0436

    .line 181
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->b:Landroid/widget/ImageView;

    .line 182
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 183
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120174

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$InCallActionFragment$qFIpVWHQBkUbWF-x_g9cxrGmP_0;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$InCallActionFragment$qFIpVWHQBkUbWF-x_g9cxrGmP_0;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)V

    move-object v1, p0

    move-object v4, v7

    .line 181
    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p3, 0x7f0a0437

    .line 187
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a:Landroid/widget/ImageView;

    .line 188
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 189
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12066e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$InCallActionFragment$R2jDfXAgnNFJbUzsDJSxoBuVDoU;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$InCallActionFragment$R2jDfXAgnNFJbUzsDJSxoBuVDoU;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)V

    move-object v4, p0

    move-object v6, p2

    .line 187
    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View$OnTouchListener;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f0a0195

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 196
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->j:Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;->a()V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->j:Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;

    .line 322
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->m:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Lcom/google/android/exoplayer2/m;->w()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->l:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_2

    .line 4130
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->l:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 5130
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Landroid/widget/FrameLayout;

    .line 328
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->l:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 333
    :cond_2
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 203
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 204
    new-instance p1, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {p1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 205
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 206
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d:Ljava/lang/String;

    .line 207
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 208
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1406
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1407
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1408
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1409
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    const/16 v0, 0x1f4

    .line 212
    :try_start_0
    invoke-static {p1, v0}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v0

    .line 213
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->du:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dv:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    :cond_1
    sget-object v2, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0, v1}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->b(Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->n:Ljava/lang/String;
    :try_end_0
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 218
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isNotificationListenerServiceSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 220
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->r:Landroid/view/View;

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$1;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$1;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;)V

    sget v3, Lcom/callapp/contacts/util/glide/GlideUtils;->a:I

    sget v4, Lcom/callapp/contacts/util/glide/GlideUtils;->b:I

    .line 227
    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    .line 2376
    iput-boolean v1, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 227
    invoke-virtual {v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 228
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->setVideoRingtoneMode(Z)V

    .line 3269
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->m:Lcom/google/android/exoplayer2/m;

    if-nez v1, :cond_4

    .line 3270
    invoke-static {}, Lcom/callapp/contacts/util/video/CallAppExoPlayerFactory;->a()Lcom/google/android/exoplayer2/m;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->m:Lcom/google/android/exoplayer2/m;

    .line 3271
    new-instance v2, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$3;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$3;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/ac$a;)V

    .line 3283
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->l:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    .line 3284
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->l:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setShutterBackgroundColor(I)V

    .line 3285
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->l:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->m:Lcom/google/android/exoplayer2/m;

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/ac;)V

    .line 3286
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->l:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$4;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)V

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setErrorMessageProvider(Lcom/google/android/exoplayer2/util/i;)V

    .line 3293
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->l:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->requestFocus()Z

    .line 3294
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->m:Lcom/google/android/exoplayer2/m;

    invoke-static {}, Lcom/callapp/contacts/util/video/VideoCacheManager;->get()Lcom/callapp/contacts/util/video/VideoCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/util/video/VideoCacheManager;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/r;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/source/r;)V

    goto :goto_2

    .line 231
    :cond_5
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->setVideoRingtoneMode(Z)V

    .line 232
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->r:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :goto_2
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    if-eqz p2, :cond_6

    .line 235
    invoke-interface {p2, v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;->onInCallActionFragmentCreated(Z)V

    .line 237
    :cond_6
    new-instance p2, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;Lcom/callapp/framework/phone/Phone;)V

    .line 263
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_7
    return-void
.end method

.method public setVideoRingtoneMode(Z)V
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f060244

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f06008a

    invoke-static {v2, v3}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->b:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x7f060088

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v4

    :goto_1
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 313
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v3}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result p1

    :goto_2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
