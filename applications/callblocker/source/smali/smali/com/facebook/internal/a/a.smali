.class public final Lcom/facebook/internal/a/a;
.super Ljava/lang/Object;
.source "InstrumentData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/a/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/a;->a:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/facebook/internal/a/a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/internal/a/c;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    const-string/jumbo v1, "app_version"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/a/a;->b:Ljava/lang/String;

    .line 89
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/a/a;->c:Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "callstack"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/a/a;->d:Ljava/lang/String;

    .line 91
    const-string/jumbo v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/a/a;->e:Ljava/lang/Long;

    .line 92
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/a;->f:Ljava/lang/String;

    .line 94
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/facebook/internal/a/a$a;)V
    .locals 4

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/facebook/internal/x;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/a;->b:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/facebook/internal/a/c;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/a;->c:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/facebook/internal/a/c;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/a;->d:Ljava/lang/String;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/a;->e:Ljava/lang/Long;

    .line 76
    invoke-virtual {p2}, Lcom/facebook/internal/a/a$a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/a;->f:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "crash_log_"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/a/a;->e:Ljava/lang/Long;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ".json"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/a;->a:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/internal/a/a;)I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/internal/a/a;->e:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, -0x1

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v0, p1, Lcom/facebook/internal/a/a;->e:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p1, Lcom/facebook/internal/a/a;->e:Ljava/lang/Long;

    iget-object v1, p0, Lcom/facebook/internal/a/a;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/internal/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/a/a;->e:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/facebook/internal/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/a/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/internal/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/internal/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/a/c;->a(Ljava/lang/String;)Z

    .line 119
    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    :try_start_0
    const-string/jumbo v1, "device_os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string/jumbo v1, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    iget-object v1, p0, Lcom/facebook/internal/a/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 137
    const-string/jumbo v1, "app_version"

    iget-object v2, p0, Lcom/facebook/internal/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/a/a;->e:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 140
    const-string/jumbo v1, "timestamp"

    iget-object v2, p0, Lcom/facebook/internal/a/a;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/facebook/internal/a/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 143
    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/facebook/internal/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/facebook/internal/a/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 146
    const-string/jumbo v1, "callstack"

    iget-object v2, p0, Lcom/facebook/internal/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/facebook/internal/a/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 149
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/facebook/internal/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_4
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/facebook/internal/a/a;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
