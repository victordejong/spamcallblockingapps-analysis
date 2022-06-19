.class final Lio/bidmachine/UserRestrictionParams;
.super Lio/bidmachine/models/RequestParams;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/DataRestrictions;
.implements Lio/bidmachine/models/IUserRestrictionsParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/models/RequestParams<",
        "Lio/bidmachine/UserRestrictionParams;",
        ">;",
        "Lio/bidmachine/models/DataRestrictions;",
        "Lio/bidmachine/models/IUserRestrictionsParams<",
        "Lio/bidmachine/UserRestrictionParams;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private gdprConsentString:Ljava/lang/String;

.field private hasConsent:Ljava/lang/Boolean;

.field private hasCoppa:Ljava/lang/Boolean;

.field private subjectToGDPR:Ljava/lang/Boolean;

.field private usPrivacyString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/bidmachine/models/RequestParams;-><init>()V

    return-void
.end method

.method private hasConsent()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lio/bidmachine/UserRestrictionParams;->hasConsent:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasCoppa()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lio/bidmachine/UserRestrictionParams;->hasCoppa:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private subjectToGDPR()Z
    .locals 3

    .line 81
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getIabSharedPreference()Lio/bidmachine/e;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR:Ljava/lang/Boolean;

    .line 83
    invoke-virtual {v0}, Lio/bidmachine/e;->getTcfGdprApplies()Ljava/lang/Boolean;

    move-result-object v2

    .line 84
    invoke-virtual {v0}, Lio/bidmachine/e;->getSubjectToGDPR()Ljava/lang/Boolean;

    move-result-object v0

    .line 82
    invoke-static {v1, v2, v0}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final build(Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setGdpr(Z)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 39
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasCoppa()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setCoppa(Z)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 41
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->newBuilder()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setUsPrivacy(Ljava/lang/String;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->build()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    :cond_0
    return-void
.end method

.method final build(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->getIABGDPRString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setConsent(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    return-void
.end method

.method public final canSendDeviceInfo()Z
    .locals 1

    .line 108
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasCoppa()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final canSendGeoPosition()Z
    .locals 1

    .line 98
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasCoppa()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->isUserGdprProtected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final canSendIfa()Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->isUserGdprProtected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final canSendUserInfo()Z
    .locals 1

    .line 103
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasCoppa()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->isUserGdprProtected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getIABGDPRString()Ljava/lang/String;
    .locals 3

    .line 164
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getIabSharedPreference()Lio/bidmachine/e;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lio/bidmachine/UserRestrictionParams;->gdprConsentString:Ljava/lang/String;

    .line 166
    invoke-virtual {v0}, Lio/bidmachine/e;->getTcfTcString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v0}, Lio/bidmachine/e;->getGDPRConsentString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v1, v2, v0}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasConsent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getUSPrivacyString()Ljava/lang/String;
    .locals 2

    .line 139
    iget-object v0, p0, Lio/bidmachine/UserRestrictionParams;->usPrivacyString:Ljava/lang/String;

    .line 140
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/d;->getIabSharedPreference()Lio/bidmachine/e;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/e;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final isUserAgeRestricted()Z
    .locals 1

    .line 133
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasCoppa()Z

    move-result v0

    return v0
.end method

.method public final isUserGdprProtected()Z
    .locals 1

    .line 128
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasConsent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isUserHasCcpaConsent()Z
    .locals 5

    .line 154
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4e

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final isUserHasConsent()Z
    .locals 1

    .line 123
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasConsent()Z

    move-result v0

    return v0
.end method

.method public final isUserInCcpaScope()Z
    .locals 4

    .line 145
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    const-string v2, "---"

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final isUserInGdprScope()Z
    .locals 1

    .line 118
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR()Z

    move-result v0

    return v0
.end method

.method public final merge(Lio/bidmachine/UserRestrictionParams;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lio/bidmachine/UserRestrictionParams;->gdprConsentString:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/UserRestrictionParams;->gdprConsentString:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/UserRestrictionParams;->gdprConsentString:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR:Ljava/lang/Boolean;

    iget-object v1, p1, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR:Ljava/lang/Boolean;

    .line 32
    iget-object v0, p0, Lio/bidmachine/UserRestrictionParams;->hasConsent:Ljava/lang/Boolean;

    iget-object v1, p1, Lio/bidmachine/UserRestrictionParams;->hasConsent:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lio/bidmachine/UserRestrictionParams;->hasConsent:Ljava/lang/Boolean;

    .line 33
    iget-object v0, p0, Lio/bidmachine/UserRestrictionParams;->hasCoppa:Ljava/lang/Boolean;

    iget-object v1, p1, Lio/bidmachine/UserRestrictionParams;->hasCoppa:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lio/bidmachine/UserRestrictionParams;->hasCoppa:Ljava/lang/Boolean;

    .line 34
    iget-object v0, p0, Lio/bidmachine/UserRestrictionParams;->usPrivacyString:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/UserRestrictionParams;->usPrivacyString:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/bidmachine/UserRestrictionParams;->usPrivacyString:Ljava/lang/String;

    return-void
.end method

.method public final bridge synthetic merge(Lio/bidmachine/models/RequestParams;)V
    .locals 0

    .line 18
    check-cast p1, Lio/bidmachine/UserRestrictionParams;

    invoke-virtual {p0, p1}, Lio/bidmachine/UserRestrictionParams;->merge(Lio/bidmachine/UserRestrictionParams;)V

    return-void
.end method

.method public final setConsentConfig(ZLjava/lang/String;)Lio/bidmachine/UserRestrictionParams;
    .locals 0

    .line 57
    iput-object p2, p0, Lio/bidmachine/UserRestrictionParams;->gdprConsentString:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/UserRestrictionParams;->hasConsent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final bridge synthetic setConsentConfig(ZLjava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/UserRestrictionParams;->setConsentConfig(ZLjava/lang/String;)Lio/bidmachine/UserRestrictionParams;

    move-result-object p1

    return-object p1
.end method

.method public final setCoppa(Ljava/lang/Boolean;)Lio/bidmachine/UserRestrictionParams;
    .locals 0

    .line 70
    iput-object p1, p0, Lio/bidmachine/UserRestrictionParams;->hasCoppa:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final bridge synthetic setCoppa(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lio/bidmachine/UserRestrictionParams;->setCoppa(Ljava/lang/Boolean;)Lio/bidmachine/UserRestrictionParams;

    move-result-object p1

    return-object p1
.end method

.method public final setSubjectToGDPR(Ljava/lang/Boolean;)Lio/bidmachine/UserRestrictionParams;
    .locals 0

    .line 64
    iput-object p1, p0, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final bridge synthetic setSubjectToGDPR(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lio/bidmachine/UserRestrictionParams;->setSubjectToGDPR(Ljava/lang/Boolean;)Lio/bidmachine/UserRestrictionParams;

    move-result-object p1

    return-object p1
.end method

.method public final setUSPrivacyString(Ljava/lang/String;)Lio/bidmachine/UserRestrictionParams;
    .locals 0

    .line 76
    iput-object p1, p0, Lio/bidmachine/UserRestrictionParams;->usPrivacyString:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic setUSPrivacyString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lio/bidmachine/UserRestrictionParams;->setUSPrivacyString(Ljava/lang/String;)Lio/bidmachine/UserRestrictionParams;

    move-result-object p1

    return-object p1
.end method
