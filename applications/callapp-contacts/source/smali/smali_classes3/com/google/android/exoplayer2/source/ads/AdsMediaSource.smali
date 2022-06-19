.class public final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.super Lcom/google/android/exoplayer2/source/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/d<",
        "Lcom/google/android/exoplayer2/source/r$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/exoplayer2/source/r$a;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/source/r;

.field private final c:Lcom/google/android/exoplayer2/source/t;

.field private final d:Lcom/google/android/exoplayer2/source/ads/b;

.field private final e:Lcom/google/android/exoplayer2/source/ads/b$a;

.field private final f:Lcom/google/android/exoplayer2/upstream/j;

.field private final g:Ljava/lang/Object;

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/android/exoplayer2/al$a;

.field private j:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

.field private k:Lcom/google/android/exoplayer2/al;

.field private l:Lcom/google/android/exoplayer2/source/ads/a;

.field private m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 125
    new-instance v0, Lcom/google/android/exoplayer2/source/r$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/r$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a:Lcom/google/android/exoplayer2/source/r$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/upstream/j;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/t;Lcom/google/android/exoplayer2/source/ads/b;Lcom/google/android/exoplayer2/source/ads/b$a;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->b:Lcom/google/android/exoplayer2/source/r;

    .line 165
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->c:Lcom/google/android/exoplayer2/source/t;

    .line 166
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->d:Lcom/google/android/exoplayer2/source/ads/b;

    .line 167
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->e:Lcom/google/android/exoplayer2/source/ads/b$a;

    .line 168
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->f:Lcom/google/android/exoplayer2/upstream/j;

    .line 169
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->g:Ljava/lang/Object;

    .line 170
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->h:Landroid/os/Handler;

    .line 171
    new-instance p1, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->i:Lcom/google/android/exoplayer2/al$a;

    const/4 p1, 0x0

    new-array p1, p1, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 172
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 173
    invoke-interface {p4}, Lcom/google/android/exoplayer2/source/t;->a()[I

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->h:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/s$a;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/s$a;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/b;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->d:Lcom/google/android/exoplayer2/source/ads/b;

    return-object p0
.end method

.method private synthetic b(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$Ey4Oac-rtzoLSxNqpC6z8dgONPw(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->b(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V

    return-void
.end method

.method public static synthetic lambda$XX5b3-JY7MllnvJK5bqnLx5KlAk(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/p;
    .locals 11

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->l:Lcom/google/android/exoplayer2/source/ads/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/a;

    .line 211
    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    if-lez v0, :cond_9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 212
    iget v0, p1, Lcom/google/android/exoplayer2/source/r$a;->b:I

    .line 213
    iget v1, p1, Lcom/google/android/exoplayer2/source/r$a;->c:I

    .line 214
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object v3, v2, v0

    array-length v3, v3

    if-gt v3, v1, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 216
    aget-object v4, v2, v0

    .line 217
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aput-object v3, v2, v0

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_6

    .line 223
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/r$a;)V

    .line 224
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object v0, v4, v0

    aput-object v2, v0, v1

    .line 1307
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->l:Lcom/google/android/exoplayer2/source/ads/a;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 1311
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    array-length v4, v4

    if-ge v1, v4, :cond_6

    const/4 v4, 0x0

    .line 1313
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object v6, v5, v1

    array-length v6, v6

    if-ge v4, v6, :cond_5

    .line 1316
    aget-object v5, v5, v1

    aget-object v5, v5, v4

    if-eqz v5, :cond_4

    .line 1319
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->a()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v6, v6, v1

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/ads/a$a;->b:[Landroid/net/Uri;

    array-length v6, v6

    if-ge v4, v6, :cond_4

    .line 1322
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/ads/a$a;->b:[Landroid/net/Uri;

    aget-object v6, v6, v4

    if-eqz v6, :cond_4

    .line 1324
    new-instance v7, Lcom/google/android/exoplayer2/MediaItem$a;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/MediaItem$a;-><init>()V

    .line 2173
    iput-object v6, v7, Lcom/google/android/exoplayer2/MediaItem$a;->b:Landroid/net/Uri;

    .line 1327
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->b:Lcom/google/android/exoplayer2/source/r;

    .line 1328
    invoke-interface {v8}, Lcom/google/android/exoplayer2/source/r;->e()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    if-eqz v8, :cond_3

    .line 1329
    iget-object v9, v8, Lcom/google/android/exoplayer2/MediaItem$c;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v9, :cond_3

    .line 1331
    iget-object v8, v8, Lcom/google/android/exoplayer2/MediaItem$c;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 1335
    iget-object v9, v8, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    .line 2289
    iput-object v9, v7, Lcom/google/android/exoplayer2/MediaItem$a;->f:Ljava/util/UUID;

    .line 1336
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/MediaItem$a;->a([B)Lcom/google/android/exoplayer2/MediaItem$a;

    .line 1337
    iget-object v9, v8, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    .line 3249
    iput-object v9, v7, Lcom/google/android/exoplayer2/MediaItem$a;->d:Landroid/net/Uri;

    .line 1338
    iget-boolean v9, v8, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    .line 3312
    iput-boolean v9, v7, Lcom/google/android/exoplayer2/MediaItem$a;->i:Z

    .line 1339
    iget-object v9, v8, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    if-eqz v9, :cond_1

    .line 4275
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 4276
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    goto :goto_2

    .line 4277
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    :goto_2
    iput-object v9, v7, Lcom/google/android/exoplayer2/MediaItem$a;->e:Ljava/util/Map;

    .line 1340
    iget-boolean v9, v8, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    .line 4300
    iput-boolean v9, v7, Lcom/google/android/exoplayer2/MediaItem$a;->g:Z

    .line 1341
    iget-boolean v9, v8, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 4321
    iput-boolean v9, v7, Lcom/google/android/exoplayer2/MediaItem$a;->h:Z

    .line 1343
    iget-object v8, v8, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    if-eqz v8, :cond_2

    .line 4354
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 4355
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto :goto_3

    .line 4356
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    :goto_3
    iput-object v8, v7, Lcom/google/android/exoplayer2/MediaItem$a;->j:Ljava/util/List;

    .line 1345
    :cond_3
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->c:Lcom/google/android/exoplayer2/source/t;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/MediaItem$a;->a()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/google/android/exoplayer2/source/t;->a(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/r;

    move-result-object v7

    .line 1346
    invoke-virtual {v5, v7, v6}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->a(Lcom/google/android/exoplayer2/source/r;Landroid/net/Uri;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 4495
    :cond_6
    new-instance v0, Lcom/google/android/exoplayer2/source/m;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/m;-><init>(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)V

    .line 4497
    iget-object p2, v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->b:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4498
    iget-object p2, v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->d:Lcom/google/android/exoplayer2/source/r;

    if-eqz p2, :cond_7

    .line 4499
    iget-object p2, v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->d:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/r;)V

    .line 4500
    new-instance p2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;

    iget-object p3, v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->f:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object p4, v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->c:Landroid/net/Uri;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    invoke-direct {p2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;)V

    .line 5090
    iput-object p2, v0, Lcom/google/android/exoplayer2/source/m;->c:Lcom/google/android/exoplayer2/source/m$a;

    .line 4502
    :cond_7
    iget-object p2, v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->e:Lcom/google/android/exoplayer2/al;

    if-eqz p2, :cond_8

    .line 4503
    iget-object p2, v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->e:Lcom/google/android/exoplayer2/al;

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/al;->a(I)Ljava/lang/Object;

    move-result-object p2

    .line 4504
    new-instance p3, Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/source/r$a;->d:J

    invoke-direct {p3, p2, v1, v2}, Lcom/google/android/exoplayer2/source/r$a;-><init>(Ljava/lang/Object;J)V

    .line 4505
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/r$a;)V

    :cond_8
    return-object v0

    .line 229
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/source/m;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/m;-><init>(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)V

    .line 230
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->b:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/r;)V

    .line 231
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/r$a;)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/r$a;
    .locals 1

    .line 59
    check-cast p1, Lcom/google/android/exoplayer2/source/r$a;

    .line 8285
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)V
    .locals 3

    .line 238
    check-cast p1, Lcom/google/android/exoplayer2/source/m;

    .line 239
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 240
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    iget v2, v0, Lcom/google/android/exoplayer2/source/r$a;->b:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/google/android/exoplayer2/source/r$a;->c:I

    aget-object v1, v1, v2

    .line 242
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 5531
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5532
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/m;->g()V

    .line 5546
    iget-object p1, v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6536
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6537
    iget-object p1, v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->f:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 7059
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a(Ljava/lang/Object;)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    iget v1, v0, Lcom/google/android/exoplayer2/source/r$a;->b:I

    aget-object p1, p1, v1

    iget v0, v0, Lcom/google/android/exoplayer2/source/r$a;->c:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    return-void

    .line 249
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/m;->g()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 2

    .line 194
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/d;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    .line 195
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    .line 196
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->j:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    .line 197
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->b:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$Ey4Oac-rtzoLSxNqpC6z8dgONPw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$Ey4Oac-rtzoLSxNqpC6z8dgONPw;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 59
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/source/r$a;

    .line 9268
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 9269
    iget v3, v2, Lcom/google/android/exoplayer2/source/r$a;->b:I

    .line 9270
    iget v2, v2, Lcom/google/android/exoplayer2/source/r$a;->c:I

    .line 9271
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object v3, v6, v3

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 9511
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 9512
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->e:Lcom/google/android/exoplayer2/al;

    if-nez v3, :cond_1

    .line 9513
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/al;->a(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    .line 9514
    :goto_1
    iget-object v6, v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 9515
    iget-object v6, v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/m;

    .line 9516
    new-instance v7, Lcom/google/android/exoplayer2/source/r$a;

    iget-object v8, v6, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/source/r$a;->d:J

    invoke-direct {v7, v3, v8, v9}, Lcom/google/android/exoplayer2/source/r$a;-><init>(Ljava/lang/Object;J)V

    .line 9518
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/r$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9521
    :cond_1
    iput-object v1, v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->e:Lcom/google/android/exoplayer2/al;

    goto :goto_3

    .line 9274
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v2

    if-ne v2, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 9275
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->k:Lcom/google/android/exoplayer2/al;

    .line 10354
    :goto_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->k:Lcom/google/android/exoplayer2/al;

    .line 10355
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->l:Lcom/google/android/exoplayer2/source/ads/a;

    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    .line 10356
    iget v2, v2, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    if-nez v2, :cond_4

    .line 10357
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a(Lcom/google/android/exoplayer2/al;)V

    return-void

    .line 10359
    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->l:Lcom/google/android/exoplayer2/source/ads/a;

    .line 10366
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    array-length v3, v3

    new-array v3, v3, [[J

    const/4 v4, 0x0

    .line 10367
    :goto_4
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    array-length v7, v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v7, :cond_8

    .line 10368
    aget-object v6, v6, v4

    array-length v6, v6

    new-array v6, v6, [J

    aput-object v6, v3, v4

    const/4 v6, 0x0

    .line 10369
    :goto_5
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object v10, v7, v4

    array-length v10, v10

    if-ge v6, v10, :cond_7

    .line 10370
    aget-object v7, v7, v4

    aget-object v7, v7, v6

    .line 10371
    aget-object v10, v3, v4

    if-nez v7, :cond_5

    :goto_6
    move-wide v11, v8

    goto :goto_7

    .line 10525
    :cond_5
    iget-object v11, v7, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->e:Lcom/google/android/exoplayer2/al;

    if-nez v11, :cond_6

    goto :goto_6

    .line 10527
    :cond_6
    iget-object v11, v7, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->e:Lcom/google/android/exoplayer2/al;

    iget-object v7, v7, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->f:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 11059
    iget-object v7, v7, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->i:Lcom/google/android/exoplayer2/al$a;

    .line 11955
    invoke-virtual {v11, v5, v7, v5}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v7

    .line 12514
    iget-wide v11, v7, Lcom/google/android/exoplayer2/al$a;->d:J

    .line 10371
    :goto_7
    aput-wide v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 13457
    :cond_8
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-object v6, v2, Lcom/google/android/exoplayer2/source/ads/a;->e:[Lcom/google/android/exoplayer2/source/ads/a$a;

    array-length v6, v6

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/af;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, [Lcom/google/android/exoplayer2/source/ads/a$a;

    .line 13458
    :goto_8
    iget v4, v2, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    if-ge v5, v4, :cond_b

    .line 13459
    aget-object v4, v13, v5

    aget-object v6, v3, v5

    .line 14185
    array-length v7, v6

    iget-object v10, v4, Lcom/google/android/exoplayer2/source/ads/a$a;->b:[Landroid/net/Uri;

    array-length v10, v10

    if-ge v7, v10, :cond_9

    .line 14186
    iget-object v7, v4, Lcom/google/android/exoplayer2/source/ads/a$a;->b:[Landroid/net/Uri;

    array-length v7, v7

    .line 14227
    array-length v10, v6

    .line 14228
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 14229
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 14230
    invoke-static {v6, v10, v7, v8, v9}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_9

    .line 14187
    :cond_9
    iget v7, v4, Lcom/google/android/exoplayer2/source/ads/a$a;->a:I

    const/4 v10, -0x1

    if-eq v7, v10, :cond_a

    array-length v7, v6

    iget-object v10, v4, Lcom/google/android/exoplayer2/source/ads/a$a;->b:[Landroid/net/Uri;

    array-length v10, v10

    if-le v7, v10, :cond_a

    .line 14188
    iget-object v7, v4, Lcom/google/android/exoplayer2/source/ads/a$a;->b:[Landroid/net/Uri;

    array-length v7, v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 14190
    :cond_a
    :goto_9
    new-instance v7, Lcom/google/android/exoplayer2/source/ads/a$a;

    iget v10, v4, Lcom/google/android/exoplayer2/source/ads/a$a;->a:I

    iget-object v11, v4, Lcom/google/android/exoplayer2/source/ads/a$a;->c:[I

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/ads/a$a;->b:[Landroid/net/Uri;

    invoke-direct {v7, v10, v11, v4, v6}, Lcom/google/android/exoplayer2/source/ads/a$a;-><init>(I[I[Landroid/net/Uri;[J)V

    .line 13459
    aput-object v7, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 13461
    :cond_b
    new-instance v3, Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v11, v2, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    iget-object v12, v2, Lcom/google/android/exoplayer2/source/ads/a;->d:[J

    iget-wide v14, v2, Lcom/google/android/exoplayer2/source/ads/a;->f:J

    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/ads/a;->g:J

    move-object v10, v3

    move-wide/from16 v16, v4

    invoke-direct/range {v10 .. v17}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/a$a;JJ)V

    .line 10359
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->l:Lcom/google/android/exoplayer2/source/ads/a;

    .line 10360
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/c;

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/ads/a;)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a(Lcom/google/android/exoplayer2/al;)V

    :cond_c
    return-void
.end method

.method public final c()V
    .locals 3

    .line 255
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/d;->c()V

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->j:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    const/4 v1, 0x0

    .line 257
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->j:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    const/4 v2, 0x1

    .line 7394
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->b:Z

    .line 7395
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 259
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->k:Lcom/google/android/exoplayer2/al;

    .line 260
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->l:Lcom/google/android/exoplayer2/source/ads/a;

    const/4 v1, 0x0

    new-array v1, v1, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 261
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 262
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->h:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$XX5b3-JY7MllnvJK5bqnLx5KlAk;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$XX5b3-JY7MllnvJK5bqnLx5KlAk;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->b:Lcom/google/android/exoplayer2/source/r;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/r;->e()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method
