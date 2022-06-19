.class public final Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;
.super Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoResultListener;
.implements Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\r\n\u0002\u0008\u0002\u0018\u0000 R2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001RB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020&H\u0014J\u0008\u0010(\u001a\u00020)H\u0016J\u0008\u0010*\u001a\u0004\u0018\u00010+J\n\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0008\u0010.\u001a\u00020/H\u0016J\u0008\u00100\u001a\u00020/H\u0016J\u0012\u00101\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u000103H\u0014J\u0010\u00104\u001a\u00020/2\u0006\u00105\u001a\u00020\u0006H\u0016J\u0012\u00106\u001a\u00020/2\u0008\u00107\u001a\u0004\u0018\u000108H\u0014J\u0008\u00109\u001a\u00020/H\u0016J\u0008\u0010:\u001a\u00020/H\u0016J\u0010\u0010;\u001a\u00020/2\u0006\u0010<\u001a\u00020&H\u0014J\u0016\u0010=\u001a\u00020/2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0016J\u0010\u0010>\u001a\u00020/2\u0006\u0010?\u001a\u00020\u0013H\u0017J \u0010@\u001a\u00020/2\u0006\u0010A\u001a\u00020&2\u0006\u0010B\u001a\u00020&2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010E\u001a\u00020/2\u0006\u0010F\u001a\u00020GH\u0016J\u0012\u0010H\u001a\u00020/2\u0008\u0010F\u001a\u0004\u0018\u00010GH\u0016J\u0008\u0010I\u001a\u00020/H\u0014J\u0010\u0010J\u001a\u00020/2\u0006\u0010K\u001a\u00020\"H\u0002J\u0010\u0010L\u001a\u00020/2\u0006\u0010M\u001a\u00020\"H\u0002J\u0010\u0010N\u001a\u00020/2\u0006\u00102\u001a\u000203H\u0014J\u0012\u0010O\u001a\u00020/2\u0008\u0010P\u001a\u0004\u0018\u00010QH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0008\"\u0004\u0008\u001a\u0010\nR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006S"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;",
        "Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;",
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
        "personalStoreItemUrlDataList",
        "",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
        "getPersonalStoreItemUrlDataList",
        "()Ljava/util/List;",
        "setPersonalStoreItemUrlDataList",
        "(Ljava/util/List;)V",
        "recyclerviewContainer",
        "getRecyclerviewContainer",
        "setRecyclerviewContainer",
        "videoRingtoneFragment",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;",
        "getVideoRingtoneFragment",
        "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;",
        "setVideoRingtoneFragment",
        "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;)V",
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
        "onBackPressed",
        "",
        "onBackToDefaultButtonClicked",
        "onButtonSetPicked",
        "buttonSet",
        "Lcom/callapp/contacts/activity/marketplace/ButtonSet;",
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
        "onPersonalStoreItemItemSelected",
        "personalStoreItemUrlData",
        "onResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onStoreItemPurchased",
        "storeItem",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
        "onUseButtonClicked",
        "setActionBarCustomView",
        "setActionBarView",
        "isVideoExist",
        "setChooseImageButton",
        "isAnyVideoRingtone",
        "setRightIconState",
        "setTitle",
        "title",
        "",
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
.field public static final n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;


# instance fields
.field public m:Landroid/view/View;

.field private o:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/view/GestureDetector;

.field private r:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;-><init>()V

    .line 59
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->o:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    return-void
.end method

