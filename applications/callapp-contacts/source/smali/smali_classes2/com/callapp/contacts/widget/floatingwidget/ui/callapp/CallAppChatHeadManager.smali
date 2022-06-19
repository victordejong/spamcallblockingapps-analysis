.class public Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;
.super Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

.field private b:Landroid/graphics/Point;

.field private d:Lcom/skyfishjy/library/RippleBackground;

.field private e:Landroid/animation/ValueAnimator;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;-><init>(Landroid/content/Context;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;)V

    .line 60
    new-instance p2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$L1Zubs6VPvrsAMbGKNUuV3zirxU;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$L1Zubs6VPvrsAMbGKNUuV3zirxU;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->f:Ljava/lang/Runnable;

    .line 78
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    .line 79
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 82
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;

    const v0, 0x7f1202b9

    .line 84
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$6ivEz6W50vesrjWy0wS5zmTl4m4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$6ivEz6W50vesrjWy0wS5zmTl4m4;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V

    const v2, 0x7f080372

    invoke-direct {p2, v0, v2, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 83
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setChatHeadCloseButtonData(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;)V

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;

    const v0, 0x7f1202e5

    .line 87
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$Rxgs3eJtdktEZ_VUFJlIiEJOXP0;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$Rxgs3eJtdktEZ_VUFJlIiEJOXP0;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V

    const v2, 0x7f08039f

    invoke-direct {p2, v0, v2, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 86
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setChatHeadCloseButtonData(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;)V

    .line 89
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getCloseButtonShadow()Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f0800d6

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)Lcom/skyfishjy/library/RippleBackground;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->d:Lcom/skyfishjy/library/RippleBackground;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 10240
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->d()V

    .line 10241
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getListener()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->f:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->d()V

    .line 207
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getListener()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;->b()V

    .line 208
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldConferenceScreenAppear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->startConferenceActivity(Landroid/content/Context;Z)V

    return-void

    .line 211
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingOrConnectingOrConnectedCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;Z)V

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 23

    move-object/from16 v0, p0

    .line 167
    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "window"

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;-><init>(Landroid/view/LayoutInflater;Landroid/view/WindowManager;)V

    iput-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    .line 168
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isSwappable()Z

    move-result v1

    const/4 v2, 0x6

    new-array v10, v2, [Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;

    .line 169
    new-instance v11, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;

    const v2, 0x7f1200d0

    .line 172
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$NwKAJbsIJuVkAp1xLzI2OmMJ9iU;

    invoke-direct {v7, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$NwKAJbsIJuVkAp1xLzI2OmMJ9iU;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V

    const v3, 0x7f0d01a1

    const v4, 0x7f0802e4

    const v5, 0x7f06010e

    const/4 v8, 0x1

    const v9, 0x7f0a041d

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;-><init>(IIILjava/lang/CharSequence;Landroid/view/View$OnClickListener;ZI)V

    const/4 v2, 0x0

    aput-object v11, v10, v2

    new-instance v11, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;

    const v2, 0x7f12068e

    .line 176
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$UWUgDSq31UybtnqJ3KzthN9lgIs;->INSTANCE:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$UWUgDSq31UybtnqJ3KzthN9lgIs;

    const v4, 0x7f08034e

    const v9, 0x7f0a0421

    move-object v2, v11

    move v8, v1

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;-><init>(IIILjava/lang/CharSequence;Landroid/view/View$OnClickListener;ZI)V

    const/4 v12, 0x1

    aput-object v11, v10, v12

    new-instance v11, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;

    const v2, 0x7f120454

    .line 180
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$2LS2FAi363lGpeWiKZvRRS-uIFM;->INSTANCE:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$2LS2FAi363lGpeWiKZvRRS-uIFM;

    const v4, 0x7f08034d

    const v9, 0x7f0a041f

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;-><init>(IIILjava/lang/CharSequence;Landroid/view/View$OnClickListener;ZI)V

    const/4 v1, 0x2

    aput-object v11, v10, v1

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;

    .line 184
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isMuteOn()Z

    move-result v18

    const v2, 0x7f12049c

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$Sr0QqGwKehvPKo31OPZBt0rGsKw;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$Sr0QqGwKehvPKo31OPZBt0rGsKw;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V

    const v14, 0x7f0d01a1

    const v15, 0x7f08042f

    const v16, 0x7f06010e

    const v17, 0x7f060088

    const/16 v21, 0x1

    const v22, 0x7f0a0420

    move-object v13, v1

    move-object/from16 v20, v2

    invoke-direct/range {v13 .. v22}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;-><init>(IIIIZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;ZI)V

    const/4 v2, 0x3

    aput-object v1, v10, v2

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;

    .line 188
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isSpeakerDisabled()Z

    move-result v2

    xor-int/lit8 v18, v2, 0x1

    const v2, 0x7f12067f

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$24BGHAOEYWeTNeMSkeoBCg3VIsg;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$24BGHAOEYWeTNeMSkeoBCg3VIsg;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V

    const/16 v21, 0x1

    const v22, 0x7f0a041c

    const v14, 0x7f0d01a1

    const v15, 0x7f0805b8

    const v16, 0x7f06010e

    const v17, 0x7f060088

    move-object v13, v1

    move-object/from16 v20, v2

    invoke-direct/range {v13 .. v22}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;-><init>(IIIIZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;ZI)V

    const/4 v2, 0x4

    aput-object v1, v10, v2

    const/4 v1, 0x5

    new-instance v11, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;

    const v3, 0x7f0d01a2

    const v4, 0x7f08039f

    const v5, 0x7f060244

    const v2, 0x7f1202e5

    .line 191
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$7WqL85grE0rXsodvrBaRbn0KnrE;

    invoke-direct {v7, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppChatHeadManager$7WqL85grE0rXsodvrBaRbn0KnrE;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V

    const/4 v8, 0x1

    const v9, 0x7f0a041e

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;-><init>(IIILjava/lang/CharSequence;Landroid/view/View$OnClickListener;ZI)V

    aput-object v11, v10, v1

    .line 169
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 194
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;

    .line 195
    iget-object v3, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    .line 1213
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->a(Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 2

    .line 11225
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->isMoreThenOneBluetoothDevices()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11234
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/widget/AudioRouteSelectorActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x18000000

    .line 11235
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11236
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 11228
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 12220
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getMute()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 12221
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Z)V

    return-void
.end method

.method private static synthetic d(Landroid/view/View;)V
    .locals 1

    .line 181
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getActiveOrBackgroundCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->WIDGET:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    invoke-static {p0, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;)Z

    return-void
.end method

.method private static synthetic e(Landroid/view/View;)V
    .locals 1

    .line 177
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getActiveOrBackgroundCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->WIDGET:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    invoke-static {p0, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b()V

    return-void
.end method

.method private k()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->isViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->e()V

    :cond_0
    return-void
.end method

.method private synthetic l()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getListener()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;->a(I)V

    return-void
.end method

.method public static synthetic lambda$24BGHAOEYWeTNeMSkeoBCg3VIsg(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$2LS2FAi363lGpeWiKZvRRS-uIFM(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$6ivEz6W50vesrjWy0wS5zmTl4m4(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->m()V

    return-void
.end method

.method public static synthetic lambda$7WqL85grE0rXsodvrBaRbn0KnrE(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$L1Zubs6VPvrsAMbGKNUuV3zirxU(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->n()V

    return-void
.end method

.method public static synthetic lambda$NwKAJbsIJuVkAp1xLzI2OmMJ9iU(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->f(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Rxgs3eJtdktEZ_VUFJlIiEJOXP0(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->l()V

    return-void
.end method

.method public static synthetic lambda$Sr0QqGwKehvPKo31OPZBt0rGsKw(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$UWUgDSq31UybtnqJ3KzthN9lgIs(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->e(Landroid/view/View;)V

    return-void
.end method

.method private synthetic m()V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getListener()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;->a(I)V

    return-void
.end method

.method private synthetic n()V
    .locals 3

    .line 61
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f59999a    # 0.85f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 64
    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$1;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 72
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->d:Lcom/skyfishjy/library/RippleBackground;

    invoke-virtual {v1, v0}, Lcom/skyfishjy/library/RippleBackground;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/Serializable;ZZ)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;
    .locals 11

    .line 53
    check-cast p1, Ljava/lang/String;

    .line 7349
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Ljava/io/Serializable;ZZ)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    move-result-object p2

    .line 7350
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getViewAdapter()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;->getChatHeadView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7351
    new-instance p3, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p3, p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    .line 8319
    iget-object v0, p2, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->e:Lcom/facebook/rebound/e;

    invoke-virtual {v0, p3}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    const p3, 0x7f0a04f1

    .line 9110
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0a04ef

    .line 9111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    .line 9115
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 9116
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x5dc

    .line 9117
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9118
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->e:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;

    invoke-direct {v2, p0, p3}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9146
    iget-object p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 9147
    iget-object p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 9149
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isInDriveMode()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    .line 9150
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9158
    new-instance p3, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v4, p3

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 9159
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p3, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9160
    invoke-virtual {p3, v3}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    const-wide/16 v1, 0xbb8

    .line 9161
    invoke-virtual {p3, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 9162
    invoke-virtual {p3, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 9163
    invoke-virtual {v0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    .line 9153
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    const p3, 0x7f0a0775

    .line 10093
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/skyfishjy/library/RippleBackground;

    iput-object p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->d:Lcom/skyfishjy/library/RippleBackground;

    .line 10094
    invoke-virtual {p3}, Lcom/skyfishjy/library/RippleBackground;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$2;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    .line 7123
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b(Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;)V

    .line 7124
    iget-boolean v1, v0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a:Z

    if-eqz v1, :cond_0

    .line 7125
    iget-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->c:Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 7126
    iput-boolean v1, v0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a:Z

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 334
    :cond_1
    invoke-super {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a()V

    return-void
.end method

.method public final a(DD)V
    .locals 1

    .line 265
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fB:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 266
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fC:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p3, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(II)V
    .locals 4

    .line 246
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(II)V

    .line 247
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 248
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 249
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 250
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getChatHeads()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->isViewShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getChatHeads()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 253
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    .line 2153
    iget-object p2, p2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, p2, Lcom/facebook/rebound/e$a;->a:D

    .line 253
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 p2, p2, 0x2

    int-to-double v2, p2

    cmpg-double p2, v0, v2

    if-gtz p2, :cond_0

    .line 254
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 256
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getMenuWidth()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int/2addr p2, v0

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    .line 3153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, p1, Lcom/facebook/rebound/e$a;->a:D

    double-to-int p1, v1

    .line 259
    invoke-virtual {v0, p2, p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a(II)V

    :cond_1
    return-void
.end method

.method public final b(I)I
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v0

    return p1

    .line 273
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->b(I)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    if-eqz v0, :cond_5

    .line 294
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 295
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->d()V

    return v1

    .line 297
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b()V

    return v1

    .line 303
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 4153
    iget-object v0, v0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 303
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_2

    .line 304
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getMenuWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    .line 311
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v4

    .line 5153
    iget-object v4, v4, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v4, v4, Lcom/facebook/rebound/e$a;->a:D

    double-to-int v4, v4

    .line 311
    invoke-virtual {v3, v0, v4}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a(II)V

    if-eqz v2, :cond_3

    .line 313
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a()V

    goto :goto_1

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->c()V

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getMenuHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 318
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v2

    .line 6153
    iget-object v2, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, v2, Lcom/facebook/rebound/e$a;->a:D

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_4

    .line 319
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    :cond_4
    return v1

    .line 324
    :cond_5
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Z

    move-result p1

    return p1
.end method

.method public final g()V
    .locals 0

    .line 344
    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->k()V

    return-void
.end method

.method public getFloatingMenuViewController()Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    return-object v0
.end method

.method public final h()V
    .locals 0

    .line 7344
    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->k()V

    return-void
.end method

.method public final i()Z
    .locals 1

    .line 278
    invoke-super {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->i()Z

    .line 279
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->isViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
