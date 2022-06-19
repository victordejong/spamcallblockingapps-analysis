.class public final Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;
.super Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoResultListener;
.implements Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0002\u0008\u0003\u0018\u0000 S2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001SB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0008\u0010(\u001a\u00020)H\u0016J\u0008\u0010*\u001a\u00020)H\u0014J\u0008\u0010+\u001a\u00020,H\u0016J\u0008\u0010-\u001a\u0004\u0018\u00010.J\n\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0008\u00101\u001a\u00020)H\u0014J\u0008\u00102\u001a\u000203H\u0016J\u0008\u00104\u001a\u000203H\u0016J\u0010\u00105\u001a\u0002032\u0006\u00106\u001a\u00020\u0006H\u0016J\u0012\u00107\u001a\u0002032\u0008\u00108\u001a\u0004\u0018\u000109H\u0014J\u0008\u0010:\u001a\u000203H\u0016J\u0008\u0010;\u001a\u000203H\u0016J\u0010\u0010<\u001a\u0002032\u0006\u0010=\u001a\u00020)H\u0014J\u0016\u0010>\u001a\u0002032\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\u0010\u0010@\u001a\u0002032\u0006\u0010A\u001a\u00020\u001fH\u0017J \u0010B\u001a\u0002032\u0006\u0010C\u001a\u00020)2\u0006\u0010D\u001a\u00020)2\u0006\u0010E\u001a\u00020FH\u0016J\u0012\u0010G\u001a\u0002032\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0008\u0010J\u001a\u000203H\u0014J\u0010\u0010K\u001a\u0002032\u0006\u0010L\u001a\u00020%H\u0002J\u0010\u0010M\u001a\u0002032\u0006\u0010N\u001a\u00020%H\u0002J\u0012\u0010O\u001a\u0002032\u0008\u0010P\u001a\u0004\u0018\u00010QH\u0016J\u0008\u0010R\u001a\u00020%H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006T"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;",
        "Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoResultListener;",
        "()V",
        "addCustomFrame",
        "Landroid/view/View;",
        "getAddCustomFrame",
        "()Landroid/view/View;",
        "setAddCustomFrame",
        "(Landroid/view/View;)V",
        "gestureDetector",
        "Landroid/view/GestureDetector;",
        "getGestureDetector",
        "()Landroid/view/GestureDetector;",
        "setGestureDetector",
        "(Landroid/view/GestureDetector;)V",
        "personalCoverFragment",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;",
        "getPersonalCoverFragment",
        "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;",
        "setPersonalCoverFragment",
        "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;)V",
        "personalCoverImage",
        "Landroid/widget/ImageView;",
        "getPersonalCoverImage",
        "()Landroid/widget/ImageView;",
        "setPersonalCoverImage",
        "(Landroid/widget/ImageView;)V",
        "personalCoverUrlDataList",
        "",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
        "getPersonalCoverUrlDataList",
        "()Ljava/util/List;",
        "setPersonalCoverUrlDataList",
        "(Ljava/util/List;)V",
        "dispatchTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "getItemType",
        "",
        "getLayoutResourceId",
        "getLeftButtonPrefixText",
        "",
        "getPriceText",
        "Landroid/text/SpannableString;",
        "getPurchasePref",
        "Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;",
        "getStatusBarColor",
        "onBackPressed",
        "",
        "onBackToDefaultButtonClicked",
        "onChildViewAttachedToWindow",
        "view",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDownloadButtonClicked",
        "onDownloadedFinished",
        "onItemStoreAvailable",
        "timePassed",
        "onPersonalStoreItemDataChanged",
        "personalStoreItemUrlDataList",
        "onPersonalStoreItemItemSelected",
        "personalStoreItemUrlData",
        "onResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onUseButtonClicked",
        "storeItem",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
        "setActionBarCustomView",
        "setActionBarView",
        "isPersonalCoverExist",
        "setChooseImageButton",
        "isAnyVideoRingtone",
        "setTitle",
        "title",
        "",
        "showBackToDefaultButton",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final f:Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;


# instance fields
.field public e:Landroid/view/View;

.field private g:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/GestureDetector;

.field private k:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->f:Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;-><init>()V

    .line 55
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->COVER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    return-void
.end method

