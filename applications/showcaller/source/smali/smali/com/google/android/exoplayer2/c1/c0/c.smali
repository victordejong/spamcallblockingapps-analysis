.class final Lcom/google/android/exoplayer2/c1/c0/c;
.super Lcom/google/android/exoplayer2/c1/c0/i;
.source "FlacReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c1/c0/c$a;
    }
.end annotation


# instance fields
.field private n:Lcom/google/android/exoplayer2/util/l;

.field private o:Lcom/google/android/exoplayer2/c1/c0/c$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c1/c0/i;-><init>()V

    return-void
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/c1/c0/c;)Lcom/google/android/exoplayer2/util/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/c1/c0/c;->n:Lcom/google/android/exoplayer2/util/l;

    return-object p0
.end method

.method private m(Lcom/google/android/exoplayer2/util/v;)I
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->G()J

    .line 4
    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/c1/m;->j(Lcom/google/android/exoplayer2/util/v;I)I

    move-result v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    return v0
.end method

.method private static n([B)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static o(Lcom/google/android/exoplayer2/util/v;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected e(Lcom/google/android/exoplayer2/util/v;)J
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/c1/c0/c;->n([B)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/c0/c;->m(Lcom/google/android/exoplayer2/util/v;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method protected h(Lcom/google/android/exoplayer2/util/v;JLcom/google/android/exoplayer2/c1/c0/i$b;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/v;->a:[B

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/c0/c;->n:Lcom/google/android/exoplayer2/util/l;

    if-nez v1, :cond_0

    .line 3
    new-instance p2, Lcom/google/android/exoplayer2/util/l;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lcom/google/android/exoplayer2/util/l;-><init>([BI)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/c1/c0/c;->n:Lcom/google/android/exoplayer2/util/l;

    const/16 p2, 0x9

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result p1

    invoke-static {v0, p2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/c0/c;->n:Lcom/google/android/exoplayer2/util/l;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/google/android/exoplayer2/util/l;->i([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/exoplayer2/c1/c0/i$b;->a:Lcom/google/android/exoplayer2/Format;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 7
    new-instance p2, Lcom/google/android/exoplayer2/c1/c0/c$a;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/c1/c0/c$a;-><init>(Lcom/google/android/exoplayer2/c1/c0/c;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/c1/c0/c;->o:Lcom/google/android/exoplayer2/c1/c0/c$a;

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/c1/n;->h(Lcom/google/android/exoplayer2/util/v;)Lcom/google/android/exoplayer2/util/l$a;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/c0/c;->n:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/l;->c(Lcom/google/android/exoplayer2/util/l$a;)Lcom/google/android/exoplayer2/util/l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/c0/c;->n:Lcom/google/android/exoplayer2/util/l;

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/c1/c0/c;->n([B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/c0/c;->o:Lcom/google/android/exoplayer2/c1/c0/c$a;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/c1/c0/c$a;->d(J)V

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/c0/c;->o:Lcom/google/android/exoplayer2/c1/c0/c$a;

    iput-object p1, p4, Lcom/google/android/exoplayer2/c1/c0/i$b;->b:Lcom/google/android/exoplayer2/c1/c0/g;

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected j(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/c1/c0/i;->j(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/c0/c;->n:Lcom/google/android/exoplayer2/util/l;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/c0/c;->o:Lcom/google/android/exoplayer2/c1/c0/c$a;

    :cond_0
    return-void
.end method
