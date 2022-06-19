.class public final Lcom/facebook/internal/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/b/b$a;,
        Lcom/facebook/internal/b/b$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/internal/b/b$b;

.field private c:Lorg/json/JSONArray;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/b/b;->a:Ljava/lang/String;

    const-string v0, "crash_log_"

    .line 1130
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    sget-object p1, Lcom/facebook/internal/b/b$b;->CrashReport:Lcom/facebook/internal/b/b$b;

    goto :goto_0

    :cond_0
    const-string v0, "shield_log_"

    .line 1132
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    sget-object p1, Lcom/facebook/internal/b/b$b;->CrashShield:Lcom/facebook/internal/b/b$b;

    goto :goto_0

    :cond_1
    const-string v0, "thread_check_log_"

    .line 1134
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1135
    sget-object p1, Lcom/facebook/internal/b/b$b;->ThreadCheck:Lcom/facebook/internal/b/b$b;

    goto :goto_0

    :cond_2
    const-string v0, "analysis_log_"

    .line 1136
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1137
    sget-object p1, Lcom/facebook/internal/b/b$b;->Analysis:Lcom/facebook/internal/b/b$b;

    goto :goto_0

    .line 1139
    :cond_3
    sget-object p1, Lcom/facebook/internal/b/b$b;->Unknown:Lcom/facebook/internal/b/b$b;

    .line 118
    :goto_0
    iput-object p1, p0, Lcom/facebook/internal/b/b;->b:Lcom/facebook/internal/b/b$b;

    .line 119
    iget-object p1, p0, Lcom/facebook/internal/b/b;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/internal/b/d;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x0

    const-string v2, "timestamp"

    .line 121
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/b/b;->g:Ljava/lang/Long;

    const-string v0, "app_version"

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/b/b;->d:Ljava/lang/String;

    const-string v0, "reason"

    .line 123
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/b/b;->e:Ljava/lang/String;

    const-string v0, "callstack"

    .line 124
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/b/b;->f:Ljava/lang/String;

    const-string v0, "feature_names"

    .line 125
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/b/b;->c:Lorg/json/JSONArray;

    :cond_4
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/facebook/internal/b/b$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/internal/b/b;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;Lcom/facebook/internal/b/b$b;)V
    .locals 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/facebook/internal/b/b;->b:Lcom/facebook/internal/b/b$b;

    .line 104
    invoke-static {}, Lcom/facebook/internal/ae;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/b/b;->d:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/facebook/internal/b/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/b/b;->e:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/facebook/internal/b/d;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/b/b;->f:Ljava/lang/String;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/b/b;->g:Ljava/lang/Long;

    .line 108
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    invoke-virtual {p2}, Lcom/facebook/internal/b/b$b;->getLogPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/facebook/internal/b/b;->g:Ljava/lang/Long;

    .line 111
    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ".json"

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lcom/facebook/internal/b/b$b;Lcom/facebook/internal/b/b$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/b/b;-><init>(Ljava/lang/Throwable;Lcom/facebook/internal/b/b$b;)V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONArray;)V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/facebook/internal/b/b$b;->Analysis:Lcom/facebook/internal/b/b$b;

    iput-object v0, p0, Lcom/facebook/internal/b/b;->b:Lcom/facebook/internal/b/b$b;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/b/b;->g:Ljava/lang/Long;

    .line 93
    iput-object p1, p0, Lcom/facebook/internal/b/b;->c:Lorg/json/JSONArray;

    .line 94
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "analysis_log_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/internal/b/b;->g:Ljava/lang/Long;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".json"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/json/JSONArray;Lcom/facebook/internal/b/b$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/internal/b/b;-><init>(Lorg/json/JSONArray;)V

    return-void
.end method

.method private d()Lorg/json/JSONObject;
    .locals 3

    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/facebook/internal/b/b;->c:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    const-string v2, "feature_names"

    .line 202
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/b/b;->g:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v2, "timestamp"

    .line 205
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Lorg/json/JSONObject;
    .locals 3

    .line 216
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "device_os_version"

    .line 218
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_model"

    .line 219
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    iget-object v1, p0, Lcom/facebook/internal/b/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "app_version"

    .line 221
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/b/b;->g:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v2, "timestamp"

    .line 224
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/facebook/internal/b/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "reason"

    .line 227
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/facebook/internal/b/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "callstack"

    .line 230
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/facebook/internal/b/b;->b:Lcom/facebook/internal/b/b$b;

    if-eqz v1, :cond_4

    const-string v2, "type"

    .line 233
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/internal/b/b;)I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/facebook/internal/b/b;->g:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 146
    :cond_0
    iget-object p1, p1, Lcom/facebook/internal/b/b;->g:Ljava/lang/Long;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 149
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public final a()Z
    .locals 4

    .line 153
    sget-object v0, Lcom/facebook/internal/b/b$1;->a:[I

    iget-object v1, p0, Lcom/facebook/internal/b/b;->b:Lcom/facebook/internal/b/b$b;

    invoke-virtual {v1}, Lcom/facebook/internal/b/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    return v1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/internal/b/b;->g:Ljava/lang/Long;

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/facebook/internal/b/b;->c:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/internal/b/b;->g:Ljava/lang/Long;

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final b()V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/facebook/internal/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/internal/b/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/facebook/internal/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/b/d;->b(Ljava/lang/String;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1186
    sget-object v0, Lcom/facebook/internal/b/b$1;->a:[I

    iget-object v1, p0, Lcom/facebook/internal/b/b;->b:Lcom/facebook/internal/b/b$b;

    invoke-virtual {v1}, Lcom/facebook/internal/b/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 1192
    :cond_0
    invoke-direct {p0}, Lcom/facebook/internal/b/b;->e()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 1188
    :cond_1
    invoke-direct {p0}, Lcom/facebook/internal/b/b;->d()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-object v2

    .line 181
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
