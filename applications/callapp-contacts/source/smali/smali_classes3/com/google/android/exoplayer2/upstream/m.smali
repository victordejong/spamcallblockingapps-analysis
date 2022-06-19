.class public final Lcom/google/android/exoplayer2/upstream/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/h;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/upstream/v;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/upstream/h;

.field private d:Lcom/google/android/exoplayer2/upstream/h;

.field private e:Lcom/google/android/exoplayer2/upstream/h;

.field private f:Lcom/google/android/exoplayer2/upstream/h;

.field private g:Lcom/google/android/exoplayer2/upstream/h;

.field private h:Lcom/google/android/exoplayer2/upstream/h;

.field private i:Lcom/google/android/exoplayer2/upstream/h;

.field private j:Lcom/google/android/exoplayer2/upstream/h;

.field private k:Lcom/google/android/exoplayer2/upstream/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/h;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/m;->a:Landroid/content/Context;

    .line 155
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/m;->c:Lcom/google/android/exoplayer2/upstream/h;

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/m;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 1

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/upstream/o$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/o$a;-><init>()V

    .line 1107
    iput-object p2, v0, Lcom/google/android/exoplayer2/upstream/o$a;->a:Ljava/lang/String;

    .line 1120
    iput p3, v0, Lcom/google/android/exoplayer2/upstream/o$a;->b:I

    .line 1133
    iput p4, v0, Lcom/google/android/exoplayer2/upstream/o$a;->c:I

    .line 1146
    iput-boolean p5, v0, Lcom/google/android/exoplayer2/upstream/o$a;->d:Z

    .line 142
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/o$a;->a()Lcom/google/android/exoplayer2/upstream/o;

    move-result-object p2

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/m;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/h;)V

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

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/m;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    const/4 v2, 0x0

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 89
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/m;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/h;)V
    .locals 2

    const/4 v0, 0x0

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/v;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 310
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    :cond_0
    return-void
.end method

.method private d()Lcom/google/android/exoplayer2/upstream/h;
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->e:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->e:Lcom/google/android/exoplayer2/upstream/h;

    .line 250
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->e:Lcom/google/android/exoplayer2/upstream/h;

    return-object v0
.end method

.method private e()Lcom/google/android/exoplayer2/upstream/h;
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->g:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 267
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->g:Lcom/google/android/exoplayer2/upstream/h;

    .line 270
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 276
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 273
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->g:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->c:Lcom/google/android/exoplayer2/upstream/h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->g:Lcom/google/android/exoplayer2/upstream/h;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->g:Lcom/google/android/exoplayer2/upstream/h;

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

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/h;->a([BII)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/j;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 177
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/m;->d()Lcom/google/android/exoplayer2/upstream/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    goto/16 :goto_2

    .line 1240
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->d:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_2

    .line 1241
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->d:Lcom/google/android/exoplayer2/upstream/h;

    .line 1242
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;)V

    .line 1244
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->d:Lcom/google/android/exoplayer2/upstream/h;

    .line 183
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    goto/16 :goto_2

    :cond_3
    const-string v1, "asset"

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/m;->d()Lcom/google/android/exoplayer2/upstream/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    goto/16 :goto_2

    :cond_4
    const-string v1, "content"

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1256
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->f:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_5

    .line 1257
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->f:Lcom/google/android/exoplayer2/upstream/h;

    .line 1258
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;)V

    .line 1260
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->f:Lcom/google/android/exoplayer2/upstream/h;

    .line 188
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    goto/16 :goto_2

    :cond_6
    const-string v1, "rtmp"

    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/m;->e()Lcom/google/android/exoplayer2/upstream/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    goto :goto_2

    :cond_7
    const-string v1, "udp"

    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2232
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->h:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_8

    .line 2233
    new-instance v0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->h:Lcom/google/android/exoplayer2/upstream/h;

    .line 2234
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;)V

    .line 2236
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->h:Lcom/google/android/exoplayer2/upstream/h;

    .line 192
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    goto :goto_2

    :cond_9
    const-string v1, "data"

    .line 193
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2286
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->i:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_a

    .line 2287
    new-instance v0, Lcom/google/android/exoplayer2/upstream/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->i:Lcom/google/android/exoplayer2/upstream/h;

    .line 2288
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;)V

    .line 2290
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->i:Lcom/google/android/exoplayer2/upstream/h;

    .line 194
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    goto :goto_2

    :cond_b
    const-string v1, "rawresource"

    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1

    .line 198
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->c:Lcom/google/android/exoplayer2/upstream/h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    goto :goto_2

    .line 2294
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->j:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_e

    .line 2295
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->j:Lcom/google/android/exoplayer2/upstream/h;

    .line 2296
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;)V

    .line 2298
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->j:Lcom/google/android/exoplayer2/upstream/h;

    .line 196
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    .line 201
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/j;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 1

    .line 161
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->c:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->d:Lcom/google/android/exoplayer2/upstream/h;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/v;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->e:Lcom/google/android/exoplayer2/upstream/h;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/v;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->f:Lcom/google/android/exoplayer2/upstream/h;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/v;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->g:Lcom/google/android/exoplayer2/upstream/h;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/v;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->h:Lcom/google/android/exoplayer2/upstream/h;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/v;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->i:Lcom/google/android/exoplayer2/upstream/h;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/v;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->j:Lcom/google/android/exoplayer2/upstream/h;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/v;)V

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

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->b()Ljava/util/Map;

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

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 224
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/m;->k:Lcom/google/android/exoplayer2/upstream/h;

    .line 227
    throw v0

    :cond_0
    return-void
.end method
