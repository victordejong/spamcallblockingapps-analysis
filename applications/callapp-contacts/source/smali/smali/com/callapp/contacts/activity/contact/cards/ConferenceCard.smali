.class public Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">;>;",
        "Lcom/callapp/contacts/manager/phone/CallStateListener;"
    }
.end annotation


# instance fields
.field private final callData:Lcom/callapp/contacts/model/call/CallData;

.field private final contactData:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 39
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->callData:Lcom/callapp/contacts/model/call/CallData;

    .line 41
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    .line 42
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->showCard(Z)V

    return-void
.end method

.method static synthetic lambda$updateCardData$1(Lcom/callapp/contacts/model/call/CallData;Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->separateCall(Lcom/callapp/contacts/model/call/CallData;)V

    return-void
.end method

.method private updateCardData(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 10

    .line 88
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f06010e

    goto :goto_0

    :cond_0
    const v0, 0x7f060244

    .line 89
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f06010f

    goto :goto_1

    :cond_1
    const v1, 0x7f06010d

    .line 90
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_4

    .line 92
    invoke-virtual {p2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [C

    invoke-static {v5, v6}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v5

    :goto_4
    const/4 v6, 0x0

    if-eqz v2, :cond_5

    move-object v2, v6

    goto :goto_5

    .line 95
    :cond_5
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    .line 96
    :goto_5
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const v2, 0x7f08058f

    .line 97
    invoke-static {v2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, -0x1

    .line 99
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v8

    const v9, 0x7f06008a

    invoke-static {v8, v9}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 100
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v9

    if-eqz v9, :cond_6

    const v2, 0x7f08037c

    .line 101
    invoke-static {v2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    :cond_6
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result v9

    if-eqz v9, :cond_8

    const v2, 0x7f08037a

    .line 104
    invoke-static {v2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_7
    move-object v8, v6

    const/4 v7, 0x0

    .line 108
    :cond_8
    :goto_6
    iget-object v9, p0, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v9, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v9

    if-eqz v9, :cond_9

    const v2, 0x7f080596

    .line 109
    invoke-static {v2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    goto :goto_7

    :cond_9
    move-object v6, v8

    .line 115
    :goto_7
    new-instance v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v8}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 1357
    iput-object v5, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    const v9, 0x7f0601ec

    .line 1367
    iput v9, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->f:I

    .line 117
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1417
    iput-object v2, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->r:Ljava/lang/String;

    .line 1418
    iput-object v5, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->s:Ljava/lang/String;

    .line 1419
    iput-object v6, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->x:Ljava/lang/Integer;

    .line 1420
    iput v7, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->y:I

    .line 1421
    iput-object v9, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->z:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0x8

    .line 1474
    iput v2, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    .line 119
    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$Y188s0ERPwGa8jm83E7p_9ksbpk;

    invoke-direct {v5, p0, p2}, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$Y188s0ERPwGa8jm83E7p_9ksbpk;-><init>(Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;Lcom/callapp/contacts/model/call/CallData;)V

    .line 2446
    iput-object v5, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->u:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$HFmFu3jeQK2pewFvx4lUio2Hz3Q;

    invoke-direct {v5, p2}, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ConferenceCard$HFmFu3jeQK2pewFvx4lUio2Hz3Q;-><init>(Lcom/callapp/contacts/model/call/CallData;)V

    .line 2451
    iput-object v5, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->v:Landroid/view/View$OnClickListener;

    .line 2508
    iput v4, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->F:I

    .line 3503
    iput v2, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->A:I

    .line 4489
    iput v4, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->E:I

    const v2, 0x7f0804d4

    .line 5412
    iput v2, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->n:I

    .line 5479
    iput v4, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->B:I

    const v2, 0x7f08039e

    .line 6407
    iput v2, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->m:I

    const v2, 0x7f06001b

    .line 6431
    iput v2, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->p:I

    .line 6484
    iput-boolean v3, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->C:Z

    .line 133
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object p1

    .line 7372
    iput-object p1, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAllCallsInConference()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p2}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isOnHold()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_8

    .line 8494
    :cond_a
    iput-boolean v3, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->D:Z

    .line 9436
    iput v0, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->q:I

    goto :goto_9

    .line 7494
    :cond_b
    :goto_8
    iput-boolean v4, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->D:Z

    .line 8436
    iput v1, v8, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->q:I

    .line 141
    :goto_9
    invoke-virtual {v8, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;Z)V

    return-void
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONFERENCE_CALL_FIELDS:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public isCardLockedWhenScreenIsLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$updateCardData$0$ConferenceCard(Lcom/callapp/contacts/model/call/CallData;Landroid/view/View;)V
    .locals 0

    .line 121
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/contacts/model/call/CallData;)V

    .line 122
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->hideCard()V

    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 2

    .line 148
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->callData:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->hideCard()V

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->updateCardData(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallData;)V

    const/4 p1, 0x1

    .line 153
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->showCard(Z)V

    :cond_1
    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p1, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->callData:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/call/CallState;->isDisconnected()Z

    move-result p2

    if-nez p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->callData:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->updateCardData(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallData;)V

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->showCard(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
