.class public final Lcom/google/android/exoplayer2/metadata/e;
.super Lcom/google/android/exoplayer2/e;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/metadata/b;

.field private final b:Lcom/google/android/exoplayer2/metadata/d;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/exoplayer2/metadata/c;

.field private final e:[Lcom/google/android/exoplayer2/metadata/Metadata;

.field private final f:[J

.field private g:I

.field private h:I

.field private i:Lcom/google/android/exoplayer2/metadata/a;

.field private j:Z

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/d;Landroid/os/Looper;)V
    .locals 1

    .line 73
    sget-object v0, Lcom/google/android/exoplayer2/metadata/b;->a:Lcom/google/android/exoplayer2/metadata/b;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/metadata/e;-><init>(Lcom/google/android/exoplayer2/metadata/d;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/d;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/b;)V
    .locals 1

    const/4 v0, 0x5

    .line 87
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/e;-><init>(I)V

    .line 88
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/e;->b:Lcom/google/android/exoplayer2/metadata/d;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/e;->c:Landroid/os/Handler;

    .line 91
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/b;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/e;->a:Lcom/google/android/exoplayer2/metadata/b;

    .line 92
    new-instance p1, Lcom/google/android/exoplayer2/metadata/c;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    new-array p1, v0, [Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 93
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/e;->e:[Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array p1, v0, [J

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/e;->f:[J

    return-void
.end method

.method private A()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/e;->e:[Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/google/android/exoplayer2/metadata/e;->g:I

    .line 225
    iput v0, p0, Lcom/google/android/exoplayer2/metadata/e;->h:I

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/e;->b:Lcom/google/android/exoplayer2/metadata/d;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/d;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 175
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/e;->a:Lcom/google/android/exoplayer2/metadata/b;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/metadata/b;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/e;->a:Lcom/google/android/exoplayer2/metadata/b;

    .line 178
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/metadata/b;->b(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/a;

    move-result-object v1

    .line 181
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 182
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/metadata/c;->a()V

    .line 183
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/metadata/c;->c(I)V

    .line 184
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    iget-object v3, v3, Lcom/google/android/exoplayer2/metadata/c;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 185
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/c;->h()V

    .line 186
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/metadata/a;->a(Lcom/google/android/exoplayer2/metadata/c;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 189
    invoke-direct {p0, v1, p2}, Lcom/google/android/exoplayer2/metadata/e;->a(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    goto :goto_1

    .line 193
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/e;->a:Lcom/google/android/exoplayer2/metadata/b;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/b;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 107
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, v1

    or-int/2addr p1, v1

    return p1

    :cond_1
    return v1
.end method

.method public final a(JJ)V
    .locals 5

    .line 127
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/metadata/e;->j:Z

    const/4 p4, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-nez p3, :cond_2

    iget p3, p0, Lcom/google/android/exoplayer2/metadata/e;->h:I

    if-ge p3, v0, :cond_2

    .line 128
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/c;->a()V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/e;->t()Lcom/google/android/exoplayer2/q;

    move-result-object p3

    .line 130
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {p0, p3, v2, p4}, Lcom/google/android/exoplayer2/metadata/e;->a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_1

    .line 132
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/c;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 133
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/e;->j:Z

    goto :goto_0

    .line 135
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/e;->l:J

    iput-wide v2, p3, Lcom/google/android/exoplayer2/metadata/c;->g:J

    .line 136
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/c;->h()V

    .line 137
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/e;->i:Lcom/google/android/exoplayer2/metadata/a;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/metadata/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    invoke-interface {p3, v2}, Lcom/google/android/exoplayer2/metadata/a;->a(Lcom/google/android/exoplayer2/metadata/c;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    invoke-direct {p0, p3, v2}, Lcom/google/android/exoplayer2/metadata/e;->a(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    .line 141
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 142
    new-instance p3, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p3, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 143
    iget v2, p0, Lcom/google/android/exoplayer2/metadata/e;->g:I

    iget v3, p0, Lcom/google/android/exoplayer2/metadata/e;->h:I

    add-int/2addr v2, v3

    rem-int/2addr v2, v0

    .line 145
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/e;->e:[Lcom/google/android/exoplayer2/metadata/Metadata;

    aput-object p3, v3, v2

    .line 146
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/e;->f:[J

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/e;->d:Lcom/google/android/exoplayer2/metadata/c;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/metadata/c;->e:J

    aput-wide v3, p3, v2

    .line 147
    iget p3, p0, Lcom/google/android/exoplayer2/metadata/e;->h:I

    add-int/2addr p3, v1

    iput p3, p0, Lcom/google/android/exoplayer2/metadata/e;->h:I

    goto :goto_0

    :cond_1
    const/4 v3, -0x5

    if-ne v2, v3, :cond_2

    .line 152
    iget-object p3, p3, Lcom/google/android/exoplayer2/q;->b:Lcom/google/android/exoplayer2/Format;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/Format;

    iget-wide v2, p3, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/metadata/e;->l:J

    .line 156
    :cond_2
    :goto_0
    iget p3, p0, Lcom/google/android/exoplayer2/metadata/e;->h:I

    if-lez p3, :cond_4

    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/e;->f:[J

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/e;->g:I

    aget-wide v3, p3, v2

    cmp-long p3, v3, p1

    if-gtz p3, :cond_4

    .line 157
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/e;->e:[Lcom/google/android/exoplayer2/metadata/Metadata;

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 2215
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/e;->c:Landroid/os/Handler;

    if-eqz p2, :cond_3

    .line 2216
    invoke-virtual {p2, p4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 2218
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/e;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 159
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/e;->e:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget p2, p0, Lcom/google/android/exoplayer2/metadata/e;->g:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    add-int/2addr p2, v1

    .line 160
    rem-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/metadata/e;->g:I

    .line 161
    iget p1, p0, Lcom/google/android/exoplayer2/metadata/e;->h:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/metadata/e;->h:I

    .line 163
    :cond_4
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/e;->j:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/google/android/exoplayer2/metadata/e;->h:I

    if-nez p1, :cond_5

    .line 164
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/e;->k:Z

    :cond_5
    return-void
.end method

.method public final a(JZ)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/e;->A()V

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/e;->j:Z

    .line 122
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/e;->k:Z

    return-void
.end method

.method public final a([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0

    .line 115
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/e;->a:Lcom/google/android/exoplayer2/metadata/b;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/metadata/b;->b(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/e;->i:Lcom/google/android/exoplayer2/metadata/a;

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 232
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/e;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/4 p1, 0x1

    return p1

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final r()V
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/e;->A()V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/e;->i:Lcom/google/android/exoplayer2/metadata/a;

    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/e;->k:Z

    return v0
.end method
