.class public Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;
.implements Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$CallRecorderPlayerEvents;
    }
.end annotation


# instance fields
.field private adPlaceHolder:Landroid/widget/FrameLayout;

.field private assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

.field private autoStartPlay:Z

.field private final backgroundColor:I

.field private final callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field private callRecorderPlayerEventsListener:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$CallRecorderPlayerEvents;

.field private contact:Lcom/callapp/contacts/model/contact/ContactData;

.field private currentAd:Ljava/lang/Object;

.field private durationText:Landroid/widget/TextView;

.field private firstTimeExperienceContainer:Landroid/view/View;

.field private multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

.field private nativeAdView:Landroid/view/View;

.field private onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private playButton:Landroid/widget/ImageView;

.field private final presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

.field private final presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

.field private final primaryColor:I

.field private rootView:Landroid/view/View;

.field private final secondaryText:I

.field private seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

.field private seenRecordDialogBefore:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/objectbox/CallRecorder;ZLcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$CallRecorderPlayerEvents;)V
    .locals 3

    .line 151
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 109
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    .line 111
    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$1;

    .line 112
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$1;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    .line 152
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 153
    iput-boolean p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->autoStartPlay:Z

    const p1, 0x7f0601cc

    .line 154
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->secondaryText:I

    const p1, 0x7f060088

    .line 155
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->primaryColor:I

    const p1, 0x7f060026

    .line 156
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->backgroundColor:I

    .line 157
    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorderPlayerEventsListener:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$CallRecorderPlayerEvents;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Landroid/view/View;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/model/objectbox/CallRecorder;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Landroid/widget/ImageView;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->setStarredRecorderIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/recorder/SeekBarManager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;I)I
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->getAdLayoutResourceId(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->clearAd()V

    return-void
.end method

.method static synthetic access$502(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->currentAd:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Landroid/view/View;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->nativeAdView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$602(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->nativeAdView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->backgroundColor:I

    return p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->adPlaceHolder:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->secondaryText:I

    return p0
.end method

.method private clearAd()V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->currentAd:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 551
    instance-of v1, v0, Lcom/mopub/mobileads/MoPubView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 552
    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    .line 553
    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 554
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 555
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    goto :goto_0

    .line 557
    :cond_0
    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    .line 558
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->nativeAdView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeAd;->clear(Landroid/view/View;)V

    .line 559
    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 560
    iput-object v2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->nativeAdView:Landroid/view/View;

    .line 562
    :goto_0
    iput-object v2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->currentAd:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private getAdLayoutResourceId(I)I
    .locals 0

    .line 251
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->getSmallCardAdLayoutResourceId(I)I

    move-result p1

    return p1
.end method

.method private getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    .locals 1

    .line 596
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CALL_RECORDER_POPUP:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-object v0
.end method

.method static synthetic lambda$showFirstTimeExperienceContainerIfNeeded$1(Landroid/view/View;)V
    .locals 2

    .line 492
    new-instance p0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/settings/SettingsActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "call_recorder_settings"

    const/4 v1, 0x1

    .line 493
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private setStarredRecorderIcon(Landroid/widget/ImageView;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const p2, 0x7f0803c0

    goto :goto_0

    :cond_0
    const p2, 0x7f0803bf

    .line 472
    :goto_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->primaryColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0a0444

    .line 330
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$7;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0481

    .line 338
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0921

    .line 339
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f060088

    .line 340
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 341
    new-instance v3, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    invoke-direct {v3}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;-><init>()V

    new-instance v4, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;

    invoke-direct {v4, p0, v1, v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1138
    iput-object v4, v3, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->c:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    .line 357
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a()Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    .line 358
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    const v0, 0x7f0a0244

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 361
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 362
    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$9;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$9;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02dd

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 369
    iget v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->secondaryText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    new-instance v1, Ljava/util/Date;

    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getDate()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/callapp/contacts/util/date/DateUtils;->c(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0357

    .line 371
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->durationText:Landroid/widget/TextView;

    .line 372
    iget v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->secondaryText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 374
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->durationText:Landroid/widget/TextView;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    cmp-long v7, v0, v5

    if-eqz v7, :cond_0

    invoke-static {v4, v0, v1}, Lcom/callapp/contacts/recorder/CallRecorderUtils;->a(IJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0333

    .line 375
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a018a

    .line 376
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 377
    iget v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a06c2

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 379
    iget v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a07f7

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 381
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->primaryColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 382
    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$10;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$10;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f2

    .line 388
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 389
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->primaryColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 390
    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0a85

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 420
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->primaryColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 421
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->isUploaded()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 422
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a03e2

    .line 424
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 425
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getStarred()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->setStarredRecorderIcon(Landroid/widget/ImageView;Z)V

    .line 426
    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$12;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$12;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06bf

    .line 434
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->playButton:Landroid/widget/ImageView;

    .line 435
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->primaryColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 436
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$13;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$13;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06ed

    .line 445
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$14;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$14;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07d4

    .line 459
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 460
    new-instance v1, Lcom/callapp/contacts/recorder/SeekBarManager;

    iget-object v4, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    const-string v5, "From files screen"

    invoke-direct {v1, v0, p0, v4, v5}, Lcom/callapp/contacts/recorder/SeekBarManager;-><init>(Landroid/widget/SeekBar;Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;Lcom/callapp/contacts/model/objectbox/CallRecorder;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    .line 461
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 462
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 463
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->autoStartPlay:Z

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->b()V

    :cond_2
    const v0, 0x7f0a0409

    .line 466
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->firstTimeExperienceContainer:Landroid/view/View;

    .line 468
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showFirstTimeExperienceContainerIfNeeded()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->firstTimeExperienceContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->seenRecordDialogBefore:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->seenRecordDialogBefore:Z

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->firstTimeExperienceContainer:Landroid/view/View;

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 480
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->firstTimeExperienceContainer:Landroid/view/View;

    const v1, 0x7f0a040a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f12070d

    .line 481
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601ec

    .line 482
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->firstTimeExperienceContainer:Landroid/view/View;

    const v1, 0x7f0a01c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1201a9

    .line 484
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f060088

    .line 485
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderPlayer$nix4E6ncfXAsT6E2gttmflZJbUU;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderPlayer$nix4E6ncfXAsT6E2gttmflZJbUU;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->firstTimeExperienceContainer:Landroid/view/View;

    const v1, 0x7f0a0219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1206f2

    .line 489
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601cc

    .line 490
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    sget-object v1, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderPlayer$fS_as6gq1tSYlpr-3FvoM1Ha87A;->INSTANCE:Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderPlayer$fS_as6gq1tSYlpr-3FvoM1Ha87A;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 238
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Call recorder player screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-super {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismiss()V

    return-void
.end method

.method protected getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "CallRecorderContactExperiments"

    return-object v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 501
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->legacyDialogs:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method protected getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "CallRecorderContactPreferences"

    return-object v0
.end method

.method protected getViewBinder(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
    .locals 0

    .line 247
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$showFirstTimeExperienceContainerIfNeeded$0$DialogCallRecorderPlayer(Landroid/view/View;)V
    .locals 1

    .line 486
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->firstTimeExperienceContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAdClick()V
    .locals 0

    .line 325
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->dismiss()V

    return-void
.end method

.method protected onAdLoaded(Landroid/view/View;)V
    .locals 2

    .line 296
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onBannerAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 1

    .line 264
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->currentAd:Ljava/lang/Object;

    if-ne p2, p1, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$4;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$4;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Lcom/mopub/mobileads/MoPubView;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 507
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    invoke-static {p2, p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 511
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result p1

    sget p2, Lcom/callapp/contacts/model/DataChangedInfo;->POSITION_ALL:I

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object p1

    .line 515
    sget-object p2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p2}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result p2

    sget v0, Lcom/callapp/contacts/model/DataChangedInfo;->POSITION_ALL:I

    const/4 v2, 0x4

    invoke-static {p2, v0, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object p2

    .line 518
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    .line 2091
    invoke-virtual {v0, v2, p1, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 519
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    .line 3091
    invoke-virtual {p1, v0, p2, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public onDialogDismissed(Landroid/content/DialogInterface;)V
    .locals 2

    .line 525
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 526
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->adPlaceHolder:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->b()V

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b()V

    .line 536
    :cond_2
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->clearAd()V

    .line 537
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz v0, :cond_3

    .line 538
    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->a()V

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    if-eqz v0, :cond_4

    .line 541
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a()V

    .line 543
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    if-eqz v0, :cond_5

    .line 544
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onDestroy()V

    .line 546
    :cond_5
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogDismissed(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialClicked(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialDismissed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public synthetic onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialShown(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onNativeAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 1

    .line 281
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$5;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$5;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Lcom/mopub/nativeads/NativeAd;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlayerPaused()V
    .locals 4

    .line 586
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->playButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->primaryColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const v2, 0x7f080461

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 4

    .line 592
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->playButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->primaryColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const v2, 0x7f080461

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public onPlayerStarted()V
    .locals 4

    .line 574
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->playButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->primaryColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const v2, 0x7f080445

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 576
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorderPlayerEventsListener:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$CallRecorderPlayerEvents;

    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$CallRecorderPlayerEvents;->a()V

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->showFirstTimeExperienceContainerIfNeeded()V

    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 169
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v0, "Call recorder player screen"

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const p2, 0x7f0d00c9

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->rootView:Landroid/view/View;

    .line 172
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fu:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->seenRecordDialogBefore:Z

    .line 173
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fu:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 174
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->rootView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->setupViews(Landroid/view/View;)V

    .line 176
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->rootView:Landroid/view/View;

    const p2, 0x7f0a00b1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->adPlaceHolder:Landroid/widget/FrameLayout;

    .line 177
    new-instance p1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$2;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 192
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->adPlaceHolder:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 193
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 194
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->seenRecordDialogBefore:Z

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->getPreferencesRemoteConfigName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getRefreshInterval()I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 197
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->isRetryAfterFail()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 198
    :goto_1
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    mul-float v0, v0, p2

    sub-float/2addr p1, v0

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->b(F)F

    move-result v7

    .line 199
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object p1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->r:Ljava/lang/String;

    sget-object p2, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->h:Ljava/lang/String;

    .line 200
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    new-instance v6, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$3;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$3;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V

    move-object v2, p0

    .line 199
    invoke-static/range {v1 .. v7}, Lcom/callapp/contacts/util/ads/loaders/AdLoaderFactory;->a(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Landroid/util/Pair;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    .line 217
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a()V

    .line 219
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 220
    sget-object p2, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p1, p2}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 222
    :cond_3
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getContactId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p2

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getContactId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz p2, :cond_4

    .line 225
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    :cond_4
    move-object v1, p1

    .line 228
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->callRecorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getContactId()J

    move-result-wide v3

    sget-object v6, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object p1

    .line 229
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 230
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 231
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 233
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public pausePlayer()V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->d()V

    :cond_0
    return-void
.end method

.method public seekBarUpdated(II)V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->durationText:Landroid/widget/TextView;

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lcom/callapp/contacts/recorder/CallRecorderUtils;->a(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 162
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 163
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method
