.class public Lcom/callapp/contacts/util/AppRater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/AppRater$UserRating;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JJ)I
    .locals 0

    sub-long/2addr p2, p0

    const-wide/32 p0, 0x5265c00

    .line 130
    div-long/2addr p2, p0

    long-to-int p0, p2

    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1039
    invoke-static {p0, p1, v0, v0}, Lcom/callapp/contacts/util/AppRater;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;ZZ)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Z)Z
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p1, p2, v0}, Lcom/callapp/contacts/util/AppRater;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;ZZ)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;ZZ)Z
    .locals 3

    .line 43
    invoke-static {}, Lcom/callapp/contacts/util/AppRater;->getRateIntent$7ec49240()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    const-class p0, Lcom/callapp/contacts/util/AppRater;

    const-string p1, "No intent found to handle 5-star-rating for current store"

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v1

    .line 49
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/util/AppRater;->a(Lcom/callapp/contacts/model/contact/ContactData;ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->Y:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 p2, 0x1

    .line 2039
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    move-result-object p1

    .line 51
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Rate CallApp"

    const-string v2, "Rate popup viewed"

    invoke-virtual {p3, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    new-instance p3, Lcom/callapp/contacts/popup/RatePopup;

    invoke-direct {p3, v0}, Lcom/callapp/contacts/popup/RatePopup;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, p0, p3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return p2

    :cond_1
    return v1
.end method

.method private static a(Lcom/callapp/contacts/model/contact/ContactData;ZZ)Z
    .locals 9

    .line 60
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ak:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/AppRater$UserRating;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 63
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->ab:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    return v1

    .line 67
    :cond_0
    sget-object p2, Lcom/callapp/contacts/util/AppRater$UserRating;->RATED_5STAR:Lcom/callapp/contacts/util/AppRater$UserRating;

    const/4 v2, 0x0

    if-ne v0, p2, :cond_1

    return v2

    .line 72
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/util/LocaleUtils;->isIndonesianUser()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, v3, v4}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long p2, v3, v5

    if-gtz p2, :cond_2

    return v2

    .line 76
    :cond_2
    sget-object p2, Lcom/callapp/contacts/util/AppRater$UserRating;->RATED_4STAR_OR_LESS:Lcom/callapp/contacts/util/AppRater$UserRating;

    const-wide/16 v3, 0x1e

    if-ne v0, p2, :cond_3

    .line 77
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->ab:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-nez p2, :cond_3

    .line 79
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->Z:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 80
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->ab:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->hasAnyPhotoUrl()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/ContactField;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_8

    .line 85
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_8

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    .line 88
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aa:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 90
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->Z:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    .line 3025
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->a()Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 91
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aa:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    const-wide/16 v5, 0x10

    cmp-long p0, p1, v5

    if-nez p0, :cond_6

    return v1

    :cond_6
    cmp-long p0, p1, v3

    if-nez p0, :cond_7

    .line 96
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->ab:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    return v1

    :cond_7
    if-lez p0, :cond_8

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 100
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->ab:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, p0, p1}, Lcom/callapp/contacts/util/AppRater;->a(JJ)I

    move-result p2

    const/16 v0, 0x16

    if-le p2, v0, :cond_8

    .line 102
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->ab:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    return v1

    :cond_8
    return v2
.end method

.method public static getRateIntent$7ec49240()Landroid/content/Intent;
    .locals 3

    const v0, 0x7f120688

    .line 117
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v2, "market://details?id=com.callapp.contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    :cond_0
    const v0, 0x7f120689

    .line 121
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v2
.end method

.method public static isRatedYet()Z
    .locals 2

    .line 113
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ak:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/util/AppRater$UserRating;->NOT_YET:Lcom/callapp/contacts/util/AppRater$UserRating;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
