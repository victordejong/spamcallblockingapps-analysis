.class public final Lcom/facebook/internal/a/c;
.super Ljava/lang/Object;
.source "InstrumentUtility.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-static {}, Lcom/facebook/internal/a/c;->b()Ljava/io/File;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v0, v1

    .line 164
    :goto_0
    return-object v0

    .line 153
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 157
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 158
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    if-eqz p1, :cond_2

    .line 161
    invoke-static {p0}, Lcom/facebook/internal/a/c;->a(Ljava/lang/String;)Z

    :cond_2
    move-object v0, v1

    .line 164
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/facebook/internal/a/c;->b()Ljava/io/File;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 186
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/k$b;)V
    .locals 6

    .prologue
    .line 214
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 220
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v1, 0x0

    const-string/jumbo v2, "%s/instruments"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 226
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 225
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p2}, Lcom/facebook/k;->a(Lcom/facebook/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/facebook/k;->j()Lcom/facebook/l;

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/facebook/internal/a/c;->b()Ljava/io/File;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 204
    :cond_0
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    .line 206
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static a()[Ljava/io/File;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-static {}, Lcom/facebook/internal/a/c;->b()Ljava/io/File;

    move-result-object v0

    .line 125
    if-nez v0, :cond_1

    .line 126
    new-array v0, v2, [Ljava/io/File;

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    new-instance v1, Lcom/facebook/internal/a/c$1;

    invoke-direct {v1}, Lcom/facebook/internal/a/c$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 135
    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/io/File;

    goto :goto_0
.end method

.method public static b()Ljava/io/File;
    .locals 3

    .prologue
    .line 243
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 244
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "instrument"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p0, :cond_0

    .line 86
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v0

    .line 80
    :goto_1
    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_2

    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 82
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Throwable;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 97
    if-nez p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    const/4 v1, 0x0

    move-object v2, v1

    .line 103
    :goto_1
    if-eqz p0, :cond_0

    if-eq p0, v2, :cond_0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 105
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.facebook"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    move-object v2, p0

    move-object p0, v1

    goto :goto_1
.end method
