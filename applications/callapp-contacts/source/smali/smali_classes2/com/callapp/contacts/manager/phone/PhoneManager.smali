.class public Lcom/callapp/contacts/manager/phone/PhoneManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/phone/PhoneManager$MyCountryRegionProvider;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field private d:Lcom/android/internal/telephony/ITelephony;

.field private e:Landroid/telephony/TelephonyManager;

.field private f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#"

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/manager/phone/PhoneManager;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->g:Ljava/lang/Object;

    .line 73
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->a:Landroidx/b/e;

    return-void
.end method

.method public static a(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 3

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    if-nez p0, :cond_0

    return-object v1

    .line 358
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 361
    :cond_1
    invoke-static {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->c(Landroid/telecom/Call;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-static {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->c(Landroid/telecom/Call;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 270
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    invoke-static {p0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 9

    .line 740
    new-instance v8, Lcom/callapp/contacts/manager/phone/PhoneManager$4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/manager/phone/PhoneManager$4;-><init>(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    .line 747
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->get()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->isDualSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, p1

    move-wide v0, p2

    .line 748
    invoke-static {p2, p3, p1}, Lcom/callapp/contacts/loader/PreferredSimManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 750
    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    return-void

    .line 752
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 753
    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    return-void

    :cond_1
    move-object v2, p1

    .line 756
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId()I

    move-result v5

    move-object v1, p0

    move-object v3, p5

    move-object v4, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v1 .. v7}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/action/ActionDoneListener;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V
    .locals 7

    .line 729
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-ne p2, v0, :cond_1

    .line 730
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-static {p0, p3, p8}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    return-void

    .line 732
    :cond_1
    iget v4, p2, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->simId:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/action/ActionDoneListener;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 0

    .line 65
    invoke-static/range {p0 .. p6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/action/ActionDoneListener;)V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 105
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->b(Landroid/telecom/Call;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 3

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 334
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "turning on mute: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v0

    .line 2127
    iget-object v1, v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->b:Landroid/telecom/InCallService;

    if-eqz v1, :cond_0

    .line 2128
    iget-object v0, v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->b:Landroid/telecom/InCallService;

    invoke-virtual {v0, p0}, Landroid/telecom/InCallService;->setMuted(Z)V

    return-void

    .line 2130
    :cond_0
    sget-object p0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 770
    const-class v6, Lcom/callapp/contacts/manager/phone/PhoneManager;

    if-eqz p5, :cond_1

    .line 771
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fQ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fQ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v7}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 773
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v7, "Incognito"

    const-string v8, "User made first incognito call"

    invoke-virtual {v0, v7, v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v9

    const-wide/16 v13, 0x0

    const-string v10, "Incognito"

    const-string v11, "User made incognito call"

    const-string v12, ""

    invoke-virtual/range {v9 .. v14}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 776
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/IncognitoCallManager;->markIncognito(Lcom/callapp/framework/phone/Phone;)V

    .line 779
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    .line 780
    sget-object v7, Lcom/callapp/contacts/manager/phone/PhoneManager;->c:Ljava/lang/String;

    const-string v8, "#"

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->i()Z

    move-result v7

    const-string v8, "Failed"

    const/high16 v9, 0x10000000

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_7

    .line 783
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "tel:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 785
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v0, v12, :cond_2

    const-string v0, "telecom"

    .line 786
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 787
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->get()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/callapp/contacts/manager/sim/SimManager;->getPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 789
    invoke-virtual {v0, v12}, Landroid/telecom/TelecomManager;->isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 791
    :try_start_0
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v14, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 792
    invoke-virtual {v13, v14, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 793
    invoke-virtual {v0, v7, v13}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v10

    :catch_0
    move-exception v0

    .line 796
    invoke-static {v6, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 802
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v12, "android.intent.action.CALL"

    invoke-direct {v0, v12, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 804
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string v12, "android.intent.action.DIAL"

    invoke-direct {v0, v12, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 807
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v7

    invoke-virtual {v7, v2, v0, v5}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Lcom/callapp/framework/phone/Phone;Landroid/content/Intent;I)V

    .line 810
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 811
    invoke-static/range {p2 .. p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 812
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_4
    invoke-static {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->d(Landroid/content/Context;)V

    return v11

    .line 818
    :cond_5
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_6

    .line 819
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 822
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 824
    :try_start_1
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return v10

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 826
    invoke-static {v6, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 827
    invoke-static {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->d(Landroid/content/Context;)V

    return v11

    .line 832
    :cond_7
    invoke-static {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "skype:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?call"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 834
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.skype.raider/.Main"

    .line 835
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 837
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 838
    invoke-static/range {p2 .. p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 839
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_8
    invoke-static {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->d(Landroid/content/Context;)V

    return v11

    .line 845
    :cond_9
    instance-of v0, v1, Landroid/app/Activity;

    if-nez v0, :cond_a

    .line 846
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 849
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 850
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v5, "Clicked"

    invoke-virtual {v0, v3, v4, v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_b
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 855
    :try_start_2
    invoke-static {p0, v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    return v10

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 857
    invoke-static {v6, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 858
    invoke-static {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->d(Landroid/content/Context;)V

    return v11

    .line 864
    :cond_c
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v9, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v2, 0x7f12065b

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f12065a

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f1204ea

    .line 865
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/callapp/contacts/manager/phone/PhoneManager$5;

    invoke-direct {v7}, Lcom/callapp/contacts/manager/phone/PhoneManager$5;-><init>()V

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 864
    invoke-virtual {v0, p0, v9}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return v11
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/phone/PhoneManager;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->b:Z

    return p0
.end method

.method public static a(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;)Z
    .locals 2

    .line 210
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 212
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setCallActionSource(Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;)V

    .line 213
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    if-eqz p0, :cond_1

    .line 1153
    invoke-virtual {p0}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object p1

    .line 1154
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1155
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/Call;

    invoke-virtual {p0, p1}, Landroid/telecom/Call;->conference(Landroid/telecom/Call;)V

    goto :goto_0

    .line 1157
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/telecom/Call$Details;->can(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1159
    invoke-virtual {p0}, Landroid/telecom/Call;->mergeConference()V

    goto :goto_0

    .line 1163
    :cond_1
    sget-object p1, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error merge, call not in call list "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private static b(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 0

    if-eqz p6, :cond_0

    .line 716
    invoke-interface {p6}, Lcom/callapp/contacts/action/ActionDoneListener;->a()V

    .line 719
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p6, :cond_1

    .line 722
    invoke-interface {p6, p0}, Lcom/callapp/contacts/action/ActionDoneListener;->a(Z)V

    :cond_1
    return-void
.end method

.method public static b(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;)V
    .locals 3

    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 318
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setCallActionSource(Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;)V

    .line 322
    const-class p1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Putting the call on hold: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->c(Landroid/telecom/Call;)V

    :cond_0
    return-void
.end method

.method private static c(Landroid/telecom/Call;)Landroid/net/Uri;
    .locals 3

    .line 367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    if-nez p0, :cond_0

    return-object v1

    .line 368
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static c()Z
    .locals 6

    .line 235
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v1, v3, :cond_4

    const-string v1, "answer Incoming Call"

    .line 236
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Lcom/callapp/contacts/model/call/CallState;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v1

    .line 238
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "incomingCall: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 242
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getStateBeforeMerge()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setStateBeforeMerge(Z)V

    .line 245
    const-class v3, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-string v4, "cannot add call. hang hold call and continue"

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getConferenceManager()Landroid/telecom/Call;

    move-result-object v3

    if-nez v3, :cond_0

    .line 248
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v3

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getBackgroundCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    .line 251
    const-class v4, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-string v5, "hang hold call"

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->b(Landroid/telecom/Call;)V

    goto :goto_0

    .line 254
    :cond_1
    const-class v3, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-string v4, "cannot find hold call"

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 257
    :cond_2
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video state = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    if-eqz v1, :cond_3

    .line 2057
    invoke-virtual {v1, v0}, Landroid/telecom/Call;->answer(I)V

    goto :goto_1

    .line 2059
    :cond_3
    sget-object v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error answerCall, call not in call list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v2
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    .line 683
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "voicemail"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 684
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 686
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 690
    :cond_0
    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneManager$3;

    invoke-direct {v1, v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneManager$3;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    const v0, 0x7f120819

    .line 699
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 9

    const v0, 0x7f1202f1

    .line 661
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 662
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v1, 0x7f1204ea

    .line 663
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/callapp/contacts/manager/phone/PhoneManager$2;

    invoke-direct {v6}, Lcom/callapp/contacts/manager/phone/PhoneManager$2;-><init>()V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 662
    invoke-virtual {v0, p0, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 2

    .line 1092
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.skype.raider"

    const/4 v1, 0x1

    .line 1094
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f()Z
    .locals 4

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 341
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Lcom/callapp/contacts/model/call/CallState;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 3083
    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    goto :goto_0

    .line 3085
    :cond_0
    sget-object v1, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error rejectCall, call not in call list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static get()Lcom/callapp/contacts/manager/phone/PhoneManager;
    .locals 1

    .line 893
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getPhoneManager()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioMode()I
    .locals 1

    .line 224
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method static getCurrentAudioMode()I
    .locals 1

    const-string v0, "audio"

    .line 493
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 494
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    return v0
.end method

.method private getNetworkCountryIso()Ljava/lang/String;
    .locals 3

    .line 1066
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1067
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1070
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1075
    const-class v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static getRingerMode()I
    .locals 1

    const-string v0, "audio"

    .line 498
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 499
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method static getStreamVolume(I)I
    .locals 1

    const-string v0, "audio"

    .line 512
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 513
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "telecom"

    .line 277
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTelephoneService()Lcom/android/internal/telephony/ITelephony;
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->d:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    return-object v0

    .line 88
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->e:Landroid/telephony/TelephonyManager;

    const-string v1, "getITelephony"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->d:Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 91
    const-class v1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    const-string v2, "PhoneManager constructor failed"

    invoke-static {v1, v0, v2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->d:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method private getVoiceMailNumberAsGlobal()Ljava/lang/String;
    .locals 3

    .line 943
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bU:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 944
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 949
    const-class v2, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const-string v1, ""

    .line 952
    :goto_0
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 953
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    .line 954
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bU:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getVoiceMailNumbers()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->f:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 963
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->f:Ljava/util/Collection;

    .line 964
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    const-string v2, "*151"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 967
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 971
    const-class v1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const-string v0, ""

    .line 974
    :goto_0
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->f:Ljava/util/Collection;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->f:Ljava/util/Collection;

    return-object v0
.end method

.method public static i()Z
    .locals 2

    .line 897
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBluetoothAudioSCOActive()Z
    .locals 1

    const-string v0, "audio"

    .line 550
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 551
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    return v0
.end method

.method public static isMuteOn()Z
    .locals 1

    const-string v0, "audio"

    .line 455
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 456
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public static k()V
    .locals 2

    .line 1102
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneManager$MyCountryRegionProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager$MyCountryRegionProvider;-><init>(Lcom/callapp/contacts/manager/phone/PhoneManager$1;)V

    invoke-static {v0}, Lcom/callapp/framework/phone/Phone;->setCountryRegionProvider(Lcom/callapp/framework/phone/CountryRegionProvider;)V

    return-void
.end method

.method public static setAudioMode(I)V
    .locals 3

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 229
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending new Audio Mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->setAudioRoute(I)V

    :cond_0
    return-void
.end method

.method static setRingerMode(I)V
    .locals 1

    const-string v0, "audio"

    .line 503
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 505
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 507
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

.method static setStreamVolume(II)V
    .locals 2

    :try_start_0
    const-string v0, "audio"

    .line 518
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 519
    invoke-virtual {v0, p0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 522
    const-class p1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 1136
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->a:Landroidx/b/e;

    invoke-virtual {v0, p1}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/framework/phone/Phone;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1141
    invoke-static {p1}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 1142
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1143
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->a:Landroidx/b/e;

    invoke-virtual {v1, p1, v0}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final a()Z
    .locals 8

    .line 114
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    .line 115
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_5

    .line 117
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getConferenceManager()Landroid/telecom/Call;

    move-result-object v1

    .line 118
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAllCallsInConference()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getAllConnectingOrConnectedCalls()Ljava/util/List;

    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/google/android/gms/common/util/g;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getAllHoldCalls()Ljava/util/List;

    move-result-object v1

    .line 130
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/model/call/CallData;

    new-array v6, v2, [Ljava/lang/Object;

    .line 131
    invoke-virtual {v5}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "hanging up "

    invoke-static {v0, v7, v6}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 134
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->b(Landroid/telecom/Call;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_5

    .line 121
    :cond_4
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->b(Landroid/telecom/Call;)V

    goto :goto_5

    .line 142
    :cond_5
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getTelephoneService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 145
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v4, "hangup method returned: %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v4, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_2

    :catch_7
    move-exception v2

    :goto_2
    const/4 v1, 0x0

    :goto_3
    const-string v3, "Failed to call hangup method"

    .line 148
    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4
    move v2, v1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    return v2
.end method

.method public final a(Lcom/callapp/framework/phone/Phone;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 916
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getVoiceMailNumbers()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/callapp/framework/phone/Phone;

    aput-object p1, v2, v0

    .line 917
    invoke-static {v1, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    .line 556
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 558
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getSupportedAudio()I

    move-result p1

    const/4 v1, 0x2

    and-int/2addr p1, v1

    const/4 v2, 0x5

    const/16 v3, 0x8

    if-eqz p1, :cond_1

    .line 559
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getAudioMode()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isSpeakerDisabled()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 568
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getAudioMode()I

    move-result p1

    if-ne p1, v3, :cond_2

    :goto_0
    const/4 v1, 0x5

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v1, 0x8

    .line 572
    :cond_3
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Audio route changed to "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 573
    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->setAudioMode(I)V

    return-void

    :cond_4
    const-string v1, "audio"

    .line 576
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 577
    invoke-static {}, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->isUsingBT()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 579
    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 580
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 581
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 582
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 3628
    iput-boolean v2, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->b:Z

    return-void

    .line 584
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isSpeakerOn()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    .line 585
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 587
    invoke-static {}, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->isBluetoothConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 589
    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 590
    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 591
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void

    .line 594
    :cond_6
    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 595
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 596
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 4628
    iput-boolean v2, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->b:Z

    return-void

    .line 601
    :cond_7
    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 602
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 603
    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 604
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 5628
    iput-boolean v3, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 6

    .line 161
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getBackgroundCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/call/CallState;->isOnHold()Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    .line 169
    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "releasing from hold "

    invoke-static {v0, v4, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->d(Landroid/telecom/Call;)V

    return v2

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getActiveCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    if-ne v4, v5, :cond_1

    new-array v4, v3, [Ljava/lang/Object;

    .line 180
    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "putting on hold "

    invoke-static {v0, v5, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->c(Landroid/telecom/Call;)V

    return v3

    :cond_1
    return v2
.end method

.method public final b(Landroid/telecom/Call;)Z
    .locals 2

    .line 671
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "telecom"

    .line 672
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 674
    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-static {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/telecom/TelecomManager;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 676
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/callapp/framework/phone/Phone;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 926
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "*151"

    .line 928
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getVoiceMailNumberAsGlobal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 935
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 2

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 288
    const-class v1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->d:Lcom/android/internal/telephony/ITelephony;

    return-void
.end method

.method public final e()V
    .locals 3

    .line 299
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v0

    .line 300
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fz:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 302
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fa:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 304
    :cond_0
    const-class v1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "is default app? "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 4

    .line 615
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneManager$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/phone/PhoneManager$1;-><init>(Lcom/callapp/contacts/manager/phone/PhoneManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getActiveCall()Lcom/callapp/contacts/model/call/CallData;
    .locals 2

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 390
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Lcom/callapp/contacts/model/call/CallState;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveOrBackgroundCall()Lcom/callapp/contacts/model/call/CallData;
    .locals 2

    .line 410
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 411
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Lcom/callapp/contacts/model/call/CallState;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 413
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->ON_HOLD:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Lcom/callapp/contacts/model/call/CallState;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllPossibleCountryIsos()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1030
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1032
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1033
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1034
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1037
    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aP:Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1038
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1042
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1043
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1044
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getBackgroundCall()Lcom/callapp/contacts/model/call/CallData;
    .locals 2

    .line 374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 375
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->ON_HOLD:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Lcom/callapp/contacts/model/call/CallState;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .line 989
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getConnectingOrActiveCall()Lcom/callapp/contacts/model/call/CallData;
    .locals 4

    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 442
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/callapp/contacts/model/call/CallState;

    const/4 v2, 0x0

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->CONNECTING:Lcom/callapp/contacts/model/call/CallState;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->ON_HOLD:Lcom/callapp/contacts/model/call/CallState;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Ljava/util/List;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCountryIso()Ljava/lang/String;
    .locals 3

    .line 1003
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1005
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->h:Ljava/lang/String;

    .line 1007
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1008
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aP:Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->h:Ljava/lang/String;

    .line 1011
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1013
    :try_start_1
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1015
    :try_start_2
    const-class v2, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 1019
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 1020
    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->h:Ljava/lang/String;

    .line 1023
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->h:Ljava/lang/String;

    .line 1025
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1026
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->h:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    .line 1025
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 983
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCall()Lcom/callapp/contacts/model/call/CallData;
    .locals 2

    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 397
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Lcom/callapp/contacts/model/call/CallState;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIncomingOrConnectingOrConnectedCall()Lcom/callapp/contacts/model/call/CallData;
    .locals 4

    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 428
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/callapp/contacts/model/call/CallState;

    const/4 v2, 0x0

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->CONNECTING:Lcom/callapp/contacts/model/call/CallState;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->ON_HOLD:Lcom/callapp/contacts/model/call/CallState;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Ljava/util/List;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1085
    const-class v1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public getOutGoingCall()Lcom/callapp/contacts/model/call/CallData;
    .locals 2

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 404
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Lcom/callapp/contacts/model/call/CallState;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 3

    .line 1051
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1052
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1056
    :cond_0
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1057
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSimStateForSubscriptionId(I)I
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    return p1
.end method

.method public getSupportedAudio()I
    .locals 1

    .line 157
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public getTalkingCall()Lcom/callapp/contacts/model/call/CallData;
    .locals 2

    .line 434
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 435
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Lcom/callapp/contacts/model/call/CallState;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailName()Ljava/lang/String;
    .locals 2

    .line 902
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 904
    const-class v1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public final h()Z
    .locals 6

    .line 632
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    .line 633
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->d:Lcom/android/internal/telephony/ITelephony;

    const-string v3, "Failed to showDialPad"

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 636
    :try_start_0
    invoke-interface {v1, v4}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    .line 638
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-nez v2, :cond_2

    .line 643
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_2

    const-string v1, "telecom"

    .line 644
    invoke-static {v1}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_1

    .line 647
    :try_start_1
    invoke-virtual {v1, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    .line 650
    :goto_2
    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    move v4, v2

    :goto_3
    return v4

    :cond_2
    return v2
.end method

.method public init()V
    .locals 1

    const-string v0, "phone"

    .line 78
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->e:Landroid/telephony/TelephonyManager;

    .line 79
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getTelephoneService()Lcom/android/internal/telephony/ITelephony;

    return-void
.end method

.method public isDefaultPhoneApp()Z
    .locals 1

    .line 295
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fz:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDefaultSystemPhoneApp()Z
    .locals 2

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 310
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHeadsetConnected()Z
    .locals 2

    .line 528
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->isHeadSetOn()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "audio"

    .line 531
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 532
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 536
    const-class v1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isInDriveMode()Z
    .locals 1

    .line 193
    sget-object v0, Lcom/callapp/contacts/service/jobs/BluetoothServiceV1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gU:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInDriveModeButNotConnected()Z
    .locals 1

    .line 197
    sget-object v0, Lcom/callapp/contacts/service/jobs/BluetoothServiceV1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gU:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInDriveModeIncoming()Z
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isInDriveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gV:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInDriveModeOutgoing()Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isInDriveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getOutGoingCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 384
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v0

    return v0
.end method

.method public isSpeakerDisabled()Z
    .locals 3

    .line 220
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getAudioMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getAudioMode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isSpeakerOn()Z
    .locals 2

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->isSpeakerOn()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "audio"

    .line 483
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 484
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 487
    const-class v1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isSwappable()Z
    .locals 2

    .line 421
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 422
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getAllHoldCalls()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallTalking()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUsingBT()Z
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->isBluetoothOn()Z

    move-result v0

    return v0

    .line 545
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->isUsingBT()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 998
    :try_start_0
    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager;->h:Ljava/lang/String;

    .line 999
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1

    .line 467
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 468
    :goto_0
    invoke-static {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->setAudioMode(I)V

    return-void

    :cond_1
    const-string v0, "audio"

    .line 470
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 471
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 474
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method