.method private final setActionBarView(Z)V
    .locals 6

    if-eqz p1, :cond_d

    .line 125
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getTopBarTitleType()Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    move-result-object v1

    const v2, 0x7f0d001e

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/util/TopBarUtils;->a(Landroid/app/Activity;Landroidx/appcompat/app/ActionBar;Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;I)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 127
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

    .line 128
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

    .line 129
    :goto_1
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isPurchased()Z

    move-result v0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_2

    .line 130
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-eqz v3, :cond_3

    const v0, 0x7f060244

    .line 131
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 132
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v3, :cond_5

    .line 133
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$1;-><init>(Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;Landroidx/appcompat/app/ActionBar;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :cond_6
    if-eqz v2, :cond_7

    .line 139
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v3, :cond_8

    .line 140
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    if-eqz p1, :cond_9

    .line 141
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

    .line 143
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    if-eqz v1, :cond_b

    .line 144
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getPriceText()Landroid/text/SpannableString;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    if-eqz v2, :cond_c

    .line 145
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$2;-><init>(Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;Landroidx/appcompat/app/ActionBar;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void

    .line 153
    :cond_d
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getTopBarTitleType()Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    move-result-object v1

    const v2, 0x7f0d001d

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/util/TopBarUtils;->a(Landroid/app/Activity;Landroidx/appcompat/app/ActionBar;Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;I)Landroidx/appcompat/app/ActionBar;

    return-void
.end method

.method private final setChooseImageButton(Z)V
    .locals 6

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->m:Landroid/view/View;

    const-string v1, "addCustomFrame"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const v2, 0x7f0a00bc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 187
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->m:Landroid/view/View;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    const v3, 0x7f0a00bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 188
    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->m:Landroid/view/View;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    const v1, 0x7f0a06c6

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v3, "plusIcon"

    .line 190
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

    .line 192
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f120089

    .line 194
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    new-instance p1, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setChooseImageButton$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setChooseImageButton$1;-><init>(Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;)V

    check-cast p1, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    goto :goto_0

    :cond_3
    const p1, 0x7f080479

    .line 202
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    new-instance p1, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setChooseImageButton$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setChooseImageButton$2;-><init>(Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;)V

    check-cast p1, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    .line 217
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

    .line 230
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->o:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    const v1, 0x7f0a0aa6

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->o:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    check-cast v2, Landroidx/fragment/app/Fragment;

    const-string v3, "PersonalStoreItemFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->b()I

    .line 233
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dt:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.personalCallScreenFirstTime.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dv:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 239
    :cond_1
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a:Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f1200ba

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Activities.getString(R.string.assign_description)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0804ff

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 240
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dt:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 242
    :cond_2
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a(I)V

    return-void
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->o:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->o:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getSelectedStoreItemUrlData()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/callapp/contacts/activity/marketplace/ButtonSet;)V
    .locals 1

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/ButtonSet;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V
    .locals 5

    const-string v0, "personalStoreItemUrlData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getType()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x64

    if-eq v0, v1, :cond_5

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    .line 322
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/video/VideoCacheManager;->get()Lcom/callapp/contacts/util/video/VideoCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getThemeDownloadUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/video/VideoCacheManager;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/r;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/source/r;)V

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/google/android/exoplayer2/m;->q()V

    goto :goto_1

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/callapp/contacts/util/video/VideoCacheManager;->get()Lcom/callapp/contacts/util/video/VideoCacheManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/util/video/VideoCacheManager;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/r;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/source/r;)V

    .line 312
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/google/android/exoplayer2/m;->q()V

    .line 313
    :cond_4
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->setChooseImageButton(Z)V

    return-void

    .line 317
    :cond_5
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->k:I

    invoke-virtual {p0, v2, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a(ZI)V

    .line 318
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object p1

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v0, v1, p1, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 1376
    iput-boolean v3, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 318
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 324
    :cond_6
    :goto_1
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->setChooseImageButton(Z)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;)V
    .locals 3

    const-string v0, "storeItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;)V

    .line 331
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->p:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", - Enable button - after Add personal store item"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 334
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", - Enable button - before Add personal store item"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Personal Store Item"

    const-string v2, "Button clicked"

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 0

    .line 55
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;)V

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

    .line 281
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->p:Ljava/util/List;

    .line 283
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setVisibility(I)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->o:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getSelectedStoreItemUrlData()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    if-eqz v0, :cond_2

    .line 290
    new-instance v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getThemeDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12c

    sget-object v3, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-direct {v1, v0, v2, v3}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;-><init>(Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V

    .line 291
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setVisibility(I)V

    .line 295
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->setActionBarView(Z)V

    return-void
.end method

.method public final bridge synthetic d(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 0

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->r:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->q:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->setActionBarView(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/ProgressCardView;->setVisibility(I)V

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f()V

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final getItemType()I
    .locals 1

    .line 275
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d003a

    return v0
.end method

.method public final getLeftButtonPrefixText()Ljava/lang/String;
    .locals 2

    const v0, 0x7f1202df

    .line 271
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activities.getString(R.string.enable_for)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPriceText()Landroid/text/SpannableString;
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    if-eqz v0, :cond_4

    .line 166
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cU:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

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
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getPrice()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 167
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

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cU:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

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

    .line 168
    :goto_0
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getLeftButtonPrefixText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getPriceWithCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_3

    .line 170
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

    .line 341
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dv:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    return-object v0
.end method

.method public final getVideoRingtoneFragment()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->o:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    return-object v0
.end method

.method public final onBackPressed()V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    if-eqz v0, :cond_3

    .line 346
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isPurchased()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->p:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 349
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a:Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getPriceText()Landroid/text/SpannableString;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Landroid/app/Activity;Lcom/callapp/contacts/widget/ProgressCardView;Landroid/text/SpannableString;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V

    return-void

    .line 347
    :cond_2
    :goto_1
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->onBackPressed()V

    return-void

    .line 352
    :cond_3
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 86
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "source"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->d:Ljava/lang/String;

    :cond_0
    const v0, 0x7f0a00c5

    .line 91
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const-string v1, "ViewUtils.inflateViewIfN\u2026d.add_personal_viewstub))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->m:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v1, "addCustomFrame"

    .line 92
    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    const v1, 0x7f08058d

    const v2, 0x7f060088

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->o:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    const-string v1, "EXTRA_CONTACT_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->setContactIdChooseVideoOnStart(Ljava/lang/String;)V

    const-string v0, "EXTRA_START_CHOOSE"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Landroid/net/Uri;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->o:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->setChooseVideoOnStart(Landroid/net/Uri;)V

    .line 99
    :cond_3
    new-instance p1, Landroid/view/GestureDetector;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$onCreate$2;

    sget-object v2, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->MEDIUM:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    invoke-direct {v1, p0, v3, v2}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$onCreate$2;-><init>(Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    check-cast v1, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->q:Landroid/view/GestureDetector;

    const p1, 0x7f0a0743

    .line 111
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->r:Landroid/view/View;

    return-void
.end method

.method protected final setRightIconState(Lcom/callapp/contacts/activity/marketplace/ButtonSet;)V
    .locals 2

    const-string v0, "buttonSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setRightIconState$1$1$1;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setRightIconState$1$1$1;-><init>(Lcom/callapp/contacts/widget/ProgressCardView;)V

    .line 257
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    const p1, 0x7f120720

    .line 116
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
