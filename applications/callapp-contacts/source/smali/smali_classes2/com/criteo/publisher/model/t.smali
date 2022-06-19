.class public Lcom/criteo/publisher/model/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/model/t$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private volatile b:Lcom/criteo/publisher/model/y;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Lcom/criteo/publisher/m0/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/t;->a:Lcom/criteo/publisher/logging/g;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/criteo/publisher/model/t;->c:Landroid/content/SharedPreferences;

    .line 77
    iput-object v0, p0, Lcom/criteo/publisher/model/t;->d:Lcom/criteo/publisher/m0/l;

    .line 78
    invoke-static {}, Lcom/criteo/publisher/model/y;->a()Lcom/criteo/publisher/model/y;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/criteo/publisher/m0/l;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/t;->a:Lcom/criteo/publisher/logging/g;

    .line 85
    iput-object p1, p0, Lcom/criteo/publisher/model/t;->c:Landroid/content/SharedPreferences;

    .line 86
    iput-object p2, p0, Lcom/criteo/publisher/model/t;->d:Lcom/criteo/publisher/m0/l;

    .line 87
    invoke-direct {p0}, Lcom/criteo/publisher/model/t;->k()Lcom/criteo/publisher/model/y;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    return-void
.end method

.method private a(Lcom/criteo/publisher/model/y;Lcom/criteo/publisher/model/y;)Lcom/criteo/publisher/model/y;
    .locals 11

    .line 121
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->g()Ljava/lang/Boolean;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->g()Ljava/lang/Boolean;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    .line 125
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->e()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->e()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v0, v2}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 129
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->d()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->d()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v0, v3}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 133
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->b()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->b()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {v0, v4}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 137
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->c()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->c()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-static {v0, v5}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 141
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->f()Ljava/lang/Boolean;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->f()Ljava/lang/Boolean;

    move-result-object v6

    .line 140
    invoke-static {v0, v6}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    .line 145
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->h()Ljava/lang/Boolean;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->h()Ljava/lang/Boolean;

    move-result-object v7

    .line 144
    invoke-static {v0, v7}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    .line 149
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->i()Ljava/lang/Integer;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->i()Ljava/lang/Integer;

    move-result-object v8

    .line 148
    invoke-static {v0, v8}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Integer;

    .line 153
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->j()Ljava/lang/Boolean;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->j()Ljava/lang/Boolean;

    move-result-object v9

    .line 152
    invoke-static {v0, v9}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Boolean;

    .line 157
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->k()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object p2

    .line 158
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->k()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object p1

    .line 156
    invoke-static {p2, p1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    .line 119
    invoke-static/range {v1 .. v10}, Lcom/criteo/publisher/model/y;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)Lcom/criteo/publisher/model/y;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/criteo/publisher/model/y;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/criteo/publisher/model/t;->d:Lcom/criteo/publisher/m0/l;

    if-eqz v0, :cond_0

    .line 179
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :try_start_1
    iget-object v1, p0, Lcom/criteo/publisher/model/t;->d:Lcom/criteo/publisher/m0/l;

    invoke-virtual {v1, p1, v0}, Lcom/criteo/publisher/m0/l;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 181
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CriteoCachedConfig"

    .line 188
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catchall_0
    move-exception p1

    .line 179
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 182
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 183
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->a:Lcom/criteo/publisher/logging/g;

    const-string v1, "Couldn\'t persist values"

    invoke-virtual {v0, v1, p1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private k()Lcom/criteo/publisher/model/y;
    .locals 4

    .line 92
    invoke-static {}, Lcom/criteo/publisher/model/y;->a()Lcom/criteo/publisher/model/y;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/criteo/publisher/model/t;->c:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/criteo/publisher/model/t;->d:Lcom/criteo/publisher/m0/l;

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Lcom/criteo/publisher/m0/q;

    invoke-direct {v2, v1}, Lcom/criteo/publisher/m0/q;-><init>(Landroid/content/SharedPreferences;)V

    const-string v1, "CriteoCachedConfig"

    const-string v3, "{}"

    .line 100
    invoke-virtual {v2, v1, v3}, Lcom/criteo/publisher/m0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 101
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 104
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    iget-object v1, p0, Lcom/criteo/publisher/model/t;->d:Lcom/criteo/publisher/m0/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v3, Lcom/criteo/publisher/model/y;

    :try_start_2
    invoke-virtual {v1, v3, v2}, Lcom/criteo/publisher/m0/l;->a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/y;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/criteo/publisher/model/t;->a(Lcom/criteo/publisher/model/y;Lcom/criteo/publisher/model/y;)Lcom/criteo/publisher/model/y;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 104
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    .line 106
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    .line 107
    iget-object v2, p0, Lcom/criteo/publisher/model/t;->a:Lcom/criteo/publisher/logging/g;

    const-string v3, "Couldn\'t read cached values"

    invoke-virtual {v2, v3, v1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    .line 261
    invoke-virtual {v0}, Lcom/criteo/publisher/model/y;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%%adTagData%%"

    .line 260
    invoke-static {v0, v1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    .line 269
    invoke-virtual {v0}, Lcom/criteo/publisher/model/y;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<html><body style=\'text-align:center; margin:0px; padding:0px; horizontal-align:center;\'><script>%%adTagData%%</script></body></html>"

    .line 268
    invoke-static {v0, v1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/criteo/publisher/model/y;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    invoke-direct {p0, v0, p1}, Lcom/criteo/publisher/model/t;->a(Lcom/criteo/publisher/model/y;Lcom/criteo/publisher/model/y;)Lcom/criteo/publisher/model/y;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    .line 165
    iget-object p1, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    invoke-direct {p0, p1}, Lcom/criteo/publisher/model/t;->a(Lcom/criteo/publisher/model/y;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    .line 253
    invoke-virtual {v0}, Lcom/criteo/publisher/model/y;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<html><body style=\'text-align:center; margin:0px; padding:0px; horizontal-align:center;\'><script src=\"%%displayUrl%%\"></script></body></html>"

    .line 252
    invoke-static {v0, v1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    .line 245
    invoke-virtual {v0}, Lcom/criteo/publisher/model/y;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%%displayUrl%%"

    .line 244
    invoke-static {v0, v1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    .line 227
    invoke-virtual {v0}, Lcom/criteo/publisher/model/y;->i()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1f40

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 226
    invoke-static {v0, v1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    .line 277
    invoke-virtual {v0}, Lcom/criteo/publisher/model/y;->k()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v0

    .line 278
    invoke-static {}, Lcom/criteo/publisher/model/t$a;->a()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    .line 205
    invoke-virtual {v0}, Lcom/criteo/publisher/model/y;->f()Ljava/lang/Boolean;

    move-result-object v0

    .line 206
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 204
    invoke-static {v0, v1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    .line 194
    invoke-virtual {v0}, Lcom/criteo/publisher/model/y;->g()Ljava/lang/Boolean;

    move-result-object v0

    .line 195
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 193
    invoke-static {v0, v1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    .line 215
    invoke-virtual {v0}, Lcom/criteo/publisher/model/y;->h()Ljava/lang/Boolean;

    move-result-object v0

    .line 216
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 214
    invoke-static {v0, v1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/criteo/publisher/model/t;->b:Lcom/criteo/publisher/model/y;

    .line 237
    invoke-virtual {v0}, Lcom/criteo/publisher/model/y;->j()Ljava/lang/Boolean;

    move-result-object v0

    .line 238
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 236
    invoke-static {v0, v1}, Lcom/criteo/publisher/m0/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
