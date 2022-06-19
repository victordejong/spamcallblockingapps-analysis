.class public Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;
.super Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;ZZ)V

    const p1, 0x7f060088

    .line 36
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    const v0, 0x7f0a0147

    .line 37
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080518

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a01a1

    .line 39
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 41
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05f1

    .line 60
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 62
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$2;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getBottomLayoutResId()I
    .locals 1

    const v0, 0x7f0d0131

    return v0
.end method

.method getOrigin()Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
    .locals 1

    .line 103
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CLIPBOARD:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-object v0
.end method

.method protected getOverlayInitHeight()I
    .locals 2

    .line 81
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07032a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    .locals 1

    .line 31
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CLIPBOARD_AUTO_SEARCH_OVERLAY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-object v0
.end method

.method protected getTrackEventCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "Clipboard Auto Search Overlay"

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .line 97
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Clipboard Search Overlay Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onNewIntent(Landroid/content/Intent;)Z

    move-result p1

    .line 87
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Clipboard Search Overlay Screen"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 89
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    .line 90
    iget v0, v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->duration:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->finishWithDelay(I)V

    :cond_0
    return p1
.end method
