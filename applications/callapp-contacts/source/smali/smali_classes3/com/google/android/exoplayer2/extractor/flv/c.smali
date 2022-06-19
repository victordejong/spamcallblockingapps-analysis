.class final Lcom/google/android/exoplayer2/extractor/flv/c;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "SourceFile"


# instance fields
.field a:J

.field b:[J

.field c:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/google/android/exoplayer2/extractor/g;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/g;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/x;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 55
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->a:J

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 56
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:[J

    new-array v0, v0, [J

    .line 57
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->c:[J

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 263
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->h(Lcom/google/android/exoplayer2/util/u;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 261
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->e(Lcom/google/android/exoplayer2/util/u;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 259
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->g(Lcom/google/android/exoplayer2/util/u;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 257
    :cond_3
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->f(Lcom/google/android/exoplayer2/util/u;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 255
    :cond_4
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->d(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 253
    :cond_5
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->b(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 251
    :cond_6
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->c(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/Boolean;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/Double;
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/String;
    .locals 3

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v0

    .line 2144
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 170
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 171
    new-instance v2, Ljava/lang/String;

    .line 2169
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 171
    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static e(Lcom/google/android/exoplayer2/util/u;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v0

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v3

    .line 185
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/extractor/flv/c;->a(Lcom/google/android/exoplayer2/util/u;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static f(Lcom/google/android/exoplayer2/util/u;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->d(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/String;

    move-result-object v1

    .line 4138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 207
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/extractor/flv/c;->a(Lcom/google/android/exoplayer2/util/u;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static g(Lcom/google/android/exoplayer2/util/u;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v0

    .line 223
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 225
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->d(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/String;

    move-result-object v3

    .line 5138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v4

    .line 227
    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/extractor/flv/c;->a(Lcom/google/android/exoplayer2/util/u;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 229
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static h(Lcom/google/android/exoplayer2/util/u;)Ljava/util/Date;
    .locals 3

    .line 242
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->c(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x2

    .line 243
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer2/util/u;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final a(Lcom/google/android/exoplayer2/util/u;J)Z
    .locals 9

    .line 1138
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return p3

    .line 89
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/flv/c;->d(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onMetaData"

    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return p3

    .line 2138
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    return p3

    .line 99
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/flv/c;->g(Lcom/google/android/exoplayer2/util/u;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "duration"

    .line 101
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 102
    instance-of v0, p2, Ljava/lang/Double;

    const-wide v1, 0x412e848000000000L    # 1000000.0

    if-eqz v0, :cond_3

    .line 103
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p2, v3, v5

    if-lez p2, :cond_3

    mul-double v3, v3, v1

    double-to-long v3, v3

    .line 105
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->a:J

    :cond_3
    const-string p2, "keyframes"

    .line 109
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 110
    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_5

    .line 111
    check-cast p1, Ljava/util/Map;

    const-string p2, "filepositions"

    .line 112
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "times"

    .line 113
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 114
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 115
    check-cast p2, Ljava/util/List;

    .line 116
    check-cast p1, Ljava/util/List;

    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    new-array v3, v0, [J

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:[J

    .line 119
    new-array v3, v0, [J

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->c:[J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 121
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 122
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 123
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_4

    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_4

    .line 124
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:[J

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    mul-double v7, v7, v1

    double-to-long v7, v7

    aput-wide v7, v6, v3

    .line 125
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->c:[J

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-array p1, p3, [J

    .line 127
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:[J

    new-array p1, p3, [J

    .line 128
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->c:[J

    :cond_5
    return p3
.end method
