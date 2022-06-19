.class final Lcom/google/android/gms/internal/ads/dew;
.super Lcom/google/android/gms/internal/ads/dbi;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field static final b:[I


# instance fields
.field private final c:I

.field private final d:Lcom/google/android/gms/internal/ads/dbi;

.field private final e:Lcom/google/android/gms/internal/ads/dbi;

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/dew;->b:[I

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

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbi;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dew;->c:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->i()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dbi;->i()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dew;->g:I

    .line 7
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dez;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dew;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbi;
    .locals 5

    .prologue
    const/16 v4, 0x80

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    if-nez v0, :cond_1

    move-object p0, p1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    add-int/2addr v1, v0

    .line 13
    if-ge v1, v4, :cond_2

    .line 14
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dew;->b(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object p0

    goto :goto_0

    .line 15
    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/dew;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 16
    check-cast v0, Lcom/google/android/gms/internal/ads/dew;

    .line 17
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, v4, :cond_3

    .line 18
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/dew;->b(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    .line 19
    new-instance p0, Lcom/google/android/gms/internal/ads/dew;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dew;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)V

    goto :goto_0

    .line 20
    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dbi;->i()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dbi;->i()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->i()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->i()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 22
    new-instance v1, Lcom/google/android/gms/internal/ads/dew;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/dew;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)V

    .line 23
    new-instance p0, Lcom/google/android/gms/internal/ads/dew;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dew;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)V

    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->i()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dew;->d(I)I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/dew;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dew;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)V

    move-object p0, v0

    goto :goto_0

    .line 27
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/dey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dey;-><init>(Lcom/google/android/gms/internal/ads/dez;)V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dey;->a(Lcom/google/android/gms/internal/ads/dey;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object p0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dew;)Lcom/google/android/gms/internal/ads/dbi;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbi;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    .line 30
    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 31
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/android/gms/internal/ads/dbi;->a([BIII)V

    .line 32
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/dbi;->a([BIII)V

    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dbi;->b([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dew;)Lcom/google/android/gms/internal/ads/dbi;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    return-object v0
.end method

.method static d(I)I
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/dew;->b:[I

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 35
    const v0, 0x7fffffff

    .line 36
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dew;->b:[I

    aget v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->c:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dew;->b(II)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dbi;->b(I)B

    move-result v0

    return v0
.end method

.method protected final a(III)I
    .locals 4

    .prologue
    .line 75
    add-int v0, p2, p3

    .line 76
    iget v1, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    if-gt v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dbi;->a(III)I

    move-result v0

    .line 82
    :goto_0
    return v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    if-lt p2, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/dbi;->a(III)I

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    sub-int/2addr v0, p2

    .line 81
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dbi;->a(III)I

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/dbi;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public final a(II)Lcom/google/android/gms/internal/ads/dbi;
    .locals 4

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->c:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/dew;->c(III)I

    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    sget-object p0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    .line 59
    :cond_0
    :goto_0
    return-object p0

    .line 49
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/dew;->c:I

    if-eq v0, v1, :cond_0

    .line 51
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    if-gt p2, v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dbi;->a(II)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    if-lt p1, v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbi;->a(II)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object p0

    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/dbi;->a(II)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/dbi;->a(II)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    .line 59
    new-instance p0, Lcom/google/android/gms/internal/ads/dew;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dew;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)V

    goto :goto_0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/dbr;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/dez;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dez;-><init>(Lcom/google/android/gms/internal/ads/dew;)V

    return-object v0
.end method

.method protected final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/dbj;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dbi;->a(Lcom/google/android/gms/internal/ads/dbj;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dbi;->a(Lcom/google/android/gms/internal/ads/dbj;)V

    .line 70
    return-void
.end method

.method final b(I)B
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dbi;->b(I)B

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dbi;->b(I)B

    move-result v0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->c:I

    return v0
.end method

.method protected final b(III)I
    .locals 4

    .prologue
    .line 126
    add-int v0, p2, p3

    .line 127
    iget v1, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    if-gt v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dbi;->b(III)I

    move-result v0

    .line 133
    :goto_0
    return v0

    .line 129
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    if-lt p2, v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/dbi;->b(III)I

    move-result v0

    goto :goto_0

    .line 131
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    sub-int/2addr v0, p2

    .line 132
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dbi;->b(III)I

    move-result v1

    .line 133
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/dbi;->b(III)I

    move-result v0

    goto :goto_0
.end method

.method protected final b([BIII)V
    .locals 4

    .prologue
    .line 60
    add-int v0, p2, p4

    iget v1, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    if-gt v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/dbi;->b([BIII)V

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    if-lt p2, v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/google/android/gms/internal/ads/dbi;->b([BIII)V

    goto :goto_0

    .line 64
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    sub-int/2addr v0, p2

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/dbi;->b([BIII)V

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v0, p4, v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/dbi;->b([BIII)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 83
    if-ne p1, p0, :cond_1

    move v3, v8

    .line 115
    :cond_0
    :goto_0
    return v3

    .line 85
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Lcom/google/android/gms/internal/ads/dbi;

    .line 88
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->c:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 90
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->c:I

    if-nez v0, :cond_2

    move v3, v8

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->k()I

    move-result v0

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->k()I

    move-result v1

    .line 94
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-ne v0, v1, :cond_0

    .line 98
    :cond_3
    new-instance v9, Lcom/google/android/gms/internal/ads/dfb;

    invoke-direct {v9, p0, v2}, Lcom/google/android/gms/internal/ads/dfb;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dez;)V

    .line 99
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbu;

    .line 101
    new-instance v10, Lcom/google/android/gms/internal/ads/dfb;

    invoke-direct {v10, p1, v2}, Lcom/google/android/gms/internal/ads/dfb;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dez;)V

    .line 102
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dbu;

    move v2, v3

    move-object v4, v1

    move v5, v3

    move-object v6, v0

    move v7, v3

    .line 104
    :goto_1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    sub-int v11, v0, v7

    .line 105
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    sub-int v12, v0, v5

    .line 106
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 107
    if-nez v7, :cond_4

    .line 108
    invoke-virtual {v6, v4, v5, v13}, Lcom/google/android/gms/internal/ads/dbu;->a(Lcom/google/android/gms/internal/ads/dbi;II)Z

    move-result v0

    .line 110
    :goto_2
    if-eqz v0, :cond_0

    .line 112
    add-int v1, v2, v13

    .line 113
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->c:I

    if-lt v1, v0, :cond_6

    .line 114
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->c:I

    if-ne v1, v0, :cond_5

    move v3, v8

    .line 115
    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {v4, v6, v7, v13}, Lcom/google/android/gms/internal/ads/dbu;->a(Lcom/google/android/gms/internal/ads/dbi;II)Z

    move-result v0

    goto :goto_2

    .line 116
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 117
    :cond_6
    if-ne v13, v11, :cond_7

    .line 119
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbu;

    move-object v6, v0

    move v7, v3

    .line 121
    :goto_3
    if-ne v13, v12, :cond_8

    .line 123
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbu;

    move v2, v1

    move-object v4, v0

    move v5, v3

    goto :goto_1

    .line 120
    :cond_7
    add-int/2addr v7, v13

    goto :goto_3

    .line 124
    :cond_8
    add-int v0, v5, v13

    move v2, v1

    move v5, v0

    .line 125
    goto :goto_1
.end method

.method public final f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dew;->d:Lcom/google/android/gms/internal/ads/dbi;

    iget v2, p0, Lcom/google/android/gms/internal/ads/dew;->f:I

    invoke-virtual {v1, v0, v0, v2}, Lcom/google/android/gms/internal/ads/dbi;->a(III)I

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dew;->e:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/gms/internal/ads/dbi;->a(III)I

    move-result v1

    .line 74
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/dby;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/gms/internal/ads/dfa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dfa;-><init>(Lcom/google/android/gms/internal/ads/dew;)V

    .line 136
    new-instance v1, Lcom/google/android/gms/internal/ads/dbz;

    const/16 v2, 0x1000

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/dbz;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/dbx;)V

    .line 137
    return-object v1
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->g:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->a()Lcom/google/android/gms/internal/ads/dbr;

    move-result-object v0

    return-object v0
.end method

.method protected final j()Z
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/ads/dew;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dew;->g:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dew;->d(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
