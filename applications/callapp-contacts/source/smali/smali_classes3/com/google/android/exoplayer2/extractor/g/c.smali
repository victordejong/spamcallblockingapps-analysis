.class public final Lcom/google/android/exoplayer2/extractor/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;


# instance fields
.field private b:Lcom/google/android/exoplayer2/extractor/j;

.field private c:Lcom/google/android/exoplayer2/extractor/g/h;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/exoplayer2/extractor/g/-$$Lambda$c$loKAew4UdPo9cuEUkCza-LTHvuU;->INSTANCE:Lcom/google/android/exoplayer2/extractor/g/-$$Lambda$c$loKAew4UdPo9cuEUkCza-LTHvuU;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/g/c;->a:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 40
    new-instance v1, Lcom/google/android/exoplayer2/extractor/g/c;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/g/c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "streamReader"
        }
        result = true
    .end annotation

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/extractor/g/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/g/e;-><init>()V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/g/e;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/g/e;->i:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 100
    new-instance v2, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 5169
    iget-object v4, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 101
    invoke-interface {p1, v4, v3, v0}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 6116
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 103
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/g/b;->a(Lcom/google/android/exoplayer2/util/u;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    new-instance p1, Lcom/google/android/exoplayer2/extractor/g/b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/g/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/c;->c:Lcom/google/android/exoplayer2/extractor/g/h;

    goto :goto_0

    .line 7116
    :cond_1
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 105
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/g/i;->a(Lcom/google/android/exoplayer2/util/u;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    new-instance p1, Lcom/google/android/exoplayer2/extractor/g/i;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/g/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/c;->c:Lcom/google/android/exoplayer2/extractor/g/h;

    goto :goto_0

    .line 8116
    :cond_2
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 107
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/g/g;->a(Lcom/google/android/exoplayer2/util/u;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    new-instance p1, Lcom/google/android/exoplayer2/extractor/g/g;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/g/g;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/c;->c:Lcom/google/android/exoplayer2/extractor/g/h;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method

.method public static synthetic lambda$loKAew4UdPo9cuEUkCza-LTHvuU()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/g/c;->a()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 76
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/c;->b:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/c;->c:Lcom/google/android/exoplayer2/extractor/g/h;

    if-nez v2, :cond_1

    .line 78
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/g/c;->b(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Failed to determine bitstream type"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1
    :goto_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/g/c;->d:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 84
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/c;->b:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v2

    .line 85
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/g/c;->b:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    .line 86
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/g/c;->c:Lcom/google/android/exoplayer2/extractor/g/h;

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/g/c;->b:Lcom/google/android/exoplayer2/extractor/j;

    invoke-virtual {v5, v6, v2}, Lcom/google/android/exoplayer2/extractor/g/h;->a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/x;)V

    .line 87
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/g/c;->d:Z

    .line 89
    :cond_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/c;->c:Lcom/google/android/exoplayer2/extractor/g/h;

    .line 1132
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/g/h;->b:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/g/h;->c:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    iget v5, v2, Lcom/google/android/exoplayer2/extractor/g/h;->f:I

    const/4 v6, -0x1

    const/4 v15, 0x2

    if-eqz v5, :cond_6

    if-eq v5, v4, :cond_5

    if-eq v5, v15, :cond_4

    const/4 v1, 0x3

    if-ne v5, v1, :cond_3

    return v6

    .line 1126
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1120
    :cond_4
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/g/h;->d:Lcom/google/android/exoplayer2/extractor/g/f;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p2

    .line 1121
    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/g/h;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I

    move-result v1

    return v1

    .line 1116
    :cond_5
    iget-wide v4, v2, Lcom/google/android/exoplayer2/extractor/g/h;->e:J

    long-to-int v5, v4

    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 1117
    iput v15, v2, Lcom/google/android/exoplayer2/extractor/g/h;->f:I

    return v3

    .line 1163
    :cond_6
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/g/h;->a(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v5

    if-nez v5, :cond_7

    return v6

    .line 1167
    :cond_7
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/g/h;->h:Lcom/google/android/exoplayer2/extractor/g/h$a;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/g/h$a;->a:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput v5, v2, Lcom/google/android/exoplayer2/extractor/g/h;->g:I

    .line 1168
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/extractor/g/h;->i:Z

    if-nez v5, :cond_8

    .line 1169
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/g/h;->b:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v6, v2, Lcom/google/android/exoplayer2/extractor/g/h;->h:Lcom/google/android/exoplayer2/extractor/g/h$a;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/g/h$a;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 1170
    iput-boolean v4, v2, Lcom/google/android/exoplayer2/extractor/g/h;->i:Z

    .line 1173
    :cond_8
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/g/h;->h:Lcom/google/android/exoplayer2/extractor/g/h$a;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/g/h$a;->b:Lcom/google/android/exoplayer2/extractor/g/f;

    if-eqz v5, :cond_9

    .line 1174
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/g/h;->h:Lcom/google/android/exoplayer2/extractor/g/h$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/g/h$a;->b:Lcom/google/android/exoplayer2/extractor/g/f;

    iput-object v1, v2, Lcom/google/android/exoplayer2/extractor/g/h;->d:Lcom/google/android/exoplayer2/extractor/g/f;

    :goto_1
    const/4 v1, 0x2

    goto :goto_3

    .line 1175
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_a

    .line 1176
    new-instance v1, Lcom/google/android/exoplayer2/extractor/g/h$b;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/extractor/g/h$b;-><init>(Lcom/google/android/exoplayer2/extractor/g/h$1;)V

    iput-object v1, v2, Lcom/google/android/exoplayer2/extractor/g/h;->d:Lcom/google/android/exoplayer2/extractor/g/f;

    goto :goto_1

    .line 1178
    :cond_a
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/g/h;->a:Lcom/google/android/exoplayer2/extractor/g/d;

    .line 2113
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/g/d;->a:Lcom/google/android/exoplayer2/extractor/g/e;

    .line 1179
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/g/e;->b:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_b

    const/16 v17, 0x1

    goto :goto_2

    :cond_b
    const/16 v17, 0x0

    .line 1180
    :goto_2
    new-instance v4, Lcom/google/android/exoplayer2/extractor/g/a;

    iget-wide v9, v2, Lcom/google/android/exoplayer2/extractor/g/h;->e:J

    .line 1184
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v11

    iget v1, v5, Lcom/google/android/exoplayer2/extractor/g/e;->h:I

    iget v6, v5, Lcom/google/android/exoplayer2/extractor/g/e;->i:I

    add-int/2addr v1, v6

    int-to-long v13, v1

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/g/e;->c:J

    move-object v7, v4

    move-object v8, v2

    const/4 v1, 0x2

    move-wide v15, v5

    invoke-direct/range {v7 .. v17}, Lcom/google/android/exoplayer2/extractor/g/a;-><init>(Lcom/google/android/exoplayer2/extractor/g/h;JJJJZ)V

    iput-object v4, v2, Lcom/google/android/exoplayer2/extractor/g/h;->d:Lcom/google/android/exoplayer2/extractor/g/f;

    .line 1190
    :goto_3
    iput v1, v2, Lcom/google/android/exoplayer2/extractor/g/h;->f:I

    .line 1192
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/g/h;->a:Lcom/google/android/exoplayer2/extractor/g/d;

    .line 2127
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 2127
    array-length v2, v2

    const v4, 0xfe01

    if-eq v2, v4, :cond_c

    .line 2130
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 2132
    iget-object v6, v1, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 4127
    iget v6, v6, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 2132
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2131
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 5127
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 2130
    invoke-virtual {v2, v4, v1}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    :cond_c
    return v3
.end method

.method public final a(JJ)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/c;->c:Lcom/google/android/exoplayer2/extractor/g/h;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/g/h;->a(JJ)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/c;->b:Lcom/google/android/exoplayer2/extractor/j;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/g/c;->b(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
