.class public final Lcom/google/android/exoplayer2/drm/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/m;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/drm/l;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$b;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 73
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/l;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;

    .line 74
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/l;->b:Ljava/lang/String;

    .line 75
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/drm/l;->c:Z

    .line 76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/l;->d:Ljava/util/Map;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/google/android/exoplayer2/upstream/t;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;->b()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Lcom/google/android/exoplayer2/upstream/h;)V

    .line 164
    new-instance p0, Lcom/google/android/exoplayer2/upstream/j$a;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/j$a;-><init>()V

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/j$a;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/j$a;

    move-result-object p0

    .line 5142
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/j$a;->e:Ljava/util/Map;

    const/4 p1, 0x2

    .line 6116
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/j$a;->c:I

    .line 6127
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/j$a;->d:[B

    const/4 p1, 0x1

    .line 6186
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/j$a;->i:I

    .line 171
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/j$a;->a()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v2

    const/4 p0, 0x0

    move-object p2, v2

    const/4 p3, 0x0

    .line 175
    :goto_0
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/upstream/i;

    invoke-direct {v1, v0, p2}, Lcom/google/android/exoplayer2/upstream/i;-><init>(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :try_start_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_1
    .catch Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :try_start_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 6204
    :try_start_3
    iget v4, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->c:I

    const/16 v5, 0x133

    if-eq v4, v5, :cond_0

    iget v4, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->c:I

    const/16 v5, 0x134

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x5

    if-ge p3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 6210
    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->e:Ljava/util/Map;

    if-eqz v4, :cond_2

    const-string v5, "Location"

    .line 6212
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 6213
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 6214
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    add-int/lit8 p3, p3, 0x1

    .line 184
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/j;->a()Lcom/google/android/exoplayer2/upstream/j$a;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/upstream/j$a;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/j$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/j$a;->a()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    :try_start_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 181
    :cond_3
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    :goto_3
    :try_start_6
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/Closeable;)V

    .line 187
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    move-object v7, p0

    .line 190
    new-instance p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;

    .line 7065
    iget-object p1, v0, Lcom/google/android/exoplayer2/upstream/t;->b:Landroid/net/Uri;

    .line 192
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/Uri;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/t;->b()Ljava/util/Map;

    move-result-object v4

    .line 8057
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/t;->a:J

    move-object v1, p0

    .line 194
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;-><init>(Lcom/google/android/exoplayer2/upstream/j;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 86
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/l;->d:Ljava/util/Map;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/l;->d:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/exoplayer2/drm/i$e;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1339
    iget-object v1, p1, Lcom/google/android/exoplayer2/drm/i$e;->b:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&signedRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/i$e;->a:[B

    .line 118
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/l;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 119
    invoke-static {v0, p1, v2, v1}, Lcom/google/android/exoplayer2/drm/l;->a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/i$b;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 3293
    iget-object v0, p2, Lcom/google/android/exoplayer2/drm/i$b;->b:Ljava/lang/String;

    .line 129
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/drm/l;->c:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/l;->b:Ljava/lang/String;

    .line 132
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 142
    sget-object v2, Lcom/google/android/exoplayer2/f;->e:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "text/xml"

    goto :goto_0

    .line 143
    :cond_2
    sget-object v2, Lcom/google/android/exoplayer2/f;->c:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "application/json"

    goto :goto_0

    :cond_3
    const-string v2, "application/octet-stream"

    :goto_0
    const-string v3, "Content-Type"

    .line 144
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v2, Lcom/google/android/exoplayer2/f;->e:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    .line 146
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/l;->d:Ljava/util/Map;

    monitor-enter p1

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/l;->d:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 152
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/l;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;

    .line 4288
    iget-object p2, p2, Lcom/google/android/exoplayer2/drm/i$b;->a:[B

    .line 153
    invoke-static {p1, v0, p2, v1}, Lcom/google/android/exoplayer2/drm/l;->a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 152
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 133
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;

    new-instance p2, Lcom/google/android/exoplayer2/upstream/j$a;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/upstream/j$a;-><init>()V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 4094
    iput-object v0, p2, Lcom/google/android/exoplayer2/upstream/j$a;->a:Landroid/net/Uri;

    .line 134
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/j$a;->a()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 136
    invoke-static {}, Lcom/google/common/collect/x;->a()Lcom/google/common/collect/x;

    move-result-object v3

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string p2, "No license URL"

    invoke-direct {v6, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;-><init>(Lcom/google/android/exoplayer2/upstream/j;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw p1
.end method
