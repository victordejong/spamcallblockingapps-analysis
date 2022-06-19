.class final Lcom/google/android/gms/internal/ads/dpm;
.super Lcom/google/android/gms/internal/ads/dlw;
.source "SourceFile"


# static fields
.field static final b:[I


# instance fields
.field private final c:I

.field private final d:Lcom/google/android/gms/internal/ads/dlw;

.field private final e:Lcom/google/android/gms/internal/ads/dlw;

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    .line 142
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/dpm;->b:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dlw;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dpm;->f:I

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dpm;->c:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->i()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dlw;->i()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/dpm;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dpl;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dpm;-><init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;)V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dlw;
    .locals 5

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    .line 14
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dpm;->b(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p0

    return-object p0

    .line 15
    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/dpm;

    if-eqz v2, :cond_4

    .line 16
    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/ads/dpm;

    .line 17
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_3

    .line 18
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dpm;->b(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/dpm;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/ads/dpm;-><init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;)V

    return-object p1

    .line 20
    :cond_3
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dlw;->i()I

    move-result v1

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dlw;->i()I

    move-result v3

    if-le v1, v3, :cond_4

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dlw;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->i()I

    move-result v3

    if-le v1, v3, :cond_4

    .line 22
    new-instance p0, Lcom/google/android/gms/internal/ads/dpm;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/dpm;-><init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;)V

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/dpm;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/ads/dpm;-><init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;)V

    return-object p1

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlw;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->i()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dpm;->d(I)I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/dpm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dpm;-><init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;)V

    return-object v0

    .line 27
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/dpo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dpo;-><init>(Lcom/google/android/gms/internal/ads/dpl;)V

    .line 2003
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dpo;->a(Lcom/google/android/gms/internal/ads/dlw;)V

    .line 2004
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dpo;->a(Lcom/google/android/gms/internal/ads/dlw;)V

    .line 2005
    iget-object p0, v0, Lcom/google/android/gms/internal/ads/dpo;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/dlw;

    .line 2006
    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dpo;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2007
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dpo;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dlw;

    .line 2008
    new-instance v2, Lcom/google/android/gms/internal/ads/dpm;

    invoke-direct {v2, p1, p0, v1}, Lcom/google/android/gms/internal/ads/dpm;-><init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dpl;)V

    move-object p0, v2

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dpm;)Lcom/google/android/gms/internal/ads/dlw;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    return-object p0
.end method

