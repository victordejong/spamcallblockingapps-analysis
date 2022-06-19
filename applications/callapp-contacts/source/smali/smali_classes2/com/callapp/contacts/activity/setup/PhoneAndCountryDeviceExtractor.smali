.class public Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;,
        Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;,
        Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Landroid/accounts/Account;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_d

    aget-object v4, p0, v3

    .line 153
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    .line 154
    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 155
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v6

    iget-object v7, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "Registration"

    const-string v9, "Account Type"

    invoke-virtual {v6, v8, v9, v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v6

    .line 157
    sget-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->UNKNOWN:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 158
    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->getNDC()Ljava/lang/String;

    move-result-object v5

    .line 160
    iget-object v8, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 161
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v8, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v9, "com.samsung.android.coreapps"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v8, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v9, "com.ayoba.ayoba.account"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v8, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "com.turkcell.bip"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v8, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "com.instanza.baba"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x7

    goto :goto_1

    :sswitch_4
    const-string v9, "com.michatapp.im.AccountType"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x6

    goto :goto_1

    :sswitch_5
    const-string v9, "im.thebot.messenger"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x5

    goto :goto_1

    :sswitch_6
    const-string v9, "me.glide.account"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v8, 0x4

    goto :goto_1

    :sswitch_7
    const-string v9, "com.viber.voip"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v8, 0x3

    goto :goto_1

    :sswitch_8
    const-string v9, "com.icq.mobile.client"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_9
    const-string v9, "com.viber.voip.account"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_a
    const-string v9, "com.facebook.auth.login"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    const/4 v8, 0x0

    :goto_1
    packed-switch v8, :pswitch_data_0

    goto :goto_2

    .line 182
    :pswitch_0
    sget-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->SAMSUNG:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    goto :goto_2

    .line 191
    :pswitch_1
    sget-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->AYOBA:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    goto :goto_2

    .line 173
    :pswitch_2
    sget-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->BIP:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    goto :goto_2

    .line 179
    :pswitch_3
    sget-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->SOMA:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    goto :goto_2

    .line 188
    :pswitch_4
    sget-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->MI_CHAT:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    goto :goto_2

    .line 185
    :pswitch_5
    sget-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->BOTIM:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    goto :goto_2

    .line 170
    :pswitch_6
    sget-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->GLIDE:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    goto :goto_2

    .line 176
    :pswitch_7
    sget-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->ICQ:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    goto :goto_2

    .line 164
    :pswitch_8
    sget-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->VIBER:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    goto :goto_2

    .line 167
    :pswitch_9
    sget-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->FACEBOOK_ACCOUNT:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 195
    :cond_b
    :goto_2
    new-instance v4, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;

    invoke-direct {v4, v6, v7, v5}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;-><init>(Ljava/lang/String;Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;Ljava/lang/String;)V

    .line 196
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7198bc22 -> :sswitch_a
        -0x716a26e2 -> :sswitch_9
        -0x6e7e6fad -> :sswitch_8
        -0x62737221 -> :sswitch_7
        -0x540918f2 -> :sswitch_6
        0xaaac265 -> :sswitch_5
        0x1f22f24b -> :sswitch_4
        0x3cf0b525 -> :sswitch_3
        0x4c16b844 -> :sswitch_2
        0x7578efd0 -> :sswitch_1
        0x7a424a71 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .line 121
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isValid()Z

    move-result p0

    return p0
.end method

.method public static getPhoneAndCountry()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;",
            "Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;->getPhoneFromDevice()Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1043
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->isReliable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->a(Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRegionCode()Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1046
    new-instance v3, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;

    invoke-direct {v3, v2, v1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1050
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 1051
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1052
    new-instance v3, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;

    invoke-direct {v3, v2, v1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1057
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->a(Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRegionCode()Ljava/lang/String;

    move-result-object v1

    .line 1058
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1059
    new-instance v3, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;

    const/4 v2, 0x0

    invoke-direct {v3, v1, v2}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 39
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getPhoneFromDevice()Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;
    .locals 9

    .line 67
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aF:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aF:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->PHONE_NUMBER:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getNDC()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;-><init>(Ljava/lang/String;Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;ZLjava/lang/String;)V

    return-object v1

    .line 72
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;->a([Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    new-instance v2, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->LINE1NUMBER:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getNDC()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;-><init>(Ljava/lang/String;Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;ZLjava/lang/String;)V

    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;->getPhoneFromICSProfile()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    new-instance v2, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->ICS:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getNDC()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;-><init>(Ljava/lang/String;Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;

    .line 97
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-static {v4}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;->b(Ljava/lang/String;)Z

    move-result v4

    .line 99
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->getSource()Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    move-result-object v5

    const-string v6, "Registration"

    if-eqz v4, :cond_5

    .line 102
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Phone was obtained from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->description:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 103
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 104
    invoke-static {v3}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->b(Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;)Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    move-result-object v4

    const v5, 0x7f12032a

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 105
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->isReliable()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_4
    move-object v2, v3

    goto :goto_0

    .line 109
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Phone not obtained from "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_8

    .line 113
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    return-object v2

    :cond_8
    :goto_1
    return-object v1
.end method

.method private static getPhoneFromICSProfile()Ljava/lang/String;
    .locals 5

    const-string v0, "!="

    const-string v1, "data1"

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v2}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-static {v2}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    :try_start_0
    new-instance v2, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v4, "entities"

    .line 129
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    .line 130
    invoke-virtual {v2, v1, v0, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v1, v0, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "="

    const-string v4, "vnd.android.cursor.item/phone_v2"

    .line 131
    invoke-virtual {v0, v1, v2, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "is_primary"

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$1;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$1;-><init>()V

    .line 1318
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 143
    const-class v1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    return-object v3
.end method