.method private final setActionBarView(Z)V
    .locals 6

    if-eqz p1, :cond_d

    .line 122
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getTopBarTitleType()Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    move-result-object v1

    const v2, 0x7f0d001e

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/util/TopBarUtils;->a(Landroid/app/Activity;Landroidx/appcompat/app/ActionBar;Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;I)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->b()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f0a0097

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->b()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    const v4, 0x7f0a0095

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 126
    :goto_1
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->isPurchased()Z

    move-result v0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_2

    .line 127
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-eqz v3, :cond_3

    const v0, 0x7f060244

    .line 128
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 129
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v3, :cond_5

    .line 130
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$1;-><init>(Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;Landroidx/appcompat/app/ActionBar;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :cond_6
    if-eqz v2, :cond_7

    .line 136
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v3, :cond_8

    .line 137
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    if-eqz p1, :cond_9

    .line 138
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    const v1, 0x7f0a06e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    :cond_9
    if-eqz v1, :cond_a

    const v0, 0x7f0601bd

    .line 140
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    if-eqz v1, :cond_b

    .line 141
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getPriceText()Landroid/text/SpannableString;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    if-eqz v2, :cond_c

    .line 142
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$2;-><init>(Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;Landroidx/appcompat/app/ActionBar;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void

    .line 150
    :cond_d
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getTopBarTitleType()Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    move-result-object v1

    const v2, 0x7f0d001d

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/util/TopBarUtils;->a(Landroid/app/Activity;Landroidx/appcompat/app/ActionBar;Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;I)Landroidx/appcompat/app/ActionBar;

    return-void
.end method

.method private final setChooseImageButton(Z)V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->e:Landroid/view/View;

    const-string v1, "addCustomFrame"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const v2, 0x7f0a00bc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 190
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->e:Landroid/view/View;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    const v3, 0x7f0a00bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 191
    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->e:Landroid/view/View;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    const v1, 0x7f0a06c6

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v3, "plusIcon"

    .line 193
    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const v4, 0x7f060244

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const-string v3, "textViewContainer"

    if-nez p1, :cond_3

    const p1, 0x7f0802b9

    .line 195
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f120088

    .line 197
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    new-instance p1, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$setChooseImageButton$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$setChooseImageButton$1;-><init>(Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;)V

    check-cast p1, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    goto :goto_0

    :cond_3
    const p1, 0x7f080479

    .line 205
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    new-instance p1, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$setChooseImageButton$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$setChooseImageButton$2;-><init>(Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;)V

    check-cast p1, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    .line 221
    :goto_0
    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method protected final a(I)V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    const v1, 0x7f0a0aa6

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    check-cast v2, Landroidx/fragment/app/Fragment;

    const-string v3, "PersonalStoreItemFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->b()I

    .line 236
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dC:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.personalCoverScreenFirstTime.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dB:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 242
    :cond_1
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a:Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f1200bb

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Activities.getString(R.s\u2026assign_description_cover)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080500

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 243
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dC:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 245
    :cond_2
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a(I)V

    return-void
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getSelectedStoreItemUrlData()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V
    .locals 5

    const-string v0, "personalStoreItemUrlData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getType()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    .line 306
    new-instance p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    const-string v4, "storeItem"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-direct {p1, v0, v1, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 4376
    iput-boolean v3, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 308
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 309
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->setChooseImageButton(Z)V

    return-void

    .line 293
    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object p1

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 2376
    iput-boolean v3, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 3359
    iput-boolean v3, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->s:Z

    .line 296
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 297
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->setChooseImageButton(Z)V

    return-void

    .line 301
    :cond_1
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object p1

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v0, v1, p1, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 3376
    iput-boolean v3, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 301
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 302
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->setChooseImageButton(Z)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "personalStoreItemUrlDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->h:Ljava/util/List;

    .line 266
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setVisibility(I)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getSelectedStoreItemUrlData()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    if-eqz v0, :cond_2

    .line 273
    new-instance v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12c

    sget-object v3, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->COVER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-direct {v1, v0, v2, v3}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;-><init>(Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V

    .line 274
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setVisibility(I)V

    .line 278
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->setActionBarView(Z)V

    return-void
.end method

.method public final bridge synthetic d(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 0

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->j:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 335
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->setActionBarView(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/ProgressCardView;->setVisibility(I)V

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->f()V

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 5

    .line 226
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 227
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f120251

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120615

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2111
    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->o_()V

    return-void
.end method

.method public final getItemType()I
    .locals 1

    .line 259
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->PERSONAL_COVER:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d003b

    return v0
.end method

.method public final getLeftButtonPrefixText()Ljava/lang/String;
    .locals 2

    const v0, 0x7f1202df

    .line 255
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activities.getString(R.string.enable_for)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPersonalCoverFragment()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    return-object v0
.end method

.method public final getPriceText()Landroid/text/SpannableString;
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    if-eqz v0, :cond_4

    .line 169
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cV:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cM:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getPrice()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 170
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cM:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Prefs.allStoreFree.get()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cV:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 171
    :goto_0
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getLeftButtonPrefixText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getPriceWithCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_3

    .line 173
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v4, 0x21

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    return-object v3

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPurchasePref()Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;
    .locals 1

    .line 316
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dB:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    return-object v0
.end method

.method public final getStatusBarColor()I
    .locals 1

    const v0, 0x7f060088

    .line 109
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onBackPressed()V
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->isPurchased()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a:Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getPriceText()Landroid/text/SpannableString;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->COVER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Landroid/app/Activity;Lcom/callapp/contacts/widget/ProgressCardView;Landroid/text/SpannableString;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V

    return-void

    .line 322
    :cond_2
    :goto_1
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->onBackPressed()V

    return-void

    .line 327
    :cond_3
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "source"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->d:Ljava/lang/String;

    :cond_0
    const p1, 0x7f0a00c5

    .line 86
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const-string v0, "ViewUtils.inflateViewIfN\u2026d.add_personal_viewstub))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->e:Landroid/view/View;

    if-nez p1, :cond_1

    const-string v0, "addCustomFrame"

    .line 87
    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    const v0, 0x7f08058d

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 89
    new-instance p1, Landroid/view/GestureDetector;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$onCreate$1;

    sget-object v3, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->MEDIUM:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    invoke-direct {v1, p0, v2, v3}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$onCreate$1;-><init>(Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    check-cast v1, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->j:Landroid/view/GestureDetector;

    const p1, 0x7f0a06a8

    .line 101
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->k:Landroid/widget/ImageView;

    const/4 p1, 0x1

    .line 103
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->showActionBar(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    :cond_2
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    const p1, 0x7f120720

    .line 113
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
