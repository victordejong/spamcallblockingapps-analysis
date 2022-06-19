.class public Lcom/callapp/contacts/util/UserCorrectedInfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;
    .locals 1

    .line 206
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a(JLjava/lang/String;Z)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/UserSpamData;
    .locals 2

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserSpamData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserSpamData_;->phone:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 117
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f1200e4

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 122
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f1200e7

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :cond_1
    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->d(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 126
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f1200e8

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_2
    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->e(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_3

    .line 130
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f1200e6

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :cond_3
    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->p(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 134
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f1200e5

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserSpamData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 165
    invoke-static {p1}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/UserSpamData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 167
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->b()V

    .line 168
    new-instance v1, Lcom/callapp/contacts/model/objectbox/UserSpamData;

    invoke-direct {v1}, Lcom/callapp/contacts/model/objectbox/UserSpamData;-><init>()V

    .line 169
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/model/objectbox/UserSpamData;->setPhone(Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-virtual {v1, p2}, Lcom/callapp/contacts/model/objectbox/UserSpamData;->setIsSpam(Z)V

    .line 173
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 177
    invoke-static {p0, v1}, Lcom/callapp/contacts/loader/UserSpamLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/objectbox/UserSpamData;)V

    :cond_2
    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;I)V
    .locals 6

    .line 140
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p1}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a(JLcom/callapp/framework/phone/Phone;ILjava/lang/String;)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    move-result-object p1

    .line 141
    invoke-static {p0, p1}, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V

    .line 143
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->ft:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 144
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->ft:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v1, "Corrected info"

    const-string v2, "correct by user"

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V
    .locals 15

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const v1, 0x7f1202ae

    .line 47
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const v1, 0x7f1202ab

    .line 48
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const v1, 0x7f1202ac

    .line 50
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [I

    .line 51
    fill-array-data v6, :array_0

    .line 53
    new-instance v0, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;

    new-instance v14, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;

    move-object v7, v14

    move-object/from16 v8, p8

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v7 .. v13}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;-><init>(Lcom/callapp/contacts/manager/popup/PopupDoneListener;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v2, 0x0

    move-object v1, v0

    move-object/from16 v3, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object v9, v14

    invoke-direct/range {v1 .. v9}, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[IIZLcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    .line 113
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    :array_0
    .array-data 4
        0x7f08046f
        0x7f08030d
    .end array-data
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result p0

    return p0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/manager/BlockManager;->d(Lcom/callapp/framework/phone/Phone;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/callapp/framework/phone/Phone;)Z
    .locals 0

    .line 200
    invoke-static {p0}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/UserSpamData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserSpamData;->isSpam()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getAllUserSpam()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/UserSpamData;",
            ">;"
        }
    .end annotation

    .line 182
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserSpamData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
