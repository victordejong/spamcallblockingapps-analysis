.class final Lcom/google/android/exoplayer2/extractor/g/b;
.super Lcom/google/android/exoplayer2/extractor/g/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/g/b$a;
    }
.end annotation


# instance fields
.field private j:Lcom/google/android/exoplayer2/extractor/p;

.field private k:Lcom/google/android/exoplayer2/extractor/g/b$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/g/h;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/u;)Z
    .locals 4

    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a([B)Z
    .locals 2

    const/4 v0, 0x0

    .line 62
    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method protected final a(Z)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/g/h;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/b;->k:Lcom/google/android/exoplayer2/extractor/g/b$a;

    :cond_0
    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/util/u;JLcom/google/android/exoplayer2/extractor/g/h$a;)Z
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 3169
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 77
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/g/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 79
    new-instance p2, Lcom/google/android/exoplayer2/extractor/p;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lcom/google/android/exoplayer2/extractor/p;-><init>([BI)V

    .line 80
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    const/16 p3, 0x9

    .line 4127
    iget p1, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 81
    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p3, 0x0

    .line 82
    invoke-virtual {p2, p1, p3}, Lcom/google/android/exoplayer2/extractor/p;->a([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/exoplayer2/extractor/g/h$a;->a:Lcom/google/android/exoplayer2/Format;

    return v2

    :cond_0
    const/4 v3, 0x0

    .line 86
    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 87
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/p$a;

    move-result-object p1

    .line 88
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/extractor/p;->a(Lcom/google/android/exoplayer2/extractor/p$a;)Lcom/google/android/exoplayer2/extractor/p;

    move-result-object p2

    .line 89
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    .line 90
    new-instance p3, Lcom/google/android/exoplayer2/extractor/g/b$a;

    invoke-direct {p3, p2, p1}, Lcom/google/android/exoplayer2/extractor/g/b$a;-><init>(Lcom/google/android/exoplayer2/extractor/p;Lcom/google/android/exoplayer2/extractor/p$a;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/g/b;->k:Lcom/google/android/exoplayer2/extractor/g/b$a;

    return v2

    .line 94
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/g/b;->a([B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 95
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/b;->k:Lcom/google/android/exoplayer2/extractor/g/b$a;

    if-eqz p1, :cond_2

    .line 4133
    iput-wide p2, p1, Lcom/google/android/exoplayer2/extractor/g/b$a;->a:J

    .line 97
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/b;->k:Lcom/google/android/exoplayer2/extractor/g/b$a;

    iput-object p1, p4, Lcom/google/android/exoplayer2/extractor/g/h$a;->b:Lcom/google/android/exoplayer2/extractor/g/f;

    .line 99
    :cond_2
    iget-object p1, p4, Lcom/google/android/exoplayer2/extractor/g/h$a;->a:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_3
    return v2
.end method

.method protected final b(Lcom/google/android/exoplayer2/util/u;)J
    .locals 3

    .line 1169
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 67
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/g/b;->a([B)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2169
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v1, 0x2

    .line 2107
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 2110
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 2111
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->u()J

    .line 2113
    :cond_2
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/m;->a(Lcom/google/android/exoplayer2/util/u;I)I

    move-result v0

    const/4 v1, 0x0

    .line 2114
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    int-to-long v0, v0

    return-wide v0
.end method