.method private static b(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dlw;
    .locals 4

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v1

    add-int v2, v0, v1

    .line 30
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/android/gms/internal/ads/dlw;->a([BIII)V

    .line 32
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/dlw;->a([BIII)V

    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dlw;->b([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dpm;)Lcom/google/android/gms/internal/ads/dlw;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    return-object p0
.end method

.method static d(I)I
    .locals 2

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/dpm;->b:[I

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 36
    :cond_0
    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpm;->c:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dpm;->b(II)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dlw;->b(I)B

    move-result p1

    return p1
.end method

.method protected final a(III)I
    .locals 2

    add-int v0, p2, p3

    .line 76
    iget v1, p0, Lcom/google/android/gms/internal/ads/dpm;->f:I

    if-gt v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dlw;->a(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dlw;->a(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/dlw;->a(III)I

    move-result p1

    .line 82
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/dlw;->a(III)I

    move-result p1

    return p1
.end method

.method public final a(II)Lcom/google/android/gms/internal/ads/dlw;
    .locals 3

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpm;->c:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/dpm;->c(III)I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sget-object p1, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    return-object p1

    .line 49
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dpm;->c:I

    if-ne v0, v1, :cond_1

    return-object p0

    .line 51
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpm;->f:I

    if-gt p2, v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dlw;->a(II)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p1

    return-object p1

    :cond_2
    if-lt p1, v0, :cond_3

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/dlw;->a(II)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p1

    return-object p1

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/dlw;->a(II)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/dpm;->f:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/dlw;->a(II)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p2

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/dpm;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dpm;-><init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dlw;)V

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/dmb;
    .locals 1

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/dpl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dpl;-><init>(Lcom/google/android/gms/internal/ads/dpm;)V

    return-object v0
.end method

.method protected final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/dlt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dlw;->a(Lcom/google/android/gms/internal/ads/dlt;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dlw;->a(Lcom/google/android/gms/internal/ads/dlt;)V

    return-void
.end method

.method final b(I)B
    .locals 2

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpm;->f:I

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dlw;->b(I)B

    move-result p1

    return p1

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dlw;->b(I)B

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpm;->c:I

    return v0
.end method

.method protected final b(III)I
    .locals 2

    add-int v0, p2, p3

    .line 127
    iget v1, p0, Lcom/google/android/gms/internal/ads/dpm;->f:I

    if-gt v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dlw;->b(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dlw;->b(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/dlw;->b(III)I

    move-result p1

    .line 133
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/dlw;->b(III)I

    move-result p1

    return p1
.end method

.method protected final b([BIII)V
    .locals 2

    add-int v0, p2, p4

    .line 60
    iget v1, p0, Lcom/google/android/gms/internal/ads/dpm;->f:I

    if-gt v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/dlw;->b([BIII)V

    return-void

    :cond_0
    if-lt p2, v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/dlw;->b([BIII)V

    return-void

    :cond_1
    sub-int/2addr v1, p2

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/dlw;->b([BIII)V

    .line 66
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    const/4 v0, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/dlw;->b([BIII)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/dlw;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 87
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/dlw;

    .line 88
    iget v1, p0, Lcom/google/android/gms/internal/ads/dpm;->c:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 90
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/dpm;->c:I

    if-nez v1, :cond_3

    return v0

    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlw;->k()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->k()I

    move-result v3

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eq v1, v3, :cond_4

    return v2

    .line 98
    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/ads/dpn;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/ads/dpn;-><init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dpl;)V

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/dmd;

    .line 101
    new-instance v5, Lcom/google/android/gms/internal/ads/dpn;

    invoke-direct {v5, p1, v3}, Lcom/google/android/gms/internal/ads/dpn;-><init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dpl;)V

    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dmd;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 104
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v8

    sub-int/2addr v8, v3

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v9

    sub-int/2addr v9, v6

    .line 106
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez v3, :cond_5

    .line 108
    invoke-virtual {v4, p1, v6, v10}, Lcom/google/android/gms/internal/ads/dmd;->a(Lcom/google/android/gms/internal/ads/dlw;II)Z

    move-result v11

    goto :goto_1

    .line 109
    :cond_5
    invoke-virtual {p1, v4, v3, v10}, Lcom/google/android/gms/internal/ads/dmd;->a(Lcom/google/android/gms/internal/ads/dlw;II)Z

    move-result v11

    :goto_1
    if-nez v11, :cond_6

    return v2

    :cond_6
    add-int/2addr v7, v10

    .line 113
    iget v11, p0, Lcom/google/android/gms/internal/ads/dpm;->c:I

    if-lt v7, v11, :cond_8

    if-ne v7, v11, :cond_7

    return v0

    .line 116
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    if-ne v10, v8, :cond_9

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dmd;

    move-object v4, v3

    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    add-int/2addr v3, v10

    :goto_2
    if-ne v10, v9, :cond_a

    .line 123
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dmd;

    const/4 v6, 0x0

    goto :goto_0

    :cond_a
    add-int/2addr v6, v10

    goto :goto_0
.end method

.method public final f()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpm;->d:Lcom/google/android/gms/internal/ads/dlw;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dpm;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/google/android/gms/internal/ads/dlw;->a(III)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpm;->e:Lcom/google/android/gms/internal/ads/dlw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/dlw;->a(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final g()Lcom/google/android/gms/internal/ads/dmi;
    .locals 4

    .line 134
    new-instance v0, Lcom/google/android/gms/internal/ads/dpq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dpq;-><init>(Lcom/google/android/gms/internal/ads/dpm;)V

    .line 136
    new-instance v1, Lcom/google/android/gms/internal/ads/dmn;

    const/16 v2, 0x1000

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/dmn;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/dml;)V

    return-object v1
.end method

.method protected final i()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpm;->g:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlw;->a()Lcom/google/android/gms/internal/ads/dmb;

    move-result-object v0

    return-object v0
.end method

.method protected final j()Z
    .locals 2

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpm;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dpm;->g:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dpm;->d(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
