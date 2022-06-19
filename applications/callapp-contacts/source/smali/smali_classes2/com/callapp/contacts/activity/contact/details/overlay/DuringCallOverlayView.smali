.class public Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;
.super Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# static fields
.field public static final OVERLAY_Y_POS_DEFAULT_VALUE:I = -0x2710


# instance fields
.field private callData:Lcom/callapp/contacts/model/call/CallData;

.field private toolTipPopup:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;ZZ)V

    const p1, 0x7f0a0195

    .line 35
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private shouldShowTooltip()Z
    .locals 4

    .line 159
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->Q:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 164
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->P:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 169
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->O:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/16 v3, 0x14

    if-eq v0, v3, :cond_3

    const/16 v3, 0x32

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method private showTooltipIfNeeded()V
    .locals 5

    .line 139
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->shouldShowTooltip()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a093e

    .line 140
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a00ec

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0945

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120139

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;)V

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBottomLayoutResId()I
    .locals 1

    const v0, 0x7f0d0137

    return v0
.end method

.method getOrigin()Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
    .locals 1

    .line 122
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-object v0
.end method

.method protected getOverlayInitHeight()I
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070326

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    .locals 1

    .line 45
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->DURING_CALL_OVERLAY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-object v0
.end method

.method protected getStartYposition()I
    .locals 2

    .line 113
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->N:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 114
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getStartYposition()I

    move-result v0

    .line 115
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->N:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 117
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->N:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getTrackEventCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "Contact Details Overlay"

    return-object v0
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 3

    .line 127
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->finishViewContainer(Z)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->callData:Lcom/callapp/contacts/model/call/CallData;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->callData:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/phone/CallStateListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onCreate()V

    .line 62
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 64
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->O:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 65
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->showTooltipIfNeeded()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 97
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->toolTipPopup:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->isTooltipShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->toolTipPopup:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->a(Z)V

    .line 101
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Contact In-Call Overlay Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 3

    .line 70
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isFromNotification"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    .line 78
    sget-object v2, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->NEVER:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;

    if-eq v0, v2, :cond_1

    .line 79
    iget v0, v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;->duration:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->finishWithDelay(I)V

    .line 82
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 83
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallForPhone(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->callData:Lcom/callapp/contacts/model/call/CallData;

    if-nez p1, :cond_2

    .line 86
    const-class p1, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    const-string v0, "Overlay initialized without a call"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->finishViewContainer(Z)V

    return v1

    .line 90
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact In-Call Overlay Screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/manager/phone/CallStateListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->callData:Lcom/callapp/contacts/model/call/CallData;

    .line 1091
    invoke-virtual {p1, v0, v2, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onVerticalScrollEnded(I)V
    .locals 1

    .line 107
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->N:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 108
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->Q:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method
