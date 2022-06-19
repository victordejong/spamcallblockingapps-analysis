.class Lcom/facebook/a/d/j;
.super Ljava/lang/Object;
.source "SessionLogger.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/facebook/a/d/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/d/j;->a:Ljava/lang/String;

    .line 46
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/a/d/j;->b:[J

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

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)I
    .locals 4

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    sget-object v1, Lcom/facebook/a/d/j;->b:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/facebook/a/d/j;->b:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p0

    if-gez v1, :cond_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PCKGCHKSUM;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    const-string/jumbo v0, "com.facebook.sdk.appEventPreferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 173
    const/4 v0, 0x0

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 184
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 180
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/a/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 184
    goto :goto_0
.end method

.method private static a()V
    .locals 3

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    sget-object v1, Lcom/facebook/a/d/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "Clock skew detected"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/a/d/i;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/facebook/a/d/i;->f()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/a/d/i;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/facebook/a/d/j;->a()V

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/a/d/i;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 111
    invoke-static {}, Lcom/facebook/a/d/j;->a()V

    .line 112
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 115
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string/jumbo v3, "fb_mobile_app_interruptions"

    .line 118
    invoke-virtual {p1}, Lcom/facebook/a/d/i;->d()I

    move-result v4

    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string/jumbo v3, "fb_mobile_time_between_sessions"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v5, "session_quanta_%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/facebook/a/d/j;->a(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    .line 121
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/facebook/a/d/i;->i()Lcom/facebook/a/d/k;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {v0}, Lcom/facebook/a/d/k;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    const-string/jumbo v3, "fb_mobile_launch_source"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, "_logTime"

    .line 134
    invoke-virtual {p1}, Lcom/facebook/a/d/i;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 133
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 136
    new-instance v0, Lcom/facebook/a/m;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p2, v3}, Lcom/facebook/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/a;)V

    const-string/jumbo v3, "fb_mobile_deactivate_app"

    .line 142
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 140
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/facebook/a/m;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 144
    return-void

    .line 127
    :cond_2
    const-string/jumbo v0, "Unclassified"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/a/d/k;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 75
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/facebook/a/d/k;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string/jumbo v2, "fb_mobile_launch_source"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "fb_mobile_pckg_fp"

    .line 84
    invoke-static {p3}, Lcom/facebook/a/d/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v0, "fb_mobile_app_cert_hash"

    .line 86
    invoke-static {p3}, Lcom/facebook/internal/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/facebook/a/m;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lcom/facebook/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/a;)V

    .line 91
    const-string/jumbo v2, "fb_mobile_activate_app"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/a/m;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lcom/facebook/a/m;->a()Lcom/facebook/a/g$a;

    move-result-object v1

    sget-object v2, Lcom/facebook/a/g$a;->b:Lcom/facebook/a/g$a;

    if-eq v1, v2, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/facebook/a/m;->b()V

    .line 95
    :cond_0
    return-void

    .line 76
    :cond_1
    const-string/jumbo v0, "Unclassified"

    goto :goto_0
.end method
