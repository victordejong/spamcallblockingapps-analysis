.class final Landroidx/media2/exoplayer/external/source/hls/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/i;
.implements Landroidx/media2/exoplayer/external/source/ak$b;
.implements Landroidx/media2/exoplayer/external/source/am;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$a;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/k$b;,
        Landroidx/media2/exoplayer/external/source/hls/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/extractor/i;",
        "Landroidx/media2/exoplayer/external/source/ak$b;",
        "Landroidx/media2/exoplayer/external/source/am;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$a<",
        "Landroidx/media2/exoplayer/external/source/a/b;",
        ">;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$e;"
    }
.end annotation


# instance fields
.field private final A:Landroidx/media2/exoplayer/external/upstream/b;

.field private final B:Landroidx/media2/exoplayer/external/Format;

.field private final C:Landroidx/media2/exoplayer/external/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private final D:Landroidx/media2/exoplayer/external/upstream/t;

.field private final E:Landroidx/media2/exoplayer/external/source/hls/d$c;

.field private final F:Ljava/lang/Runnable;

.field private final G:Ljava/lang/Runnable;

.field private final H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field private I:[I

.field private J:Z

.field private K:I

.field private L:Z

.field private M:I

.field private N:I

.field private O:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private P:Z

.field private Q:[Z

.field private R:J

.field private S:Z

.field private T:J

.field private U:I

.field final a:I

.field final b:Landroidx/media2/exoplayer/external/source/hls/d;

.field final c:Landroidx/media2/exoplayer/external/upstream/Loader;

.field final d:Landroidx/media2/exoplayer/external/source/u$a;

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/h;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/h;",
            ">;"
        }
    .end annotation
.end field

.field final g:Landroid/os/Handler;

.field final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/j;",
            ">;"
        }
    .end annotation
.end field

