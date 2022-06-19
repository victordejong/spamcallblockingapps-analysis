.class Lcom/facebook/appevents/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "com.facebook.appevents.f.h"

.field private static final b:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [J

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/appevents/f/h;->b:[J

    return-void

    :array_0
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)I
    .locals 6

    const-class v0, Lcom/facebook/appevents/f/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 138
    :goto_0
    :try_start_0
    sget-object v3, Lcom/facebook/appevents/f/h;->b:[J

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-wide v4, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v4, p0

    if-gez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1

    :catchall_0
    move-exception p0

    .line 143
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-class v0, Lcom/facebook/appevents/f/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 150
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v5, "PCKGCHKSUM;"

    .line 152
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.facebook.sdk.appEventPreferences"

    .line 154
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 155
    invoke-interface {v5, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 156
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1

    return-object v6

    .line 161
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 162
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 6017
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/appevents/f/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 166
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_0
    return-object v2
.end method

.method private static a()V
    .locals 4

    const-class v0, Lcom/facebook/appevents/f/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 131
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    sget-object v2, Lcom/facebook/appevents/f/h;->a:Ljava/lang/String;

    const-string v3, "Clock skew detected"

    invoke-static {v1, v2, v3}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 132
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/facebook/appevents/f/g;Ljava/lang/String;)V
    .locals 11

    const-class v0, Lcom/facebook/appevents/f/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2113
    :cond_1
    :try_start_0
    iget-object v1, p1, Lcom/facebook/appevents/f/g;->d:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    move-wide v4, v2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/facebook/appevents/f/g;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3097
    :goto_0
    iget-object v1, p1, Lcom/facebook/appevents/f/g;->b:Ljava/lang/Long;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_3

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 99
    invoke-static {}, Lcom/facebook/appevents/f/h;->a()V

    .line 3121
    :cond_3
    iget-object v4, p1, Lcom/facebook/appevents/f/g;->a:Ljava/lang/Long;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/facebook/appevents/f/g;->b:Ljava/lang/Long;

    if-nez v4, :cond_4

    goto :goto_1

    .line 3125
    :cond_4
    iget-object v4, p1, Lcom/facebook/appevents/f/g;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p1, Lcom/facebook/appevents/f/g;->a:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    goto :goto_2

    :cond_5
    :goto_1
    move-wide v4, v2

    .line 102
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 103
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_6

    .line 104
    invoke-static {}, Lcom/facebook/appevents/f/h;->a()V

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 108
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "fb_mobile_app_interruptions"

    .line 4105
    iget v5, p1, Lcom/facebook/appevents/f/g;->c:I

    .line 109
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "fb_mobile_time_between_sessions"

    .line 111
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "session_quanta_%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 114
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/facebook/appevents/f/h;->a(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    .line 113
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4129
    iget-object v1, p1, Lcom/facebook/appevents/f/g;->e:Lcom/facebook/appevents/f/i;

    if-eqz v1, :cond_7

    .line 117
    invoke-virtual {v1}, Lcom/facebook/appevents/f/i;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    const-string v1, "Unclassified"

    :goto_3
    const-string v3, "fb_mobile_launch_source"

    .line 118
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_logTime"

    .line 5097
    iget-object p1, p1, Lcom/facebook/appevents/f/g;->b:Ljava/lang/Long;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 120
    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 123
    new-instance p1, Lcom/facebook/appevents/m;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v1}, Lcom/facebook/appevents/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string p0, "fb_mobile_deactivate_app"

    .line 126
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    .line 124
    invoke-virtual {p1, p0, v3, v4, v2}, Lcom/facebook/appevents/m;->a(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 128
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/f/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "Unclassified"

    .line 77
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "fb_mobile_launch_source"

    .line 78
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_mobile_pckg_fp"

    .line 80
    invoke-static {p2}, Lcom/facebook/appevents/f/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_mobile_app_cert_hash"

    .line 82
    invoke-static {p2}, Lcom/facebook/internal/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance p2, Lcom/facebook/appevents/m;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/facebook/appevents/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string p0, "fb_mobile_activate_app"

    .line 84
    invoke-virtual {p2, p0, v2}, Lcom/facebook/appevents/m;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1119
    invoke-static {}, Lcom/facebook/appevents/h;->a()I

    move-result p0

    .line 85
    sget p1, Lcom/facebook/appevents/g$a;->b:I

    if-eq p0, p1, :cond_1

    .line 1123
    iget-object p0, p2, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/h;

    invoke-virtual {p0}, Lcom/facebook/appevents/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 88
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
