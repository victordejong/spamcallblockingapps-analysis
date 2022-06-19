.class public final Landroidx/media2/exoplayer/external/metadata/e;
.super Landroidx/media2/exoplayer/external/b;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/metadata/b;

.field private final b:Landroidx/media2/exoplayer/external/metadata/d;

.field private final c:Landroid/os/Handler;

.field private final d:Landroidx/media2/exoplayer/external/x;

.field private final e:Landroidx/media2/exoplayer/external/metadata/c;

.field private final f:[Landroidx/media2/exoplayer/external/metadata/Metadata;

.field private final g:[J

.field private h:I

.field private i:I

.field private j:Landroidx/media2/exoplayer/external/metadata/a;

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/metadata/d;Landroid/os/Looper;)V
    .locals 1

    .line 74
    sget-object v0, Landroidx/media2/exoplayer/external/metadata/b;->a:Landroidx/media2/exoplayer/external/metadata/b;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/metadata/e;-><init>(Landroidx/media2/exoplayer/external/metadata/d;Landroid/os/Looper;Landroidx/media2/exoplayer/external/metadata/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/metadata/d;Landroid/os/Looper;Landroidx/media2/exoplayer/external/metadata/b;)V
    .locals 1

    const/4 v0, 0x4

    .line 88
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/b;-><init>(I)V

    .line 89
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/metadata/d;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->b:Landroidx/media2/exoplayer/external/metadata/d;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p2, p0}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->c:Landroid/os/Handler;

    .line 92
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/metadata/b;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->a:Landroidx/media2/exoplayer/external/metadata/b;

    .line 93
    new-instance p1, Landroidx/media2/exoplayer/external/x;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/x;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->d:Landroidx/media2/exoplayer/external/x;

    .line 94
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/c;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/metadata/c;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    const/4 p1, 0x5

    new-array p2, p1, [Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 95
    iput-object p2, p0, Landroidx/media2/exoplayer/external/metadata/e;->f:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array p1, p1, [J

    .line 96
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->g:[J

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 1

    .line 234
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/e;->b:Landroidx/media2/exoplayer/external/metadata/d;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/metadata/d;->a(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 168
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;->getWrappedMetadataFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/e;->a:Landroidx/media2/exoplayer/external/metadata/b;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/metadata/b;->a(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/e;->a:Landroidx/media2/exoplayer/external/metadata/b;

    .line 171
    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/metadata/b;->b(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/metadata/a;

    move-result-object v1

    .line 174
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;->getWrappedMetadataBytes()[B

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 175
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/metadata/c;->a()V

    .line 176
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    array-length v4, v2

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/metadata/c;->c(I)V

    .line 177
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/metadata/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 178
    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/metadata/c;->h()V

    .line 179
    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/metadata/a;->a(Landroidx/media2/exoplayer/external/metadata/c;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    invoke-direct {p0, v1, p2}, Landroidx/media2/exoplayer/external/metadata/e;->a(Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/util/List;)V

    goto :goto_1

    .line 186
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private z()V
    .locals 2

    .line 216
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/e;->f:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/e;->h:I

    .line 218
    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/e;->i:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/Format;)I
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/e;->a:Landroidx/media2/exoplayer/external/metadata/b;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/metadata/b;->a(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 102
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/metadata/e;->a(Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 121
    iget-boolean p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->k:Z

    const/4 p4, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-nez p3, :cond_2

    iget p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->i:I

    if-ge p3, v0, :cond_2

    .line 122
    iget-object p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/metadata/c;->a()V

    .line 123
    iget-object p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->d:Landroidx/media2/exoplayer/external/x;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    invoke-virtual {p0, p3, v2, p4}, Landroidx/media2/exoplayer/external/metadata/e;->a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;Z)I

    move-result p3

    const/4 v2, -0x4

    if-ne p3, v2, :cond_1

    .line 125
    iget-object p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/metadata/c;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 126
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/metadata/e;->k:Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/metadata/c;->l_()Z

    move-result p3

    if-nez p3, :cond_2

    .line 132
    iget-object p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/metadata/e;->l:J

    iput-wide v2, p3, Landroidx/media2/exoplayer/external/metadata/c;->f:J

    .line 133
    iget-object p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/metadata/c;->h()V

    .line 134
    iget-object p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->j:Landroidx/media2/exoplayer/external/metadata/a;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    invoke-interface {p3, v2}, Landroidx/media2/exoplayer/external/metadata/a;->a(Landroidx/media2/exoplayer/external/metadata/c;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    invoke-direct {p0, p3, v2}, Landroidx/media2/exoplayer/external/metadata/e;->a(Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/util/List;)V

    .line 138
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 139
    new-instance p3, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p3, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 140
    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/e;->h:I

    iget v3, p0, Landroidx/media2/exoplayer/external/metadata/e;->i:I

    add-int/2addr v2, v3

    rem-int/2addr v2, v0

    .line 142
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/e;->f:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    aput-object p3, v3, v2

    .line 143
    iget-object p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->g:[J

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/e;->e:Landroidx/media2/exoplayer/external/metadata/c;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/metadata/c;->d:J

    aput-wide v3, p3, v2

    .line 144
    iget p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->i:I

    add-int/2addr p3, v1

    iput p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->i:I

    goto :goto_0

    :cond_1
    const/4 v2, -0x5

    if-ne p3, v2, :cond_2

    .line 149
    iget-object p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->d:Landroidx/media2/exoplayer/external/x;

    iget-object p3, p3, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    iget-wide v2, p3, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/metadata/e;->l:J

    .line 153
    :cond_2
    :goto_0
    iget p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->i:I

    if-lez p3, :cond_4

    iget-object p3, p0, Landroidx/media2/exoplayer/external/metadata/e;->g:[J

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/e;->h:I

    aget-wide v3, p3, v2

    cmp-long p3, v3, p1

    if-gtz p3, :cond_4

    .line 154
    iget-object p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->f:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    aget-object p1, p1, v2

    .line 1208
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/e;->c:Landroid/os/Handler;

    if-eqz p2, :cond_3

    .line 1209
    invoke-virtual {p2, p4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1211
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/metadata/e;->a(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    .line 155
    :goto_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->f:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/e;->h:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    add-int/2addr p2, v1

    .line 156
    rem-int/2addr p2, v0

    iput p2, p0, Landroidx/media2/exoplayer/external/metadata/e;->h:I

    .line 157
    iget p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->i:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->i:I

    :cond_4
    return-void
.end method

.method public final a(JZ)V
    .locals 0

    .line 115
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/e;->z()V

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->k:Z

    return-void
.end method

.method public final a([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 110
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/e;->a:Landroidx/media2/exoplayer/external/metadata/b;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Landroidx/media2/exoplayer/external/metadata/b;->b(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/metadata/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/e;->j:Landroidx/media2/exoplayer/external/metadata/a;

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 225
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/metadata/e;->a(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    const/4 p1, 0x1

    return p1

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final r()V
    .locals 1

    .line 193
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/e;->z()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/e;->j:Landroidx/media2/exoplayer/external/metadata/a;

    return-void
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final y()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/e;->k:Z

    return v0
.end method
