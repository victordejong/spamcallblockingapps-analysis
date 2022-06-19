.class public Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phone/libphone/Phonemetadata$PhoneMetadata$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private carrierSpecific_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private countryCode_:I

.field private emergency_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private fixedLine_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private generalDesc_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private hasCarrierSpecific:Z

.field private hasCountryCode:Z

.field private hasEmergency:Z

.field private hasFixedLine:Z

.field private hasGeneralDesc:Z

.field private hasId:Z

.field private hasInternationalPrefix:Z

.field private hasLeadingDigits:Z

.field private hasLeadingZeroPossible:Z

.field private hasMainCountryForCode:Z

.field private hasMobile:Z

.field private hasMobileNumberPortableRegion:Z

.field private hasNationalPrefix:Z

.field private hasNationalPrefixForParsing:Z

.field private hasNationalPrefixTransformRule:Z

.field private hasNoInternationalDialling:Z

.field private hasPager:Z

.field private hasPersonalNumber:Z

.field private hasPreferredExtnPrefix:Z

.field private hasPreferredInternationalPrefix:Z

.field private hasPremiumRate:Z

.field private hasSameMobileAndFixedLinePattern:Z

.field private hasSharedCost:Z

.field private hasShortCode:Z

.field private hasSmsServices:Z

.field private hasStandardRate:Z

.field private hasTollFree:Z

.field private hasUan:Z

.field private hasVoicemail:Z

.field private hasVoip:Z

.field private id_:Ljava/lang/String;

.field private internationalPrefix_:Ljava/lang/String;

.field private intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phone/libphone/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private leadingDigits_:Ljava/lang/String;

.field private leadingZeroPossible_:Z

.field private mainCountryForCode_:Z

.field private mobileNumberPortableRegion_:Z

.field private mobile_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private nationalPrefixForParsing_:Ljava/lang/String;

.field private nationalPrefixTransformRule_:Ljava/lang/String;

.field private nationalPrefix_:Ljava/lang/String;

.field private noInternationalDialling_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phone/libphone/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private pager_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private personalNumber_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private preferredExtnPrefix_:Ljava/lang/String;

.field private preferredInternationalPrefix_:Ljava/lang/String;

.field private premiumRate_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private sameMobileAndFixedLinePattern_:Z

.field private sharedCost_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private shortCode_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private smsServices_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private standardRate_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private tollFree_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private uan_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private voicemail_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

.field private voip_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 3
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 4
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mobile_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 5
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 6
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 7
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 8
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 9
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->voip_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 10
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->pager_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 11
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->uan_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 12
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->emergency_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 13
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 14
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 15
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 16
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 17
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    .line 18
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 21
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    .line 30
    iput-boolean v1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 31
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 33
    iput-boolean v1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return-void
.end method

