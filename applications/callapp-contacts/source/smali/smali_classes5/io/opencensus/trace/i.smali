.class final Lio/opencensus/trace/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x200

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x100

    const-string v4, "0123456789abcdef"

    if-ge v2, v3, :cond_0

    ushr-int/lit8 v3, v2, 0x4

    .line 1034
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    or-int/lit16 v3, v2, 0x100

    and-int/lit8 v5, v2, 0xf

    .line 1035
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_0
    sput-object v0, Lio/opencensus/trace/i;->a:[C

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v2, -0x1

    .line 1042
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    :goto_1
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 1044
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v3, v1

    .line 1045
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 29
    :cond_1
    sput-object v0, Lio/opencensus/trace/i;->b:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(B[CI)V
    .locals 2

    and-int/lit16 p0, p0, 0xff

    .line 162
    sget-object v0, Lio/opencensus/trace/i;->a:[C

    aget-char v1, v0, p0

    aput-char v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    or-int/lit16 p0, p0, 0x100

    .line 163
    aget-char p0, v0, p0

    aput-char p0, p1, p2

    return-void
.end method

.method static a(J[B)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "array too small"

    .line 80
    invoke-static {v0, v1}, Lio/opencensus/b/b;->a(ZLjava/lang/Object;)V

    const-wide/16 v1, 0xff

    and-long v3, p0, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x7

    .line 81
    aput-byte v3, p2, v4

    const/16 v3, 0x8

    shr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x6

    .line 82
    aput-byte v3, p2, v4

    const/16 v3, 0x10

    shr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x5

    .line 83
    aput-byte v3, p2, v4

    const/16 v3, 0x18

    shr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x4

    .line 84
    aput-byte v3, p2, v4

    const/16 v3, 0x20

    shr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x3

    .line 85
    aput-byte v3, p2, v4

    const/16 v3, 0x28

    shr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x2

    .line 86
    aput-byte v3, p2, v4

    const/16 v3, 0x30

    shr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 87
    aput-byte v3, p2, v0

    const/16 v0, 0x38

    shr-long/2addr p0, v0

    and-long/2addr p0, v1

    long-to-int p1, p0

    int-to-byte p0, p1

    const/4 p1, 0x0

    .line 88
    aput-byte p0, p2, p1

    return-void
.end method

.method static a(J[CI)V
    .locals 4

    const/16 v0, 0x38

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 118
    invoke-static {v0, p2, p3}, Lio/opencensus/trace/i;->a(B[CI)V

    const/16 v0, 0x30

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0x2

    .line 119
    invoke-static {v0, p2, v1}, Lio/opencensus/trace/i;->a(B[CI)V

    const/16 v0, 0x28

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0x4

    .line 120
    invoke-static {v0, p2, v1}, Lio/opencensus/trace/i;->a(B[CI)V

    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0x6

    .line 121
    invoke-static {v0, p2, v1}, Lio/opencensus/trace/i;->a(B[CI)V

    const/16 v0, 0x18

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0x8

    .line 122
    invoke-static {v0, p2, v1}, Lio/opencensus/trace/i;->a(B[CI)V

    const/16 v0, 0x10

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0xa

    .line 123
    invoke-static {v0, p2, v1}, Lio/opencensus/trace/i;->a(B[CI)V

    const/16 v0, 0x8

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0xc

    .line 124
    invoke-static {v0, p2, v1}, Lio/opencensus/trace/i;->a(B[CI)V

    and-long/2addr p0, v2

    long-to-int p1, p0

    int-to-byte p0, p1

    add-int/lit8 p3, p3, 0xe

    .line 125
    invoke-static {p0, p2, p3}, Lio/opencensus/trace/i;->a(B[CI)V

    return-void
.end method
