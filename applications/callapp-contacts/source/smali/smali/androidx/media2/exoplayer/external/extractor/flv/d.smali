.class final Landroidx/media2/exoplayer/external/extractor/flv/d;
.super Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;
.source "SourceFile"


# instance fields
.field a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/f;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/f;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;-><init>(Landroidx/media2/exoplayer/external/extractor/q;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/d;->a:J

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;I)Ljava/lang/Object;
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

    .line 227
    :cond_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/d;->h(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 225
    :cond_1
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/d;->e(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 223
    :cond_2
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/d;->g(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 221
    :cond_3
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/d;->f(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 219
    :cond_4
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/d;->d(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :cond_5
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/d;->b(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 215
    :cond_6
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/d;->c(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/Boolean;
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

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

.method private static c(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/Double;
    .locals 2

    .line 122
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/String;
    .locals 3

    .line 132
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v0

    .line 2142
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 134
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 135
    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static e(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/p;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v0

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3102
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v3

    .line 149
    invoke-static {p0, v3}, Landroidx/media2/exoplayer/external/extractor/flv/d;->a(Landroidx/media2/exoplayer/external/util/p;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static f(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/p;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    :cond_0
    :goto_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/d;->d(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/String;

    move-result-object v1

    .line 4102
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 171
    invoke-static {p0, v2}, Landroidx/media2/exoplayer/external/extractor/flv/d;->a(Landroidx/media2/exoplayer/external/util/p;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static g(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/p;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v0

    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 189
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/d;->d(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/String;

    move-result-object v3

    .line 5102
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    .line 191
    invoke-static {p0, v4}, Landroidx/media2/exoplayer/external/extractor/flv/d;->a(Landroidx/media2/exoplayer/external/util/p;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static h(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/Date;
    .locals 3

    .line 206
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/d;->c(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x2

    .line 207
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    return-object v0
.end method


# virtual methods
.method protected final a(Landroidx/media2/exoplayer/external/util/p;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final a(Landroidx/media2/exoplayer/external/util/p;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1102
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    .line 80
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/flv/d;->d(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onMetaData"

    .line 81
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 2102
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    return p3

    .line 91
    :cond_1
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/flv/d;->g(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "duration"

    .line 92
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p1, p1, v0

    double-to-long p1, p1

    .line 95
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/d;->a:J

    :cond_2
    return p3

    .line 78
    :cond_3
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw p1
.end method
