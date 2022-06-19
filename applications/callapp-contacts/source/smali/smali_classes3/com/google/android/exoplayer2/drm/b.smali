.class public final Lcom/google/android/exoplayer2/drm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/e;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

.field private c:Lcom/google/android/exoplayer2/drm/d;

.field private d:Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/d;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 78
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$c;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v0, :cond_5

    .line 81
    sget v2, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_0

    goto/16 :goto_5

    .line 85
    :cond_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/b;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 86
    :try_start_0
    iget-object v3, v1, Lcom/google/android/exoplayer2/drm/b;->b:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 87
    iput-object v0, v1, Lcom/google/android/exoplayer2/drm/b;->b:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 1097
    iget-object v3, v1, Lcom/google/android/exoplayer2/drm/b;->d:Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1099
    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/upstream/o$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/o$a;-><init>()V

    iget-object v4, v1, Lcom/google/android/exoplayer2/drm/b;->e:Ljava/lang/String;

    .line 2107
    iput-object v4, v3, Lcom/google/android/exoplayer2/upstream/o$a;->a:Ljava/lang/String;

    .line 1100
    :goto_0
    new-instance v7, Lcom/google/android/exoplayer2/drm/l;

    .line 1102
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    invoke-direct {v7, v4, v5, v3}, Lcom/google/android/exoplayer2/drm/l;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$b;)V

    .line 1105
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1106
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v5, v4}, Lcom/google/android/exoplayer2/drm/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1108
    :cond_3
    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;-><init>()V

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    sget-object v5, Lcom/google/android/exoplayer2/drm/k;->a:Lcom/google/android/exoplayer2/drm/i$d;

    .line 2123
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    iput-object v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->b:Ljava/util/UUID;

    .line 2124
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/drm/i$d;

    iput-object v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->c:Lcom/google/android/exoplayer2/drm/i$d;

    .line 1110
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    .line 2139
    iput-boolean v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->d:Z

    .line 1112
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 2177
    iput-boolean v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->f:Z

    .line 1113
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    .line 1114
    invoke-static {v4}, Lcom/google/common/b/b;->a(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->a([I)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;

    move-result-object v3

    .line 2215
    new-instance v15, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v5, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->b:Ljava/util/UUID;

    iget-object v6, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->c:Lcom/google/android/exoplayer2/drm/i$d;

    iget-object v8, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->a:Ljava/util/HashMap;

    iget-boolean v9, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->d:Z

    iget-object v10, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->e:[I

    iget-boolean v11, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->f:Z

    iget-object v12, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->g:Lcom/google/android/exoplayer2/upstream/r;

    iget-wide v13, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    move-object v4, v15

    move-object v1, v15

    move-object v15, v3

    :try_start_1
    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/i$d;Lcom/google/android/exoplayer2/drm/m;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/r;JLcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V

    .line 1116
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v0

    .line 2435
    iget-object v3, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    const/4 v3, 0x0

    .line 2439
    iput v3, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b:I

    .line 2440
    iput-object v0, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->c:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    move-object/from16 v1, p0

    .line 88
    :try_start_2
    iput-object v0, v1, Lcom/google/android/exoplayer2/drm/b;->c:Lcom/google/android/exoplayer2/drm/d;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    .line 90
    :cond_4
    :goto_3
    iget-object v0, v1, Lcom/google/android/exoplayer2/drm/b;->c:Lcom/google/android/exoplayer2/drm/d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/d;

    monitor-exit v2

    return-object v0

    :catchall_1
    move-exception v0

    .line 91
    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 82
    :cond_5
    :goto_5
    sget-object v0, Lcom/google/android/exoplayer2/drm/d;->e:Lcom/google/android/exoplayer2/drm/d;

    return-object v0
.end method
