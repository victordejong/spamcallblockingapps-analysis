.class public Lcom/callapp/contacts/loader/device/NumberGeocodingLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 8

    .line 30
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    invoke-static {}, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->getInstance()Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;

    move-result-object v0

    .line 32
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 34
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 1061
    invoke-virtual {v0, v2, v3}, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->b(Lcom/google/i18n/phonenumbers/k$a;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1062
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v1

    .line 2047
    iget v5, v2, Lcom/google/i18n/phonenumbers/k$a;->a:I

    const/4 v6, 0x1

    if-ne v1, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1066
    :goto_0
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    move-object v5, v7

    :goto_1
    if-nez v1, :cond_3

    .line 1071
    invoke-virtual {v0, v2, v3}, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->a(Lcom/google/i18n/phonenumbers/k$a;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1073
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v5, v0

    goto :goto_2

    .line 1076
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getCountryCode()I

    move-result v0

    if-ne v0, v6, :cond_4

    const-string v0, ","

    invoke-static {v5, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 39
    invoke-static {}, Lcom/callapp/contacts/manager/AreaCodesDB;->get()Lcom/callapp/contacts/manager/AreaCodesDB;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/AreaCodesDB;->a(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v5, v0

    .line 46
    :cond_4
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47
    new-instance v7, Lcom/callapp/common/model/json/JSONAddress;

    invoke-direct {v7, v5}, Lcom/callapp/common/model/json/JSONAddress;-><init>(Ljava/lang/String;)V

    .line 50
    :cond_5
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNumberGeocodingDescription()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 51
    invoke-virtual {p1, v7}, Lcom/callapp/contacts/model/contact/ContactData;->setNumberGeocodingDescription(Lcom/callapp/common/model/json/JSONAddress;)V

    .line 52
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateAddresses()V

    :cond_6
    return-void
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

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
