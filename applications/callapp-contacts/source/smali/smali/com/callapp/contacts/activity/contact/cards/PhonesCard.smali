.class public Lcom/callapp/contacts/activity/contact/cards/PhonesCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# static fields
.field private static final FADE_START_DELAY_MILLIS:I = 0x7d0


# instance fields
.field private verificationIcon:I

.field private verificationText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    .line 59
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->showPhoneNumberPopup(Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->callNumber(Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->sendSMS(Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method private buildSimpleObject(Lcom/callapp/framework/phone/Phone;ZZ)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;
    .locals 2

    .line 103
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 1357
    iput-object v0, v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getPhoneInfo()Ljava/lang/String;

    move-result-object v0

    .line 1372
    iput-object v0, v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    const v0, 0x7f08045b

    .line 108
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v0

    const v1, 0x7f0601ec

    .line 1392
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    .line 2367
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->f:I

    const v1, 0x7f080498

    .line 2402
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->l:I

    const v1, 0x7f060088

    .line 2426
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->o:I

    .line 112
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$4;-><init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;Lcom/callapp/framework/phone/Phone;)V

    .line 2441
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->t:Landroid/view/View$OnClickListener;

    .line 113
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;Lcom/callapp/framework/phone/Phone;)V

    .line 3342
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;Lcom/callapp/framework/phone/Phone;)V

    .line 3397
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->k:Landroid/view/View$OnClickListener;

    .line 127
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;Lcom/callapp/framework/phone/Phone;)V

    .line 4347
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->c:Landroid/view/View$OnLongClickListener;

    if-eqz p3, :cond_0

    .line 142
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->verificationText:Ljava/lang/String;

    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 143
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getPhoneInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->verificationText:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4372
    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    .line 144
    iget p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->verificationIcon:I

    .line 4513
    iput p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->G:I

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x4

    .line 5474
    iput p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    .line 149
    :cond_1
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    return-object p1
.end method

.method private callNumber(Lcom/callapp/framework/phone/Phone;)V
    .locals 10

    .line 242
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v8

    const/4 v9, 0x0

    const-string v6, "Contact Details"

    const-string v7, "Dial"

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    .line 244
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    const/4 v2, 0x0

    .line 6091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private getDataList(Lcom/callapp/contacts/model/contact/ContactData;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhonesList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhonesList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/framework/phone/Phone;

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 162
    :cond_3
    :goto_1
    invoke-direct {p0, v3, v6, p2}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->buildSimpleObject(Lcom/callapp/framework/phone/Phone;ZZ)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v3

    if-eqz v6, :cond_4

    .line 165
    invoke-virtual {p1, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object p1

    :cond_6
    return-object v0
.end method

.method private sendSMS(Lcom/callapp/framework/phone/Phone;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/SmsUtils;->c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    return-void
.end method

.method private showPhoneNumberPopup(Lcom/callapp/framework/phone/Phone;)V
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    .line 258
    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 259
    sget-object v2, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/popup/contact/DialogList;->setDialogType(Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V

    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v3, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    const v4, 0x7f120248

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v3, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    const v4, 0x7f120813

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhonesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 267
    new-instance v3, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    const v4, 0x7f120612

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    new-instance v3, Lcom/callapp/contacts/popup/contact/AdapterText;

    const v4, 0x7f0d00aa

    invoke-direct {v3, v0, v4, v2}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 270
    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;-><init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;Lcom/callapp/contacts/popup/contact/DialogList;Lcom/callapp/framework/phone/Phone;Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/popup/contact/AdapterText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 299
    invoke-virtual {v1, v3}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private updatePhones(Lcom/callapp/contacts/model/contact/ContactData;Z)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->getDataList(Lcom/callapp/contacts/model/contact/ContactData;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->updateCardData(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public alignRowsWithFirstRowExpandButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 7

    .line 190
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 194
    sget-object v4, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    if-ne v0, v4, :cond_2

    .line 196
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-direct {p0, p1, v3, v2}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->buildSimpleObject(Lcom/callapp/framework/phone/Phone;ZZ)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->updateCardData(Ljava/util/Collection;)V

    :cond_1
    return-void

    .line 203
    :cond_2
    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 205
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v4, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$5;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$5;-><init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;)V

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    .line 211
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v4, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$6;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$6;-><init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5, v6}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    .line 218
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getVerificationStatus()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getVerificationStatus()I

    move-result v0

    if-eq v0, v4, :cond_3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->r:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->s:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 219
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getVerificationStatus()I

    move-result v0

    if-eq v0, v3, :cond_6

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->r:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 222
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getVerificationStatus()I

    move-result v0

    if-eq v0, v4, :cond_5

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->s:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const v0, 0x7f120526

    .line 223
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->verificationText:Ljava/lang/String;

    const v0, 0x7f080432

    .line 224
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->verificationIcon:I

    goto :goto_1

    :cond_6
    :goto_0
    const v0, 0x7f120528

    .line 220
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->verificationText:Ljava/lang/String;

    const v0, 0x7f0804d8

    .line 221
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->verificationIcon:I

    :cond_7
    :goto_1
    const/4 v2, 0x1

    .line 228
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-direct {p0, p1, v3, v2}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->buildSimpleObject(Lcom/callapp/framework/phone/Phone;ZZ)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->updateCardData(Ljava/util/Collection;)V

    :cond_9
    if-eqz v1, :cond_a

    .line 233
    invoke-direct {p0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->updatePhones(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    return-void

    .line 235
    :cond_a
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->hideCard()V

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

    .line 86
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->hideCard()V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->updatePhones(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->showCard(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public shouldHideCardOnThemeChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
