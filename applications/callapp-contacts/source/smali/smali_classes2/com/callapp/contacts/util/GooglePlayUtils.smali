.class public Lcom/callapp/contacts/util/GooglePlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;
    }
.end annotation


# static fields
.field private static a:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/accounts/Account;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 1082
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->a(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->a(Landroid/accounts/Account;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 121
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 126
    :goto_0
    const-class v1, Lcom/callapp/contacts/util/GooglePlayUtils;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Error getting GoogleAdvertisingId"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;-><init>(Ljava/lang/String;Ljava/util/Collection;Lcom/callapp/contacts/util/GooglePlayUtils$1;)V

    const-wide/16 p0, 0x2710

    .line 96
    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->await(J)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 98
    invoke-virtual {v0}, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->getException()Ljava/lang/Exception;

    move-result-object p0

    if-nez p0, :cond_1

    .line 100
    invoke-virtual {v0}, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->isFinishSuccessfully()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string p1, "Failed"

    const-string v0, "getToken from google play failed"

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    instance-of p1, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    if-nez p1, :cond_4

    .line 108
    instance-of p1, p0, Ljava/io/IOException;

    if-nez p1, :cond_3

    .line 110
    instance-of p1, p0, Lcom/google/android/gms/auth/GoogleAuthException;

    if-nez p1, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    check-cast p0, Lcom/google/android/gms/auth/GoogleAuthException;

    throw p0

    .line 109
    :cond_3
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 107
    :cond_4
    check-cast p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    throw p0

    :cond_5
    :goto_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android_id"

    .line 135
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "content://com.google.android.gsf.gservices"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 142
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    invoke-static {p0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 144
    :goto_1
    :try_start_2
    const-class v2, Lcom/callapp/contacts/util/GooglePlayUtils;

    const-string v3, "Error getting GoogleServiceFrameworkId"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    invoke-static {p0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {p0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 148
    throw v0
.end method

.method public static isGooglePlayServicesAvailable()Z
    .locals 4

    .line 63
    sget v0, Lcom/callapp/contacts/util/GooglePlayUtils;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 69
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v0

    .line 70
    sput v0, Lcom/callapp/contacts/util/GooglePlayUtils;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return v1

    :catch_0
    :cond_1
    return v3
.end method
