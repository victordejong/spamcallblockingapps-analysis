.class public final Landroidx/media2/exoplayer/external/upstream/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/f;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/upstream/w;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/media2/exoplayer/external/upstream/f;

.field private d:Landroidx/media2/exoplayer/external/upstream/f;

.field private e:Landroidx/media2/exoplayer/external/upstream/f;

.field private f:Landroidx/media2/exoplayer/external/upstream/f;

.field private g:Landroidx/media2/exoplayer/external/upstream/f;

.field private h:Landroidx/media2/exoplayer/external/upstream/f;

.field private i:Landroidx/media2/exoplayer/external/upstream/f;

.field private j:Landroidx/media2/exoplayer/external/upstream/f;

.field private k:Landroidx/media2/exoplayer/external/upstream/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/f;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/m;->a:Landroid/content/Context;

    .line 139
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/upstream/f;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/m;->c:Landroidx/media2/exoplayer/external/upstream/f;

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/m;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 8

    .line 118
    new-instance v7, Landroidx/media2/exoplayer/external/upstream/o;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/upstream/o;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/r;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$b;)V

    invoke-direct {p0, p1, v7}, Landroidx/media2/exoplayer/external/upstream/m;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 92
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/m;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/upstream/f;)V
    .locals 2

    const/4 v0, 0x0

    .line 285
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 286
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/w;

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 293
    invoke-interface {p0, p1}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    :cond_0
    return-void
.end method

.method private d()Landroidx/media2/exoplayer/external/upstream/f;
    .locals 2

    .line 231
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->e:Landroidx/media2/exoplayer/external/upstream/f;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->e:Landroidx/media2/exoplayer/external/upstream/f;

    .line 233
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    .line 235
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->e:Landroidx/media2/exoplayer/external/upstream/f;

    return-object v0
.end method

.method private e()Landroidx/media2/exoplayer/external/upstream/f;
    .locals 3

    .line 247
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->g:Landroidx/media2/exoplayer/external/upstream/f;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "androidx.media2.exoplayer.external.ext.rtmp.RtmpDataSource"

    .line 250
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/f;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->g:Landroidx/media2/exoplayer/external/upstream/f;

    .line 253
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 256
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->g:Landroidx/media2/exoplayer/external/upstream/f;

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->c:Landroidx/media2/exoplayer/external/upstream/f;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->g:Landroidx/media2/exoplayer/external/upstream/f;

    .line 265
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->g:Landroidx/media2/exoplayer/external/upstream/f;

    return-object v0
.end method


# virtual methods
.method public final a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/f;->a([BII)I

    move-result p1

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 160
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p1, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/m;->d()Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    goto/16 :goto_1

    .line 1223
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->d:Landroidx/media2/exoplayer/external/upstream/f;

    if-nez v0, :cond_2

    .line 1224
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/FileDataSource;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->d:Landroidx/media2/exoplayer/external/upstream/f;

    .line 1225
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    .line 1227
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->d:Landroidx/media2/exoplayer/external/upstream/f;

    .line 166
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    goto/16 :goto_1

    :cond_3
    const-string v1, "asset"

    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/m;->d()Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    goto/16 :goto_1

    :cond_4
    const-string v1, "content"

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1239
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->f:Landroidx/media2/exoplayer/external/upstream/f;

    if-nez v0, :cond_5

    .line 1240
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->f:Landroidx/media2/exoplayer/external/upstream/f;

    .line 1241
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    .line 1243
    :cond_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->f:Landroidx/media2/exoplayer/external/upstream/f;

    .line 171
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    goto :goto_1

    :cond_6
    const-string v1, "rtmp"

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 173
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/m;->e()Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    goto :goto_1

    :cond_7
    const-string v1, "udp"

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2215
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->h:Landroidx/media2/exoplayer/external/upstream/f;

    if-nez v0, :cond_8

    .line 2216
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->h:Landroidx/media2/exoplayer/external/upstream/f;

    .line 2217
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    .line 2219
    :cond_8
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->h:Landroidx/media2/exoplayer/external/upstream/f;

    .line 175
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    goto :goto_1

    :cond_9
    const-string v1, "data"

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2269
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->i:Landroidx/media2/exoplayer/external/upstream/f;

    if-nez v0, :cond_a

    .line 2270
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/e;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/e;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->i:Landroidx/media2/exoplayer/external/upstream/f;

    .line 2271
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    .line 2273
    :cond_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->i:Landroidx/media2/exoplayer/external/upstream/f;

    .line 177
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    goto :goto_1

    :cond_b
    const-string v1, "rawresource"

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2277
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->j:Landroidx/media2/exoplayer/external/upstream/f;

    if-nez v0, :cond_c

    .line 2278
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->j:Landroidx/media2/exoplayer/external/upstream/f;

    .line 2279
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    .line 2281
    :cond_c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->j:Landroidx/media2/exoplayer/external/upstream/f;

    .line 179
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    goto :goto_1

    .line 181
    :cond_d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->c:Landroidx/media2/exoplayer/external/upstream/f;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    .line 184
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/h;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->c:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 146
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->d:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 148
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->e:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 149
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->f:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 150
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->g:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 151
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->h:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 152
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->i:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 153
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->j:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/w;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 207
    :try_start_0
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/m;->k:Landroidx/media2/exoplayer/external/upstream/f;

    throw v0

    :cond_0
    return-void
.end method
