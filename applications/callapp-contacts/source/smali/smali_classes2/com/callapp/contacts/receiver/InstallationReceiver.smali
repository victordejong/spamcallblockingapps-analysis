.class public Lcom/callapp/contacts/receiver/InstallationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/android/installreferrer/api/InstallReferrerClient;
    .locals 1

    .line 32
    sget-object v0, Lcom/callapp/contacts/receiver/InstallationReceiver;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 68
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gx:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :try_start_0
    invoke-static {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    .line 71
    sput-object v0, Lcom/callapp/contacts/receiver/InstallationReceiver;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    new-instance v1, Lcom/callapp/contacts/receiver/InstallationReceiver$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/receiver/InstallationReceiver$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 105
    const-class v0, Lcom/callapp/contacts/receiver/InstallationReceiver;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/callapp/contacts/receiver/InstallationReceiver;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gx:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gx:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1161
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isStoreNameGooglePlay()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->W:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1162
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->W:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1163
    const-class v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const v2, 0x7f12023e

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1169
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x4000000

    .line 1170
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1172
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.shortcut.NAME"

    .line 1173
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "duplicate"

    const/4 v3, 0x0

    .line 1176
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f0f0009

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 1177
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 1179
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 48
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/receiver/InstallationReceiver;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->d(Ljava/lang/String;)Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 53
    iget-object p1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/receiver/InstallationReceiver;->setOneFreeStoreGiftReeferPromotion(Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->d:Ljava/lang/String;

    const-string p1, "appWall"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 56
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->aY:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "Exception in InstallationReceiver.onReceive()"

    .line 62
    invoke-static {v0, p0, p1}, Lcom/callapp/contacts/util/CLog;->d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    .line 138
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x320

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "r"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-lez v1, :cond_0

    mul-int/lit8 v5, v2, 0x50

    const/16 v6, 0x50

    .line 144
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {p0, v5, v6}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const-string v5, ""

    .line 148
    :goto_1
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v1, v6

    mul-int/lit8 v2, v2, 0x2

    .line 150
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 151
    aput-object v5, v0, v2

    move v2, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 111
    const-class v0, Lcom/callapp/contacts/receiver/InstallationReceiver;

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Installation"

    if-eqz v1, :cond_1

    .line 113
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-le v1, v3, :cond_0

    .line 114
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    :goto_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->X:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    const-string v1, "referrer = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 119
    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    const-string v6, "Installation"

    const-string v7, "referrer"

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static {p0}, Lcom/callapp/contacts/receiver/InstallationReceiver;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v5 .. v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 123
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 124
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "failed to parse referrer = %s"

    invoke-virtual {v0, v2, v1, p0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "referrer = null"

    .line 127
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string v0, "No Referrer"

    invoke-virtual {p0, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static setOneFreeStoreGiftReeferPromotion(Ljava/lang/String;)V
    .locals 9

    const-string v0, "freegiftcover"

    .line 183
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "freegiftkeypad"

    const-string v4, "freegiftthemes"

    const-string v5, "freegiftringtones"

    const/4 v6, 0x1

    if-nez v1, :cond_1

    invoke-static {p0, v5}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    invoke-static {p0, v4}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, v3}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v7, "StoreGift"

    .line 185
    invoke-static {p0, v7}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v1, :cond_3

    .line 186
    :cond_2
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :cond_3
    if-eqz v1, :cond_8

    .line 189
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cR:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_2
    const/4 v2, -0x1

    goto :goto_3

    :sswitch_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    goto :goto_3

    :sswitch_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    :sswitch_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    packed-switch v2, :pswitch_data_0

    goto :goto_4

    .line 201
    :pswitch_0
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->cS:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->CALL_SCREEN:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    goto :goto_4

    .line 195
    :pswitch_1
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->cS:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->THEME:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 198
    :pswitch_2
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->cS:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->KEYPAD:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 192
    :pswitch_3
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->cS:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->COVER:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    :cond_8
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49427465 -> :sswitch_3
        0x2e0f4670 -> :sswitch_2
        0x3d8c0866 -> :sswitch_1
        0x5ccbdef5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "referrer"

    .line 37
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-static {p1, p2}, Lcom/callapp/contacts/receiver/InstallationReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
