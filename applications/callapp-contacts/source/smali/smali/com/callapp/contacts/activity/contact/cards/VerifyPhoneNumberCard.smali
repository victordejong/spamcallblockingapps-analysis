.class public Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private verifyPhoneClickListener:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 99
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->verifyPhoneClickListener:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method private updateCardData(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 4

    .line 62
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserVerifiedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f12080b

    .line 65
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060231

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->updateCardData(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aT:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x7f0601cc

    const v2, 0x7f120809

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->verifyPhoneClickListener:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    .line 71
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->updateCardData(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const p1, 0x7f12080a

    .line 77
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->verifyPhoneClickListener:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    .line 77
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->updateCardData(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateCardData(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 86
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    const v1, 0x7f08045b

    .line 87
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v0

    const v1, 0x7f0601ec

    .line 1392
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    const v1, 0x7f0804d7

    .line 1402
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->l:I

    .line 1426
    iput p3, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->o:I

    .line 2357
    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    .line 2372
    iput-object p2, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    const p1, 0x7f06010a

    .line 2382
    iput p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->i:I

    .line 3342
    iput-object p4, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    .line 96
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;Z)V

    return-void
.end method


# virtual methods
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

    .line 39
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

    .line 55
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->updateCardData(Lcom/callapp/contacts/model/contact/ContactData;)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->showCard(Z)V

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

    .line 49
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public verifyNumber(Landroid/app/Activity;)V
    .locals 1

    .line 108
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Landroid/app/Activity;Z)V

    return-void
.end method
