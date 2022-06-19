.class public Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "com.whatsapp/com.whatsapp.Main"

    const v1, 0x7f08038d

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://wa.me/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "?text="

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 76
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p3, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 79
    invoke-static {p1, p3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getAnalyticsNameLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "wa"

    return-object v0
.end method

.method public getImColor()I
    .locals 1

    const v0, 0x7f060242

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const-string v0, "vnd.android.cursor.item/vnd.com.whatsapp.profile"

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.whatsapp"

    return-object v0
.end method

.method public getType()Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 60
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->WHATSAPP:Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object v0
.end method

.method public hasIMAccount(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 6

    .line 43
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/framework/phone/Phone;

    .line 44
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getLineType()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v4

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getLineType()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v1

    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne v1, v4, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 49
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getWhatsAppDataExtraction()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->hasWhatsappAccount()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v2
.end method

.method public openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 5

    .line 99
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    sget-object v2, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    .line 104
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v1, v2, v4, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v1, v3, v4, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper$1;-><init>(Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;)V

    .line 1185
    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 112
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 113
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-static {p1, v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    if-eqz p2, :cond_1

    .line 125
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 126
    :goto_1
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.whatsapp/com.whatsapp.Main"

    .line 130
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method

.method public share(Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;)V
    .locals 2

    .line 65
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x1

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;->getShareReferTextSubject(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;->share(Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;)V

    return-void
.end method
