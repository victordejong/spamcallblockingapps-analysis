.class public Lcom/callapp/contacts/activity/contact/details/PostCallActivity;
.super Lcom/callapp/contacts/util/BaseTransparentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;
    }
.end annotation


# static fields
.field public static final EXTRA_IS_BLOCKED:Ljava/lang/String; = "isBlocked"

.field public static final EXTRA_IS_SPAMMER:Ljava/lang/String; = "isSpammer"

.field public static final EXTRA_POST_CALL_DATA:Ljava/lang/String; = "postCallData"


# instance fields
.field private assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

.field private contact:Lcom/callapp/contacts/model/contact/ContactData;

.field private final eventBus:Lcom/callapp/contacts/event/bus/EventBus;

.field private finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

.field presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

.field private final presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

.field private tint:Landroid/view/View;

.field private topBarContainer:Landroid/widget/FrameLayout;

.field private topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->POST_CALL_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    .line 69
    new-instance v0, Lcom/callapp/contacts/event/bus/EventBus;

    invoke-direct {v0}, Lcom/callapp/contacts/event/bus/EventBus;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    .line 77
    new-instance v1, Lcom/callapp/contacts/manager/MainThreadTimer;

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$1;-><init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V

    invoke-direct {v1, v2}, Lcom/callapp/contacts/manager/MainThreadTimer;-><init>(Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    .line 107
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$2;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->POST_CALL_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-direct {v1, p0, v0, v2}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$2;-><init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Lcom/callapp/contacts/event/bus/EventBus;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->topBarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->tint:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Lcom/callapp/contacts/manager/MainThreadTimer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    return-object p0
.end method

.method private callContact(Lcom/callapp/framework/phone/Phone;)V
    .locals 10

    if-eqz p1, :cond_1

    .line 387
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v8

    const/4 v9, 0x0

    const-string v6, "Contact name or number"

    const-string v7, "Call"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    :cond_1
    return-void
.end method

.method private finishActivity()V
    .locals 2

    .line 402
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finish()V

    const v0, 0x7f01001d

    const v1, 0x7f01001e

    .line 403
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private handlePostCallActions(Lcom/callapp/contacts/model/call/CallData;ZZ)V
    .locals 5

    .line 412
    const-class v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlePostCallActions: isMissedCall: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 416
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->a:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 417
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;-><init>(Lcom/callapp/framework/phone/Phone;)V

    invoke-virtual {p2, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 v3, 0x1

    goto :goto_1

    .line 420
    :cond_1
    new-instance p1, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;

    const/4 p2, 0x0

    const-string v0, "Post Call Screen"

    invoke-direct {p1, p2, p0, v0}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;-><init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 424
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz p1, :cond_3

    .line 425
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/AppRater;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 427
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-nez v4, :cond_4

    const p1, 0x7f0a0ab8

    .line 433
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$9;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$9;-><init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    return-void
.end method

.method private initLayout()V
    .locals 2

    const v0, 0x7f0a0445

    .line 313
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$7;-><init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const v0, 0x7f0a06ed

    .line 326
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 328
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$8;-><init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private sendSMS(Lcom/callapp/framework/phone/Phone;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 380
    invoke-static {p0, p1, v0}, Lcom/callapp/contacts/util/SmsUtils;->c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 468
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 462
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 450
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 456
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0040

    return v0
.end method

.method public getThemeResId()I
    .locals 1

    .line 151
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getCallScreenTransparentTheme()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onCreate$0$PostCallActivity(Landroid/view/View;)V
    .locals 2

    .line 227
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Bottom Action Bar"

    const-string v1, "Call button clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->callContact(Lcom/callapp/framework/phone/Phone;)V

    .line 229
    invoke-static {p0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 354
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishActivity()V

    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 2

    .line 396
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    if-ne p1, v0, :cond_1

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishActivity()V

    :cond_1
    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 161
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Post Call Screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const p1, 0x7f0a0425

    .line 165
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 166
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0144

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 168
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 169
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->setTopSheetListener(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$TopSheetListener;)V

    .line 172
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    const p1, 0x7f0a0244

    .line 174
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 176
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$3;-><init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f060244

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 185
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const p1, 0x7f0a0949

    .line 188
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->topBarContainer:Landroid/widget/FrameLayout;

    const p1, 0x7f0a0145

    .line 190
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a0686

    .line 191
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->tint:Landroid/view/View;

    const v1, 0x7f060026

    .line 192
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;I)V

    const v1, 0x7f0a07f6

    .line 194
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0805c4

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "isBlocked"

    .line 198
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "isSpammer"

    .line 199
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f060088

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x7f06001b

    .line 201
    :goto_1
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    .line 202
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->tint:Landroid/view/View;

    const v2, 0x7f0805e1

    invoke-static {v1, v2, p1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 204
    new-instance p1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;-><init>()V

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;-><init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V

    .line 1138
    iput-object v1, p1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->c:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    .line 223
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a()Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    .line 224
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    const p1, 0x7f0a01b4

    .line 226
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$PostCallActivity$Ab_QdjO8evhEq-rpGmZi8GWR6Ig;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$PostCallActivity$Ab_QdjO8evhEq-rpGmZi8GWR6Ig;-><init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00c4

    .line 233
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 234
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    .line 237
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :goto_2
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$5;-><init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0658

    .line 246
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$6;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$6;-><init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 360
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/DestroyListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 362
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a()V

    .line 363
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onDestroy()V

    .line 364
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/bus/EventBus;->a()V

    .line 365
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 366
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Post Call Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b()V

    .line 370
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 9

    .line 259
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 260
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->setIntent(Landroid/content/Intent;)V

    .line 261
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 267
    const-class p1, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    const-string v0, "PCS initialized without extras"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finish()V

    return-void

    :cond_1
    const-string v1, "contactId"

    .line 271
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 272
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    const-string v1, "postCallData"

    .line 273
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/call/CallData;

    if-eqz v0, :cond_6

    .line 275
    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->isMissedCall()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 276
    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->isCallAnswered()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v2, "fullName"

    .line 277
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v2

    sget-object v7, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v2

    .line 279
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/model/contact/ContactData;

    iput-object v3, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 280
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {p0, v3, v2}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 283
    :cond_2
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v3, Lcom/callapp/contacts/manager/phone/CallStateListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v4, 0x0

    .line 2091
    invoke-virtual {v2, v3, v0, v4}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 284
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->assertIntentDataExists()V

    .line 286
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getIntentData()Lcom/callapp/contacts/model/contact/IntentData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/contact/IntentData;->setFullName(Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    goto :goto_1

    .line 290
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 292
    :goto_1
    invoke-direct {p0, v0, v1, v8}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->handlePostCallActions(Lcom/callapp/contacts/model/call/CallData;ZZ)V

    const p1, 0x7f0a0ab8

    .line 294
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 295
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->j:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finish()V

    return-void

    .line 302
    :cond_5
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->initLayout()V

    const v0, 0x7f01001d

    .line 304
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 306
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/PauseListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 342
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 347
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onResume()V

    .line 348
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/ResumeListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method
