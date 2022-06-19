.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/e;
.super Landroidx/media2/exoplayer/external/source/hls/playlist/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;,
        Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/source/hls/playlist/e;


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroidx/media2/exoplayer/external/Format;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 41
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    const-string v1, ""

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    sput-object v13, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p2, p10}, Landroidx/media2/exoplayer/external/source/hls/playlist/g;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1289
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 1290
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p10

    if-ge p2, p10, :cond_1

    .line 1291
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    iget-object p10, p10, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    .line 1292
    invoke-virtual {p1, p10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    invoke-virtual {p1, p10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1296
    :cond_1
    invoke-static {p4, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->a(Ljava/util/List;Ljava/util/List;)V

    .line 1297
    invoke-static {p5, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->a(Ljava/util/List;Ljava/util/List;)V

    .line 1298
    invoke-static {p6, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->a(Ljava/util/List;Ljava/util/List;)V

    .line 1299
    invoke-static {p7, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->a(Ljava/util/List;Ljava/util/List;)V

    .line 226
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->b:Ljava/util/List;

    .line 228
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->c:Ljava/util/List;

    .line 229
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->d:Ljava/util/List;

    .line 230
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->e:Ljava/util/List;

    .line 231
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->f:Ljava/util/List;

    .line 232
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->g:Ljava/util/List;

    .line 233
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->h:Landroidx/media2/exoplayer/external/Format;

    if-eqz p9, :cond_2

    .line 235
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->i:Ljava/util/List;

    .line 236
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->j:Ljava/util/Map;

    .line 237
    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->k:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/e;
    .locals 21

    .line 267
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "0"

    const/4 v3, 0x0

    const-string v4, "application/x-mpegURL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2113
    invoke-static/range {v2 .. v10}, Landroidx/media2/exoplayer/external/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    .line 2123
    new-instance v7, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 268
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 273
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 279
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v19

    .line 280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v20}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Ljava/util/List;ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 325
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 326
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    .line 327
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 328
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/offline/StreamKey;

    .line 329
    iget v6, v5, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    if-ne v6, p1, :cond_0

    iget v5, v5, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    if-ne v5, v2, :cond_0

    .line 330
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 304
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 305
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;->a:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 306
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 14

    .line 2242
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->n:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->o:Ljava/util/List;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->c:Ljava/util/List;

    const/4 v3, 0x0

    .line 2245
    invoke-static {v0, v3, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->a(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 2247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->e:Ljava/util/List;

    const/4 v5, 0x1

    .line 2248
    invoke-static {v0, v5, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->a(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->f:Ljava/util/List;

    const/4 v6, 0x2

    .line 2249
    invoke-static {v0, v6, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->a(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 2251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->h:Landroidx/media2/exoplayer/external/Format;

    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->i:Ljava/util/List;

    iget-boolean v10, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->p:Z

    iget-object v11, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->j:Ljava/util/Map;

    iget-object v12, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->k:Ljava/util/List;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13
.end method
