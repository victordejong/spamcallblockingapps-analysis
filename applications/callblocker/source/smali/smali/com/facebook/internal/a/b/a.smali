.class public final Lcom/facebook/internal/a/b/a;
.super Ljava/lang/Object;
.source "ErrorReportData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/b/a;->a:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/facebook/internal/a/b/a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/internal/a/c;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/a/b/a;->c:Ljava/lang/Long;

    .line 60
    const-string/jumbo v1, "error_message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/b/a;->b:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/b/a;->c:Ljava/lang/Long;

    .line 47
    iput-object p1, p0, Lcom/facebook/internal/a/b/a;->b:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "error_log_"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/a/b/a;->c:Ljava/lang/Long;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ".json"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/a/b/a;->a:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/internal/a/b/a;)I
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/internal/a/b/a;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, -0x1

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    iget-object v0, p1, Lcom/facebook/internal/a/b/a;->c:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p1, Lcom/facebook/internal/a/b/a;->c:Ljava/lang/Long;

    iget-object v1, p0, Lcom/facebook/internal/a/b/a;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/internal/a/b/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/a/b/a;->c:Ljava/lang/Long;

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
    .line 79
    invoke-virtual {p0}, Lcom/facebook/internal/a/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/facebook/internal/a/b/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/internal/a/b/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/internal/a/b/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/a/c;->a(Ljava/lang/String;)Z

    .line 86
    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/facebook/internal/a/b/a;->c:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 102
    const-string/jumbo v1, "timestamp"

    iget-object v2, p0, Lcom/facebook/internal/a/b/a;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_0
    const-string/jumbo v1, "error_message"

    iget-object v2, p0, Lcom/facebook/internal/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/facebook/internal/a/b/a;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
