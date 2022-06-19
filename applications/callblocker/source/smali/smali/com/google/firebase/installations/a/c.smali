.class public Lcom/google/firebase/installations/a/c;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/a/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/google/firebase/b;


# direct methods
.method public constructor <init>(Lcom/google/firebase/b;)V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/io/File;

    .line 84
    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PersistedInstallation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/installations/a/c;->a:Ljava/io/File;

    .line 86
    iput-object p1, p0, Lcom/google/firebase/installations/a/c;->b:Lcom/google/firebase/b;

    .line 87
    return-void
.end method

.method private b()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 115
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 117
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/google/firebase/installations/a/c;->a:Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    .line 119
    :goto_0
    const/4 v4, 0x0

    :try_start_1
    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 120
    if-gez v4, :cond_0

    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 127
    :goto_1
    return-object v0

    .line 123
    :cond_0
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_1
    move-exception v0

    .line 127
    :goto_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 126
    :cond_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method public a()Lcom/google/firebase/installations/a/d;
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 91
    invoke-direct {p0}, Lcom/google/firebase/installations/a/c;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    const-string/jumbo v1, "Fid"

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string/jumbo v2, "Status"

    sget-object v3, Lcom/google/firebase/installations/a/c$a;->a:Lcom/google/firebase/installations/a/c$a;

    invoke-virtual {v3}, Lcom/google/firebase/installations/a/c$a;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 95
    const-string/jumbo v3, "AuthToken"

    invoke-virtual {v0, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    const-string/jumbo v4, "RefreshToken"

    invoke-virtual {v0, v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    const-string/jumbo v5, "TokenCreationEpochInSecs"

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 98
    const-string/jumbo v5, "ExpiresInSecs"

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 99
    const-string/jumbo v5, "FisError"

    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/google/firebase/installations/a/d;->p()Lcom/google/firebase/installations/a/d$a;

    move-result-object v5

    .line 103
    invoke-virtual {v5, v1}, Lcom/google/firebase/installations/a/d$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v1

    .line 104
    invoke-static {}, Lcom/google/firebase/installations/a/c$a;->values()[Lcom/google/firebase/installations/a/c$a;

    move-result-object v5

    aget-object v2, v5, v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/installations/a/d$a;->a(Lcom/google/firebase/installations/a/c$a;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v3}, Lcom/google/firebase/installations/a/d$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v4}, Lcom/google/firebase/installations/a/d$a;->c(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v6, v7}, Lcom/google/firebase/installations/a/d$a;->b(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v8, v9}, Lcom/google/firebase/installations/a/d$a;->a(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v0}, Lcom/google/firebase/installations/a/d$a;->d(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method public a(Lcom/google/firebase/installations/a/d;)Lcom/google/firebase/installations/a/d;
    .locals 4

    .prologue
    .line 141
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 142
    const-string/jumbo v1, "Fid"

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string/jumbo v1, "Status"

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->b()Lcom/google/firebase/installations/a/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/a/c$a;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v1, "AuthToken"

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v1, "RefreshToken"

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v1, "TokenCreationEpochInSecs"

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v1, "ExpiresInSecs"

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v1, "FisError"

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v1, "PersistedInstallation"

    const-string/jumbo v2, "tmp"

    iget-object v3, p0, Lcom/google/firebase/installations/a/c;->b:Lcom/google/firebase/b;

    .line 151
    invoke-virtual {v3}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 150
    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 155
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 156
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 159
    iget-object v0, p0, Lcom/google/firebase/installations/a/c;->a:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unable to rename the tmpfile to PersistedInstallation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    :catch_0
    move-exception v0

    .line 171
    :cond_0
    :goto_0
    return-object p1

    .line 162
    :catch_1
    move-exception v0

    goto :goto_0
.end method
