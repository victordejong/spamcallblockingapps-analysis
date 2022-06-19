.class public Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;
.super Ljava/lang/Object;
.source "PhoneNumberLookupResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;
    }
.end annotation


# instance fields
.field private companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

.field private contact:Lcom/telguarder/helpers/contact/Contact;

.field private mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

.field private mHasCompany:Ljava/lang/Boolean;

.field private mHasContact:Ljava/lang/Boolean;

.field private mHasData:Ljava/lang/Boolean;

.field private mHasPerson:Ljava/lang/Boolean;

.field private mHasSpam:Ljava/lang/Boolean;

.field private mSecurityLevel:Ljava/lang/String;

.field private personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

.field public phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasData:Ljava/lang/Boolean;

    .line 12
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasContact:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasCompany:Ljava/lang/Boolean;

    .line 14
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasPerson:Ljava/lang/Boolean;

    .line 15
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasSpam:Ljava/lang/Boolean;

    .line 16
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    .line 17
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mSecurityLevel:Ljava/lang/String;

    return-void
.end method

.method private cleanup()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasData:Ljava/lang/Boolean;

    .line 26
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasContact:Ljava/lang/Boolean;

    .line 27
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasCompany:Ljava/lang/Boolean;

    .line 28
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasPerson:Ljava/lang/Boolean;

    .line 29
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasSpam:Ljava/lang/Boolean;

    .line 30
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    return-void
.end method


# virtual methods
.method public getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    return-object v0
.end method

.method public getContact()Lcom/telguarder/helpers/contact/Contact;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->contact:Lcom/telguarder/helpers/contact/Contact;

    return-object v0
.end method

.method public getDisplayType()Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    if-nez v0, :cond_9

    .line 102
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasContact()Z

    move-result v0

    .line 103
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasCompany()Z

    move-result v1

    .line 104
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasPerson()Z

    move-result v2

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->NONE:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 107
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->CONTACT_ONLY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 109
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->CONTACT_WITH_COMPANY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 111
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->CONTACT_WITH_COMPANY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    .line 113
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->CONTACT_WITH_PERSON:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    .line 115
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->COMPANY_ONLY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 117
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->PERSON_WITH_COMPANY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    goto :goto_1

    :cond_7
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    .line 119
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->PERSON_ONLY:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    goto :goto_1

    .line 121
    :cond_8
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->NONE:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    .line 127
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mDispplayType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    return-object v0
.end method

.method public getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    return-object v0
.end method

.method public getPhoneEventByNumber(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isNumberTheSame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    return-object p1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isNumberTheSame(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSpamResult(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 1

    .line 132
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPhoneEventByNumber(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasCompany()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasCompany:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasCompany:Ljava/lang/Boolean;

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasCompany:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasContact()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasContact:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasContact:Ljava/lang/Boolean;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasData:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasPerson()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasCompany()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasContact()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasSpam()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasData:Ljava/lang/Boolean;

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasData:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasPerson()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasPerson:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->birthDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasPerson:Ljava/lang/Boolean;

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasPerson:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasSpam()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasSpam:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasSpam:Ljava/lang/Boolean;

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mHasSpam:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public securityLevel()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mSecurityLevel:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasCompany()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mSecurityLevel:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasPerson()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mSecurityLevel:Ljava/lang/String;

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->mSecurityLevel:Ljava/lang/String;

    return-object v0
.end method

.method public setCompanyCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->cleanup()V

    .line 48
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    return-void
.end method

.method public setContact(Lcom/telguarder/helpers/contact/Contact;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->cleanup()V

    .line 39
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->contact:Lcom/telguarder/helpers/contact/Contact;

    return-void
.end method

.method public setPersonCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->cleanup()V

    .line 57
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    return-void
.end method
