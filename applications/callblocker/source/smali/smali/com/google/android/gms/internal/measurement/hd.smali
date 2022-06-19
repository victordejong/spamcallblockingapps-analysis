.class final Lcom/google/android/gms/internal/measurement/hd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/he;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 52
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/cq;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Lcom/google/android/gms/internal/measurement/hj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/hj;-><init>()V

    .line 54
    :goto_1
    sput-object v0, Lcom/google/android/gms/internal/measurement/hd;->a:Lcom/google/android/gms/internal/measurement/he;

    .line 55
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/hh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/hh;-><init>()V

    goto :goto_1
.end method

.method static synthetic a(I)I
    .locals 1

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/hd;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(II)I
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/hd;->b(II)I

    move-result v0

    return v0
.end method

.method static synthetic a(III)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/hd;->b(III)I

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/CharSequence;)I
    .locals 8

    .prologue
    const/16 v7, 0x800

    const/4 v1, 0x0

    .line 15
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v0, v1

    .line 18
    :goto_0
    if-ge v0, v3, :cond_7

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x80

    if-ge v2, v4, :cond_7

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :goto_1
    if-ge v0, v3, :cond_6

    .line 21
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 22
    if-ge v4, v7, :cond_0

    .line 23
    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v2, v4

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 27
    :goto_2
    if-ge v0, v4, :cond_4

    .line 28
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 29
    if-ge v5, v7, :cond_2

    .line 30
    rsub-int/lit8 v5, v5, 0x7f

    ushr-int/lit8 v5, v5, 0x1f

    add-int/2addr v1, v5

    .line 37
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 31
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 32
    const v6, 0xd800

    if-gt v6, v5, :cond_1

    const v6, 0xdfff

    if-gt v5, v6, :cond_1

    .line 33
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 34
    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_3

    .line 35
    new-instance v1, Lcom/google/android/gms/internal/measurement/hg;

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/measurement/hg;-><init>(II)V

    throw v1

    .line 36
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 39
    :cond_4
    add-int v0, v2, v1

    .line 42
    :goto_4
    if-ge v0, v3, :cond_5

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    int-to-long v2, v0

    const-wide v4, 0x100000000L

    add-long/2addr v2, v4

    const/16 v0, 0x36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "UTF-8 length does not fit in int: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_5
    return v0

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method static a(Ljava/lang/CharSequence;[BII)I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->a:Lcom/google/android/gms/internal/measurement/he;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/he;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    return v0
.end method

.method public static a([B)Z
    .locals 3

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->a:Lcom/google/android/gms/internal/measurement/he;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/he;->a([BII)Z

    move-result v0

    return v0
.end method

.method public static a([BII)Z
    .locals 1

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->a:Lcom/google/android/gms/internal/measurement/he;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/he;->a([BII)Z

    move-result v0

    return v0
.end method

.method private static b(I)I
    .locals 1

    .prologue
    .line 3
    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method private static b(II)I
    .locals 1

    .prologue
    .line 4
    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    const/16 v0, -0x41

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    goto :goto_0
.end method

.method private static b(III)I
    .locals 2

    .prologue
    const/16 v1, -0x41

    .line 5
    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-le p2, v1, :cond_1

    .line 6
    :cond_0
    const/4 v0, -0x1

    .line 8
    :goto_0
    return v0

    .line 7
    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    .line 8
    goto :goto_0
.end method

.method static b([BII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->a:Lcom/google/android/gms/internal/measurement/he;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/he;->b([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c([BII)I
    .locals 1

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/hd;->d([BII)I

    move-result v0

    return v0
.end method

.method private static d([BII)I
    .locals 3

    .prologue
    .line 9
    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    .line 10
    sub-int v1, p2, p1

    packed-switch v1, :pswitch_data_0

    .line 14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 11
    :pswitch_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/hd;->b(I)I

    move-result v0

    .line 13
    :goto_0
    return v0

    .line 12
    :pswitch_1
    aget-byte v1, p0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/hd;->b(II)I

    move-result v0

    goto :goto_0

    .line 13
    :pswitch_2
    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/hd;->b(III)I

    move-result v0

    goto :goto_0

    .line 10
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