.field i:[Landroidx/media2/exoplayer/external/source/ak;

.field j:[Landroidx/media2/exoplayer/external/source/j;

.field k:I

.field l:Z

.field m:Z

.field n:I

.field o:Landroidx/media2/exoplayer/external/Format;

.field p:Landroidx/media2/exoplayer/external/Format;

.field q:Z

.field r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field s:[I

.field t:I

.field u:[Z

.field v:J

.field w:Z

.field x:Z

.field y:Z

.field private final z:Landroidx/media2/exoplayer/external/source/hls/k$a;


# direct methods
.method public constructor <init>(ILandroidx/media2/exoplayer/external/source/hls/k$a;Landroidx/media2/exoplayer/external/source/hls/d;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/b;JLandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/u$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/source/hls/k$a;",
            "Landroidx/media2/exoplayer/external/source/hls/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;",
            "Landroidx/media2/exoplayer/external/upstream/b;",
            "J",
            "Landroidx/media2/exoplayer/external/Format;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;",
            "Landroidx/media2/exoplayer/external/upstream/t;",
            "Landroidx/media2/exoplayer/external/source/u$a;",
            ")V"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->a:I

    .line 186
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->z:Landroidx/media2/exoplayer/external/source/hls/k$a;

    .line 187
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    .line 188
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/k;->H:Ljava/util/Map;

    .line 189
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/hls/k;->A:Landroidx/media2/exoplayer/external/upstream/b;

    .line 190
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/hls/k;->B:Landroidx/media2/exoplayer/external/Format;

    .line 191
    iput-object p9, p0, Landroidx/media2/exoplayer/external/source/hls/k;->C:Landroidx/media2/exoplayer/external/drm/k;

    .line 192
    iput-object p10, p0, Landroidx/media2/exoplayer/external/source/hls/k;->D:Landroidx/media2/exoplayer/external/upstream/t;

    .line 193
    iput-object p11, p0, Landroidx/media2/exoplayer/external/source/hls/k;->d:Landroidx/media2/exoplayer/external/source/u$a;

    .line 194
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 195
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/d$c;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/source/hls/d$c;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->E:Landroidx/media2/exoplayer/external/source/hls/d$c;

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 196
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->I:[I

    const/4 p2, -0x1

    .line 197
    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->K:I

    .line 198
    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->M:I

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/ak;

    .line 199
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/j;

    .line 200
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->j:[Landroidx/media2/exoplayer/external/source/j;

    new-array p2, p1, [Z

    .line 201
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->Q:[Z

    new-array p1, p1, [Z

    .line 202
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->u:[Z

    .line 203
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    .line 204
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->f:Ljava/util/List;

    .line 205
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->h:Ljava/util/ArrayList;

    .line 206
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/l;

    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/source/hls/l;-><init>(Landroidx/media2/exoplayer/external/source/hls/k;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->F:Ljava/lang/Runnable;

    .line 207
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/m;

    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/source/hls/m;-><init>(Landroidx/media2/exoplayer/external/source/hls/k;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->G:Ljava/lang/Runnable;

    .line 208
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->g:Landroid/os/Handler;

    .line 209
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/source/hls/k;->v:J

    .line 210
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/source/hls/k;->R:J

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;
    .locals 13

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 1172
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    move v7, p2

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    .line 1174
    :goto_0
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-eq p2, v0, :cond_2

    .line 1175
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    goto :goto_1

    .line 1176
    :cond_2
    iget p2, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    :goto_1
    move v10, p2

    .line 1177
    iget-object p2, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/m;->g(Ljava/lang/String;)I

    move-result p2

    .line 1178
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1179
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1181
    iget-object p2, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    :cond_3
    move-object v4, p2

    .line 1183
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget v8, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v9, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v11, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget-object v12, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v12}, Landroidx/media2/exoplayer/external/Format;->copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method private a([Landroidx/media2/exoplayer/external/source/TrackGroup;)Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1088
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 1089
    aget-object v2, p1, v1

    .line 1090
    iget v3, v2, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    new-array v3, v3, [Landroidx/media2/exoplayer/external/Format;

    const/4 v4, 0x0

    .line 1091
    :goto_1
    iget v5, v2, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v4, v5, :cond_1

    .line 1092
    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    .line 1093
    iget-object v6, v5, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v6, :cond_0

    .line 1094
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/k;->C:Landroidx/media2/exoplayer/external/drm/k;

    iget-object v7, v5, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 1096
    invoke-interface {v6, v7}, Landroidx/media2/exoplayer/external/drm/k;->b(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Ljava/lang/Class;

    move-result-object v6

    .line 1095
    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/Format;->copyWithExoMediaCryptoType(Ljava/lang/Class;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    .line 1098
    :cond_0
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1100
    :cond_1
    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1102
    :cond_2
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    return-object v0
.end method

.method private static b(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private static b(II)Landroidx/media2/exoplayer/external/extractor/f;
    .locals 2

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/f;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/f;-><init>()V

    return-object p0
.end method

.method private d(J)Z
    .locals 6

    .line 1120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 1122
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v4, v4, v2

    .line 1123
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/ak;->b()V

    .line 1124
    invoke-virtual {v4, p1, p2, v1}, Landroidx/media2/exoplayer/external/source/ak;->a(JZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 1130
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->Q:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->P:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .line 256
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->s:[I

    aget v0, v0, p1

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 258
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->O:Ljava/util/Set;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    return v1

    .line 262
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->u:[Z

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    .line 266
    aput-boolean v1, p1, v0

    return v0
.end method

.method public final a(II)Landroidx/media2/exoplayer/external/extractor/q;
    .locals 9

    .line 820
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    .line 824
    iget v6, p0, Landroidx/media2/exoplayer/external/source/hls/k;->K:I

    if-eq v6, v3, :cond_2

    .line 825
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->J:Z

    if-eqz v1, :cond_1

    .line 826
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->I:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_0

    .line 827
    aget-object p1, v0, v6

    return-object p1

    .line 828
    :cond_0
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/k;->b(II)Landroidx/media2/exoplayer/external/extractor/f;

    move-result-object p1

    return-object p1

    .line 830
    :cond_1
    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/k;->J:Z

    .line 831
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->I:[I

    aput p1, p2, v6

    .line 832
    aget-object p1, v0, v6

    return-object p1

    .line 833
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->S:Z

    if-eqz v0, :cond_a

    .line 834
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/k;->b(II)Landroidx/media2/exoplayer/external/extractor/f;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v4, :cond_7

    .line 837
    iget v6, p0, Landroidx/media2/exoplayer/external/source/hls/k;->M:I

    if-eq v6, v3, :cond_6

    .line 838
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->L:Z

    if-eqz v1, :cond_5

    .line 839
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->I:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_4

    .line 840
    aget-object p1, v0, v6

    return-object p1

    .line 841
    :cond_4
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/k;->b(II)Landroidx/media2/exoplayer/external/extractor/f;

    move-result-object p1

    return-object p1

    .line 843
    :cond_5
    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/k;->L:Z

    .line 844
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->I:[I

    aput p1, p2, v6

    .line 845
    aget-object p1, v0, v6

    return-object p1

    .line 846
    :cond_6
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->S:Z

    if-eqz v0, :cond_a

    .line 847
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/k;->b(II)Landroidx/media2/exoplayer/external/extractor/f;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_9

    .line 851
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->I:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_8

    .line 852
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object p1, p1, v0

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    :cond_9
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->S:Z

    if-eqz v0, :cond_a

    .line 856
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/k;->b(II)Landroidx/media2/exoplayer/external/extractor/f;

    move-result-object p1

    return-object p1

    .line 859
    :cond_a
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/k$b;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->A:Landroidx/media2/exoplayer/external/upstream/b;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/k;->H:Ljava/util/Map;

    invoke-direct {v0, v3, v6}, Landroidx/media2/exoplayer/external/source/hls/k$b;-><init>(Landroidx/media2/exoplayer/external/upstream/b;Ljava/util/Map;)V

    .line 860
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/hls/k;->T:J

    invoke-virtual {v0, v6, v7}, Landroidx/media2/exoplayer/external/source/ak;->a(J)V

    .line 861
    iget v3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->U:I

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/source/ak;->a(I)V

    .line 6614
    iput-object p0, v0, Landroidx/media2/exoplayer/external/source/ak;->f:Landroidx/media2/exoplayer/external/source/ak$b;

    .line 863
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->I:[I

    add-int/lit8 v6, v1, 0x1

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->I:[I

    .line 864
    aput p1, v3, v1

    .line 865
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/ak;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    .line 866
    aput-object v0, p1, v1

    .line 867
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->j:[Landroidx/media2/exoplayer/external/source/j;

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/j;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->j:[Landroidx/media2/exoplayer/external/source/j;

    .line 868
    new-instance v3, Landroidx/media2/exoplayer/external/source/j;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v7, v7, v1

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/hls/k;->C:Landroidx/media2/exoplayer/external/drm/k;

    invoke-direct {v3, v7, v8}, Landroidx/media2/exoplayer/external/source/j;-><init>(Landroidx/media2/exoplayer/external/source/ak;Landroidx/media2/exoplayer/external/drm/k;)V

    aput-object v3, p1, v1

    .line 870
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->Q:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->Q:[Z

    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_c

    :cond_b
    const/4 v2, 0x1

    .line 871
    :cond_c
    aput-boolean v2, p1, v1

    .line 873
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->P:Z

    aget-boolean p1, p1, v1

    or-int/2addr p1, v2

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->P:Z

    if-ne p2, v5, :cond_d

    .line 875
    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/k;->J:Z

    .line 876
    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->K:I

    goto :goto_1

    :cond_d
    if-ne p2, v4, :cond_e

    .line 878
    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/k;->L:Z

    .line 879
    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->M:I

    .line 881
    :cond_e
    :goto_1
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/k;->b(I)I

    move-result p1

    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->N:I

    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/k;->b(I)I

    move-result v2

    if-le p1, v2, :cond_f

    .line 882
    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->k:I

    .line 883
    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->N:I

    .line 885
    :cond_f
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->u:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->u:[Z

    return-object v0
.end method

.method public final synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$b;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v14, p6

    .line 72
    move-object/from16 v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/a/b;

    .line 11731
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/a/b;->c()J

    move-result-wide v18

    .line 12198
    instance-of v2, v1, Landroidx/media2/exoplayer/external/source/hls/h;

    .line 11736
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/k;->D:Landroidx/media2/exoplayer/external/upstream/t;

    .line 11737
    invoke-interface {v3, v14}, Landroidx/media2/exoplayer/external/upstream/t;->a(Ljava/io/IOException;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_0

    .line 11740
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    .line 12385
    iget-object v9, v8, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    iget-object v10, v8, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/source/hls/d;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v11, v1, Landroidx/media2/exoplayer/external/source/a/b;->c:Landroidx/media2/exoplayer/external/Format;

    .line 12386
    invoke-virtual {v8, v11}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v8

    invoke-interface {v10, v8}, Landroidx/media2/exoplayer/external/trackselection/e;->c(I)I

    move-result v8

    .line 12385
    invoke-interface {v9, v8, v3, v4}, Landroidx/media2/exoplayer/external/trackselection/e;->a(IJ)Z

    move-result v3

    move/from16 v22, v3

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v22, :cond_3

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-nez v2, :cond_2

    .line 11745
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/h;

    if-ne v2, v1, :cond_1

    const/4 v7, 0x1

    .line 11746
    :cond_1
    invoke-static {v7}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 11747
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11748
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/source/hls/k;->v:J

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/source/hls/k;->R:J

    .line 11751
    :cond_2
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->c:Landroidx/media2/exoplayer/external/upstream/Loader$b;

    goto :goto_1

    .line 11753
    :cond_3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/k;->D:Landroidx/media2/exoplayer/external/upstream/t;

    move/from16 v4, p7

    .line 11754
    invoke-interface {v2, v14, v4}, Landroidx/media2/exoplayer/external/upstream/t;->a(Ljava/io/IOException;I)J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-eqz v2, :cond_4

    .line 11758
    invoke-static {v7, v8, v9}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$b;

    move-result-object v2

    goto :goto_1

    .line 11759
    :cond_4
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->d:Landroidx/media2/exoplayer/external/upstream/Loader$b;

    :goto_1
    move-object/from16 v23, v2

    .line 11762
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/k;->d:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/source/a/b;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 11764
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/a/b;->d()Landroid/net/Uri;

    move-result-object v5

    .line 11765
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/a/b;->e()Ljava/util/Map;

    move-result-object v6

    iget v7, v1, Landroidx/media2/exoplayer/external/source/a/b;->b:I

    iget v8, v0, Landroidx/media2/exoplayer/external/source/hls/k;->a:I

    iget-object v9, v1, Landroidx/media2/exoplayer/external/source/a/b;->c:Landroidx/media2/exoplayer/external/Format;

    iget v10, v1, Landroidx/media2/exoplayer/external/source/a/b;->d:I

    iget-object v11, v1, Landroidx/media2/exoplayer/external/source/a/b;->e:Ljava/lang/Object;

    iget-wide v12, v1, Landroidx/media2/exoplayer/external/source/a/b;->f:J

    move-object v15, v4

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/source/a/b;->g:J

    .line 11777
    invoke-virtual/range {v23 .. v23}, Landroidx/media2/exoplayer/external/upstream/Loader$b;->a()Z

    move-result v1

    const/16 v16, 0x1

    xor-int/lit8 v21, v1, 0x1

    move-object v1, v2

    move-object v2, v15

    move-wide v15, v3

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move v8, v10

    move-object v9, v11

    move-wide v10, v12

    move-wide v12, v15

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    .line 11762
    invoke-virtual/range {v1 .. v21}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v22, :cond_6

    .line 11780
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->m:Z

    if-nez v1, :cond_5

    .line 11781
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->v:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/k;->c(J)Z

    goto :goto_2

    .line 11783
    :cond_5
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->z:Landroidx/media2/exoplayer/external/source/hls/k$a;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/hls/k$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    :cond_6
    :goto_2
    return-object v23
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 891
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->S:Z

    .line 892
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(IZZ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 802
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->J:Z

    .line 803
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->L:Z

    .line 805
    :cond_0
    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->U:I

    .line 806
    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 807
    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/source/ak;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 810
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object p3, p1, v0

    const/4 v1, 0x1

    .line 6163
    iput-boolean v1, p3, Landroidx/media2/exoplayer/external/source/ak;->e:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/o;)V
    .locals 0

    return-void
.end method

.method public final synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJ)V
    .locals 24

    move-object/from16 v0, p0

    .line 72
    move-object/from16 v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/a/b;

    .line 13677
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    .line 14368
    instance-of v3, v1, Landroidx/media2/exoplayer/external/source/hls/d$a;

    if-eqz v3, :cond_0

    .line 14369
    move-object v3, v1

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/d$a;

    .line 15068
    iget-object v4, v3, Landroidx/media2/exoplayer/external/source/a/c;->i:[B

    .line 14370
    iput-object v4, v2, Landroidx/media2/exoplayer/external/source/hls/d;->e:[B

    .line 14371
    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/hls/d;->c:Landroidx/media2/exoplayer/external/source/hls/d$b;

    iget-object v4, v3, Landroidx/media2/exoplayer/external/source/hls/d$a;->a:Landroidx/media2/exoplayer/external/upstream/h;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    .line 15613
    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/hls/d$a;->j:[B

    .line 14371
    invoke-virtual {v2, v4, v3}, Landroidx/media2/exoplayer/external/source/hls/d$b;->a(Landroid/net/Uri;[B)[B

    .line 13678
    :cond_0
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/k;->d:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/a/b;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 13680
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/a/b;->d()Landroid/net/Uri;

    move-result-object v7

    .line 13681
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/a/b;->e()Ljava/util/Map;

    move-result-object v8

    iget v9, v1, Landroidx/media2/exoplayer/external/source/a/b;->b:I

    iget v10, v0, Landroidx/media2/exoplayer/external/source/hls/k;->a:I

    iget-object v11, v1, Landroidx/media2/exoplayer/external/source/a/b;->c:Landroidx/media2/exoplayer/external/Format;

    iget v12, v1, Landroidx/media2/exoplayer/external/source/a/b;->d:I

    iget-object v13, v1, Landroidx/media2/exoplayer/external/source/a/b;->e:Ljava/lang/Object;

    iget-wide v14, v1, Landroidx/media2/exoplayer/external/source/a/b;->f:J

    iget-wide v2, v1, Landroidx/media2/exoplayer/external/source/a/b;->g:J

    move-wide/from16 v16, v2

    .line 13691
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/a/b;->c()J

    move-result-wide v22

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    .line 13678
    invoke-virtual/range {v5 .. v23}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 13692
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->m:Z

    if-nez v1, :cond_1

    .line 13693
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->v:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/k;->c(J)Z

    return-void

    .line 13695
    :cond_1
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->z:Landroidx/media2/exoplayer/external/source/hls/k$a;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/hls/k$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    return-void
.end method

.method public final synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJZ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 72
    move-object/from16 v12, p1

    check-cast v12, Landroidx/media2/exoplayer/external/source/a/b;

    .line 12702
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->d:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v2, v12, Landroidx/media2/exoplayer/external/source/a/b;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 12704
    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/source/a/b;->d()Landroid/net/Uri;

    move-result-object v3

    .line 12705
    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/source/a/b;->e()Ljava/util/Map;

    move-result-object v4

    iget v5, v12, Landroidx/media2/exoplayer/external/source/a/b;->b:I

    iget v6, v0, Landroidx/media2/exoplayer/external/source/hls/k;->a:I

    iget-object v7, v12, Landroidx/media2/exoplayer/external/source/a/b;->c:Landroidx/media2/exoplayer/external/Format;

    iget v8, v12, Landroidx/media2/exoplayer/external/source/a/b;->d:I

    iget-object v9, v12, Landroidx/media2/exoplayer/external/source/a/b;->e:Ljava/lang/Object;

    iget-wide v10, v12, Landroidx/media2/exoplayer/external/source/a/b;->f:J

    move-object/from16 p1, v1

    iget-wide v0, v12, Landroidx/media2/exoplayer/external/source/a/b;->g:J

    move-object/from16 v18, v12

    move-wide v12, v0

    .line 12715
    invoke-virtual/range {v18 .. v18}, Landroidx/media2/exoplayer/external/source/a/b;->c()J

    move-result-wide v18

    move-object/from16 v1, p1

    .line 12702
    invoke-virtual/range {v1 .. v19}, Landroidx/media2/exoplayer/external/source/u$a;->b(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_0

    .line 12717
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/k;->g()V

    move-object/from16 v0, p0

    .line 12718
    iget v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->n:I

    if-lez v1, :cond_1

    .line 12719
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->z:Landroidx/media2/exoplayer/external/source/hls/k$a;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/hls/k$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 483
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    .line 2217
    iput-boolean p1, v0, Landroidx/media2/exoplayer/external/source/hls/d;->d:Z

    return-void
.end method

.method public final varargs a([Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 5

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->m:Z

    .line 231
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/k;->a([Landroidx/media2/exoplayer/external/source/TrackGroup;)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 232
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->O:Ljava/util/Set;

    .line 233
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, p2, v1

    .line 234
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->O:Ljava/util/Set;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v4, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_0
    iput v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->t:I

    .line 237
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->g:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->z:Landroidx/media2/exoplayer/external/source/hls/k$a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/n;->a(Landroidx/media2/exoplayer/external/source/hls/k$a;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(JZ)Z
    .locals 3

    .line 433
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->v:J

    .line 434
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/k;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 436
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->R:J

    return v1

    .line 441
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->l:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/k;->d(J)Z

    move-result p3

    if-eqz p3, :cond_1

    return v2

    .line 446
    :cond_1
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->R:J

    .line 447
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->y:Z

    .line 448
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 449
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 450
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/Loader;->b()V

    goto :goto_0

    .line 452
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/k;->g()V

    :goto_0
    return v1
.end method

.method public final b()V
    .locals 2

    .line 214
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->m:Z

    if-nez v0, :cond_0

    .line 215
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->v:J

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/hls/k;->c(J)Z

    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 4

    .line 910
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->T:J

    .line 911
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 912
    invoke-virtual {v3, p1, p2}, Landroidx/media2/exoplayer/external/source/ak;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    const/high16 v1, -0x80000000

    .line 2289
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(I)V

    .line 503
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/d;->a()V

    return-void
.end method

.method public final c(J)Z
    .locals 18

    move-object/from16 v0, p0

    .line 604
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->y:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 610
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/k;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 612
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/source/hls/k;->R:J

    :goto_0
    move-object v10, v1

    move-wide v8, v3

    goto :goto_1

    .line 614
    :cond_1
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->f:Ljava/util/List;

    .line 615
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/k;->j()Landroidx/media2/exoplayer/external/source/hls/h;

    move-result-object v3

    .line 4286
    iget-boolean v4, v3, Landroidx/media2/exoplayer/external/source/hls/h;->n:Z

    if-eqz v4, :cond_2

    .line 618
    iget-wide v3, v3, Landroidx/media2/exoplayer/external/source/hls/h;->g:J

    goto :goto_0

    .line 619
    :cond_2
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/source/hls/k;->v:J

    iget-wide v6, v3, Landroidx/media2/exoplayer/external/source/hls/h;->f:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 621
    :goto_1
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->m:Z

    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 625
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v11, 0x1

    :goto_3
    iget-object v12, v0, Landroidx/media2/exoplayer/external/source/hls/k;->E:Landroidx/media2/exoplayer/external/source/hls/d$c;

    move-wide/from16 v6, p1

    .line 621
    invoke-virtual/range {v5 .. v12}, Landroidx/media2/exoplayer/external/source/hls/d;->a(JJLjava/util/List;ZLandroidx/media2/exoplayer/external/source/hls/d$c;)V

    .line 627
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->E:Landroidx/media2/exoplayer/external/source/hls/d$c;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/source/hls/d$c;->b:Z

    .line 628
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/k;->E:Landroidx/media2/exoplayer/external/source/hls/d$c;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/hls/d$c;->a:Landroidx/media2/exoplayer/external/source/a/b;

    .line 629
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/k;->E:Landroidx/media2/exoplayer/external/source/hls/d$c;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/source/hls/d$c;->c:Landroid/net/Uri;

    .line 630
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/k;->E:Landroidx/media2/exoplayer/external/source/hls/d$c;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/hls/d$c;->a()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_5

    .line 633
    iput-wide v6, v0, Landroidx/media2/exoplayer/external/source/hls/k;->R:J

    .line 634
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/source/hls/k;->y:Z

    return v3

    :cond_5
    if-nez v4, :cond_7

    if-eqz v5, :cond_6

    .line 640
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->z:Landroidx/media2/exoplayer/external/source/hls/k$a;

    invoke-interface {v1, v5}, Landroidx/media2/exoplayer/external/source/hls/k$a;->a(Landroid/net/Uri;)V

    :cond_6
    return v2

    .line 5198
    :cond_7
    instance-of v1, v4, Landroidx/media2/exoplayer/external/source/hls/h;

    if-eqz v1, :cond_8

    .line 646
    iput-wide v6, v0, Landroidx/media2/exoplayer/external/source/hls/k;->R:J

    .line 647
    move-object v1, v4

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/h;

    .line 5281
    iput-object v0, v1, Landroidx/media2/exoplayer/external/source/hls/h;->m:Landroidx/media2/exoplayer/external/source/hls/k;

    .line 649
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/hls/h;->c:Landroidx/media2/exoplayer/external/Format;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->o:Landroidx/media2/exoplayer/external/Format;

    .line 652
    :cond_8
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/k;->D:Landroidx/media2/exoplayer/external/upstream/t;

    iget v5, v4, Landroidx/media2/exoplayer/external/source/a/b;->b:I

    .line 654
    invoke-interface {v2, v5}, Landroidx/media2/exoplayer/external/upstream/t;->a(I)I

    move-result v2

    .line 653
    invoke-virtual {v1, v4, v0, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader$d;Landroidx/media2/exoplayer/external/upstream/Loader$a;I)J

    move-result-wide v16

    .line 655
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/k;->d:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v6, v4, Landroidx/media2/exoplayer/external/source/a/b;->a:Landroidx/media2/exoplayer/external/upstream/h;

    iget v7, v4, Landroidx/media2/exoplayer/external/source/a/b;->b:I

    iget v8, v0, Landroidx/media2/exoplayer/external/source/hls/k;->a:I

    iget-object v9, v4, Landroidx/media2/exoplayer/external/source/a/b;->c:Landroidx/media2/exoplayer/external/Format;

    iget v10, v4, Landroidx/media2/exoplayer/external/source/a/b;->d:I

    iget-object v11, v4, Landroidx/media2/exoplayer/external/source/a/b;->e:Ljava/lang/Object;

    iget-wide v12, v4, Landroidx/media2/exoplayer/external/source/a/b;->f:J

    iget-wide v14, v4, Landroidx/media2/exoplayer/external/source/a/b;->g:J

    invoke-virtual/range {v5 .. v17}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    return v3

    :cond_9
    :goto_4
    return v2
.end method

.method public final d()J
    .locals 7

    .line 571
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->y:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 573
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/k;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->R:J

    return-wide v0

    .line 576
    :cond_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->v:J

    .line 577
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/k;->j()Landroidx/media2/exoplayer/external/source/hls/h;

    move-result-object v2

    .line 3286
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/source/hls/h;->n:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 579
    :cond_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/h;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 581
    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/hls/h;->g:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 583
    :cond_4
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->l:Z

    if-eqz v2, :cond_5

    .line 584
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 4257
    iget-object v5, v5, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/aj;->e()J

    move-result-wide v5

    .line 586
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 595
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/k;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->R:J

    return-wide v0

    .line 598
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->y:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/k;->j()Landroidx/media2/exoplayer/external/source/hls/h;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/hls/h;->g:J

    return-wide v0
.end method

.method public final f()V
    .locals 4

    .line 476
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/k;->g()V

    .line 477
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->j:[Landroidx/media2/exoplayer/external/source/j;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 478
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/j;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final g()V
    .locals 6

    .line 939
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 940
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/k;->w:Z

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/source/ak;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 942
    :cond_0
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/k;->w:Z

    return-void
.end method

.method final h()V
    .locals 14

    .line 951
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->q:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->s:[I

    if-nez v0, :cond_19

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->l:Z

    if-nez v0, :cond_0

    goto/16 :goto_10

    .line 954
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 7243
    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/aj;->d()Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 959
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v1, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    .line 7972
    iget v0, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    .line 7973
    new-array v5, v0, [I

    iput-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/k;->s:[I

    .line 7974
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_9

    const/4 v5, 0x0

    .line 7976
    :goto_2
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v7, v6

    if-ge v5, v7, :cond_8

    .line 7977
    aget-object v6, v6, v5

    .line 8243
    iget-object v6, v6, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/aj;->d()Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    .line 7978
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v7, v3}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 9202
    iget-object v8, v6, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 9203
    iget-object v9, v7, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 9204
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/m;->g(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v1, :cond_3

    .line 9206
    invoke-static {v9}, Landroidx/media2/exoplayer/external/util/m;->g(Ljava/lang/String;)I

    move-result v6

    if-eq v10, v6, :cond_6

    goto :goto_3

    .line 9207
    :cond_3
    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :goto_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    const-string v9, "application/cea-608"

    .line 9210
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "application/cea-708"

    .line 9211
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 9212
    :cond_5
    iget v6, v6, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    iget v7, v7, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    if-eq v6, v7, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_7

    .line 7979
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/k;->s:[I

    aput v5, v6, v3

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7984
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/j;

    .line 7985
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/hls/j;->c()V

    goto :goto_6

    :cond_a
    return-void

    .line 10024
    :cond_b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v0, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, -0x1

    :goto_7
    const/4 v9, 0x2

    if-ge v6, v0, :cond_11

    .line 10026
    iget-object v10, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v10, v10, v6

    .line 10243
    iget-object v10, v10, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/source/aj;->d()Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    .line 10026
    iget-object v10, v10, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 10028
    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/m;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_8

    .line 10030
    :cond_c
    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/m;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_8

    .line 10032
    :cond_d
    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/m;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x3

    goto :goto_8

    :cond_e
    const/4 v9, 0x6

    .line 10037
    :goto_8
    invoke-static {v9}, Landroidx/media2/exoplayer/external/source/hls/k;->b(I)I

    move-result v10

    invoke-static {v7}, Landroidx/media2/exoplayer/external/source/hls/k;->b(I)I

    move-result v11

    if-le v10, v11, :cond_f

    move v8, v6

    move v7, v9

    goto :goto_9

    :cond_f
    if-ne v9, v7, :cond_10

    if-eq v8, v3, :cond_10

    const/4 v8, -0x1

    :cond_10
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 10048
    :cond_11
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    .line 11186
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/hls/d;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 10049
    iget v5, v1, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    .line 10052
    iput v3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->t:I

    .line 10053
    new-array v3, v0, [I

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/k;->s:[I

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_12

    .line 10055
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/k;->s:[I

    aput v3, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 10059
    :cond_12
    new-array v3, v0, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v0, :cond_17

    .line 10061
    iget-object v10, p0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v10, v10, v6

    .line 11243
    iget-object v10, v10, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/source/aj;->d()Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    if-ne v6, v8, :cond_15

    .line 10063
    new-array v11, v5, [Landroidx/media2/exoplayer/external/Format;

    if-ne v5, v4, :cond_13

    .line 10065
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/media2/exoplayer/external/Format;->copyWithManifestFormatInfo(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    aput-object v10, v11, v2

    goto :goto_d

    :cond_13
    const/4 v12, 0x0

    :goto_c
    if-ge v12, v5, :cond_14

    .line 10068
    invoke-virtual {v1, v12}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v13

    invoke-static {v13, v10, v4}, Landroidx/media2/exoplayer/external/source/hls/k;->a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 10071
    :cond_14
    :goto_d
    new-instance v10, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v10, v11}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v10, v3, v6

    .line 10072
    iput v6, p0, Landroidx/media2/exoplayer/external/source/hls/k;->t:I

    goto :goto_f

    :cond_15
    if-ne v7, v9, :cond_16

    .line 10076
    iget-object v11, v10, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/util/m;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 10077
    iget-object v11, p0, Landroidx/media2/exoplayer/external/source/hls/k;->B:Landroidx/media2/exoplayer/external/Format;

    goto :goto_e

    :cond_16
    const/4 v11, 0x0

    .line 10079
    :goto_e
    new-instance v12, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v13, v4, [Landroidx/media2/exoplayer/external/Format;

    invoke-static {v11, v10, v2}, Landroidx/media2/exoplayer/external/source/hls/k;->a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    aput-object v10, v13, v2

    invoke-direct {v12, v13}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v12, v3, v6

    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 10082
    :cond_17
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/source/hls/k;->a([Landroidx/media2/exoplayer/external/source/TrackGroup;)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 10083
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->O:Ljava/util/Set;

    if-nez v0, :cond_18

    const/4 v2, 0x1

    :cond_18
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 10084
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->O:Ljava/util/Set;

    .line 966
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/source/hls/k;->m:Z

    .line 967
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->z:Landroidx/media2/exoplayer/external/source/hls/k$a;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/k$a;->f()V

    :cond_19
    :goto_10
    return-void
.end method

.method public final i()V
    .locals 2

    .line 904
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/k;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final j()Landroidx/media2/exoplayer/external/source/hls/h;
    .locals 2

    .line 1106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/h;

    return-object v0
.end method

.method final k()Z
    .locals 5

    .line 1110
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/k;->R:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