.method public static newBuilder()Lcom/phone/libphone/Phonemetadata$PhoneMetadata$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata$Builder;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addIntlNumberFormat(Lcom/phone/libphone/Phonemetadata$NumberFormat;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNumberFormat(Lcom/phone/libphone/Phonemetadata$NumberFormat;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clearIntlNumberFormat()Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public clearLeadingZeroPossible()Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return-object p0
.end method

.method public clearMainCountryForCode()Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return-object p0
.end method

.method public clearMobileNumberPortableRegion()Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return-object p0
.end method

.method public clearNationalPrefix()Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public clearNationalPrefixTransformRule()Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object p0
.end method

.method public clearPreferredExtnPrefix()Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public clearPreferredInternationalPrefix()Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public clearSameMobileAndFixedLinePattern()Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return-object p0
.end method

.method public getCarrierSpecific()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getCountryCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->countryCode_:I

    return v0
.end method

.method public getEmergency()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->emergency_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getFixedLine()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getGeneralDesc()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntlNumberFormat(I)Lcom/phone/libphone/Phonemetadata$NumberFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phone/libphone/Phonemetadata$NumberFormat;

    return-object p1
.end method

.method public getLeadingDigits()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCountryForCode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public getMobile()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mobile_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNationalPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixForParsing()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixTransformRule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getNoInternationalDialling()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNumberFormat(I)Lcom/phone/libphone/Phonemetadata$NumberFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phone/libphone/Phonemetadata$NumberFormat;

    return-object p1
.end method

.method public getPager()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->pager_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPersonalNumber()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPreferredExtnPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredInternationalPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumRate()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSameMobileAndFixedLinePattern()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return v0
.end method

.method public getSharedCost()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getShortCode()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSmsServices()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getStandardRate()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getTollFree()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getUan()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->uan_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoicemail()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoip()Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->voip_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public hasCarrierSpecific()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    return v0
.end method

.method public hasEmergency()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    return v0
.end method

.method public hasFixedLine()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    return v0
.end method

.method public hasGeneralDesc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasId:Z

    return v0
.end method

.method public hasInternationalPrefix()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    return v0
.end method

.method public hasLeadingDigits()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    return v0
.end method

.method public hasLeadingZeroPossible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    return v0
.end method

.method public hasMainCountryForCode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    return v0
.end method

.method public hasMobile()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasMobile:Z

    return v0
.end method

.method public hasMobileNumberPortableRegion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    return v0
.end method

.method public hasNationalPrefix()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    return v0
.end method

.method public hasNationalPrefixForParsing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    return v0
.end method

.method public hasNationalPrefixTransformRule()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    return v0
.end method

.method public hasNoInternationalDialling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    return v0
.end method

.method public hasPager()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPager:Z

    return v0
.end method

.method public hasPersonalNumber()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    return v0
.end method

.method public hasPreferredExtnPrefix()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    return v0
.end method

.method public hasPreferredInternationalPrefix()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    return v0
.end method

.method public hasPremiumRate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    return v0
.end method

.method public hasSameMobileAndFixedLinePattern()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    return v0
.end method

.method public hasSharedCost()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    return v0
.end method

.method public hasShortCode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    return v0
.end method

.method public hasSmsServices()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    return v0
.end method

.method public hasStandardRate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    return v0
.end method

.method public hasTollFree()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    return v0
.end method

.method public hasUan()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasUan:Z

    return v0
.end method

.method public hasVoicemail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    return v0
.end method

.method public hasVoip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasVoip:Z

    return v0
.end method

.method public intlNumberFormatSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public intlNumberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phone/libphone/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public isLeadingZeroPossible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return v0
.end method

.method public isMainCountryForCode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public isMobileNumberPortableRegion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return v0
.end method

.method public numberFormatSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phone/libphone/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setFixedLine(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 11
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setMobile(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 13
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setTollFree(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 17
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setPremiumRate(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 21
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 23
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setSharedCost(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 25
    :cond_5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 27
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 29
    :cond_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 31
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setVoip(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 33
    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 35
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setPager(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 37
    :cond_8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setUan(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 41
    :cond_9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 43
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setEmergency(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 45
    :cond_a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 47
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setVoicemail(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 49
    :cond_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 50
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setShortCode(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 53
    :cond_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setStandardRate(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 57
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 58
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 59
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setCarrierSpecific(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 61
    :cond_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 62
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setSmsServices(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 65
    :cond_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 66
    new-instance v0, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 67
    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 69
    :cond_10
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 70
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 71
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 72
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 73
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 74
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 76
    :cond_12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 77
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 78
    :cond_13
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 79
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 80
    :cond_14
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 81
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 82
    :cond_15
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 83
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_16

    .line 84
    new-instance v3, Lcom/phone/libphone/Phonemetadata$NumberFormat;

    invoke-direct {v3}, Lcom/phone/libphone/Phonemetadata$NumberFormat;-><init>()V

    .line 85
    invoke-virtual {v3, p1}, Lcom/phone/libphone/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 86
    iget-object v4, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_16
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_17

    .line 88
    new-instance v2, Lcom/phone/libphone/Phonemetadata$NumberFormat;

    invoke-direct {v2}, Lcom/phone/libphone/Phonemetadata$NumberFormat;-><init>()V

    .line 89
    invoke-virtual {v2, p1}, Lcom/phone/libphone/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 90
    iget-object v3, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_17
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 92
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 93
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 94
    :cond_18
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setLeadingZeroPossible(Z)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    .line 95
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->setMobileNumberPortableRegion(Z)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;

    return-void
.end method

.method public setCarrierSpecific(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setCountryCode(I)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    .line 2
    iput p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->countryCode_:I

    return-object p0
.end method

.method public setEmergency(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->emergency_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setFixedLine(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setGeneralDesc(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasId:Z

    .line 2
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object p0
.end method

.method public setInternationalPrefix(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    .line 2
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setLeadingDigits(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    .line 2
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object p0
.end method

.method public setLeadingZeroPossible(Z)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    .line 2
    iput-boolean p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return-object p0
.end method

.method public setMainCountryForCode(Z)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 2
    iput-boolean p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return-object p0
.end method

.method public setMobile(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasMobile:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mobile_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setMobileNumberPortableRegion(Z)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    .line 2
    iput-boolean p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return-object p0
.end method

.method public setNationalPrefix(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 2
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setNationalPrefixForParsing(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    .line 2
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object p0
.end method

.method public setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 2
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object p0
.end method

.method public setNoInternationalDialling(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setPager(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPager:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->pager_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setPersonalNumber(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setPreferredExtnPrefix(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 2
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 2
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setPremiumRate(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setSameMobileAndFixedLinePattern(Z)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 2
    iput-boolean p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return-object p0
.end method

.method public setSharedCost(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setShortCode(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setSmsServices(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setStandardRate(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setTollFree(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setUan(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasUan:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->uan_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setVoicemail(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setVoip(Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;)Lcom/phone/libphone/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasVoip:Z

    .line 3
    iput-object p1, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->voip_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 5
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasMobile:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 8
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasMobile:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mobile_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 11
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 13
    :cond_3
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 14
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 16
    :cond_4
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 17
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 19
    :cond_5
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 20
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 22
    :cond_6
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasVoip:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 23
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasVoip:Z

    if-eqz v0, :cond_7

    .line 24
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->voip_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 25
    :cond_7
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPager:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 26
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPager:Z

    if-eqz v0, :cond_8

    .line 27
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->pager_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 28
    :cond_8
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasUan:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 29
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasUan:Z

    if-eqz v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->uan_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 31
    :cond_9
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 32
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    if-eqz v0, :cond_a

    .line 33
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->emergency_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 34
    :cond_a
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 35
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    if-eqz v0, :cond_b

    .line 36
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 37
    :cond_b
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 38
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    if-eqz v0, :cond_c

    .line 39
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 40
    :cond_c
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 41
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    if-eqz v0, :cond_d

    .line 42
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 43
    :cond_d
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 44
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    if-eqz v0, :cond_e

    .line 45
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 46
    :cond_e
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 47
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    if-eqz v0, :cond_f

    .line 48
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 49
    :cond_f
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 50
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    if-eqz v0, :cond_10

    .line 51
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 52
    :cond_10
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->countryCode_:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 56
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    if-eqz v0, :cond_11

    .line 57
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 58
    :cond_11
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 59
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    if-eqz v0, :cond_12

    .line 60
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 61
    :cond_12
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 62
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    if-eqz v0, :cond_13

    .line 63
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 64
    :cond_13
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 65
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    if-eqz v0, :cond_14

    .line 66
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 67
    :cond_14
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 68
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    if-eqz v0, :cond_15

    .line 69
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 70
    :cond_15
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v0

    .line 72
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_16

    .line 73
    iget-object v3, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phone/libphone/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/phone/libphone/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_16
    invoke-virtual {p0}, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v0

    .line 75
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_1
    if-ge v1, v0, :cond_17

    .line 76
    iget-object v2, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phone/libphone/Phonemetadata$NumberFormat;

    invoke-virtual {v2, p1}, Lcom/phone/libphone/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_17
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 78
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 79
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    if-eqz v0, :cond_18

    .line 80
    iget-object v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 81
    :cond_18
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 82
    iget-boolean v0, p0, Lcom/phone/libphone/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    return-void
.end method
