.class public final Lcom/google/android/exoplayer2/extractor/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/extractor/h/d;

.field private final c:Lcom/google/android/exoplayer2/util/u;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/exoplayer2/extractor/h/-$$Lambda$c$bP2kFCwd2Mfea4B4vbNDeAHQqJE;->INSTANCE:Lcom/google/android/exoplayer2/extractor/h/-$$Lambda$c$bP2kFCwd2Mfea4B4vbNDeAHQqJE;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/h/c;->a:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/h/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/c;->b:Lcom/google/android/exoplayer2/extractor/h/d;

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/c;->c:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method

.method private static synthetic a()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 40
    new-instance v1, Lcom/google/android/exoplayer2/extractor/h/c;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/h/c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static synthetic lambda$bP2kFCwd2Mfea4B4vbNDeAHQqJE()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/h/c;->a()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/c;->c:Lcom/google/android/exoplayer2/util/u;

    .line 4169
    iget-object p2, p2, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0x4000

    .line 137
    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/i;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 143
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/c;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 144
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/c;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 146
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h/c;->d:Z

    if-nez p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/c;->b:Lcom/google/android/exoplayer2/extractor/h/d;

    const-wide/16 v1, 0x0

    .line 5110
    iput-wide v1, p1, Lcom/google/android/exoplayer2/extractor/h/d;->a:J

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h/c;->d:Z

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/c;->b:Lcom/google/android/exoplayer2/extractor/h/d;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/c;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/h/d;->a(Lcom/google/android/exoplayer2/util/u;)V

    return v0
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h/c;->d:Z

    .line 126
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/c;->b:Lcom/google/android/exoplayer2/extractor/h/d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/h/d;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/c;->b:Lcom/google/android/exoplayer2/extractor/h/d;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/h/ad$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/h/ad$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/h/d;->a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V

    .line 119
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    .line 120
    new-instance v0, Lcom/google/android/exoplayer2/extractor/v$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1169
    :goto_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 76
    invoke-interface {p1, v4, v2, v1}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 77
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 78
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v4

    const v5, 0x494433

    if-ne v4, v5, :cond_0

    const/4 v4, 0x3

    .line 81
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 82
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->n()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 84
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 87
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    .line 2169
    :goto_2
    iget-object v5, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v6, 0x7

    .line 92
    invoke-interface {p1, v5, v2, v6}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 93
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 94
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v5

    const v6, 0xac40

    if-eq v5, v6, :cond_2

    const v6, 0xac41

    if-eq v5, v6, :cond_2

    .line 97
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_1

    return v2

    .line 101
    :cond_1
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    add-int/2addr v1, v6

    const/4 v7, 0x4

    if-lt v1, v7, :cond_3

    return v6

    .line 3169
    :cond_3
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 106
    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/audio/c;->a([BI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, -0x7

    .line 110
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    goto :goto_2
.end method
