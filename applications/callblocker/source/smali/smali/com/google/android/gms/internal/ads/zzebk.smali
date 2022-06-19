.class public abstract Lcom/google/android/gms/internal/ads/zzebk;
.super Lcom/google/android/gms/internal/ads/dbj;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzebk$a;,
        Lcom/google/android/gms/internal/ads/zzebk$zzb;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Z


# instance fields
.field a:Lcom/google/android/gms/internal/ads/dcf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-class v0, Lcom/google/android/gms/internal/ads/zzebk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzebk;->b:Ljava/util/logging/Logger;

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgb;->a()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzebk;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dce;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzebk;-><init>()V

    return-void
.end method

.method public static a(ILcom/google/android/gms/internal/ads/ddk;)I
    .locals 3

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ddk;->b()I

    move-result v1

    .line 52
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 53
    add-int/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/ddk;)I
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ddk;->b()I

    move-result v0

    .line 118
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    return v0
.end method

.method static a(Lcom/google/android/gms/internal/ads/deg;Lcom/google/android/gms/internal/ads/dfd;)I
    .locals 2

    .prologue
    .line 129
    check-cast p0, Lcom/google/android/gms/internal/ads/day;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/day;->m()I

    move-result v0

    .line 131
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 132
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/dfd;->b(Ljava/lang/Object;)I

    move-result v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/day;->a(I)V

    .line 136
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    return v0
.end method

.method public static a([B)Lcom/google/android/gms/internal/ads/zzebk;
    .locals 3

    .prologue
    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzebk$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzebk$a;-><init>([BII)V

    .line 3
    return-object v1
.end method

.method public static b(D)I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x8

    return v0
.end method

.method public static b(F)I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x4

    return v0
.end method

.method public static b(ID)I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static b(IF)I
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static b(ILcom/google/android/gms/internal/ads/ddk;)I
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    .line 66
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzebk;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 67
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzebk;->a(ILcom/google/android/gms/internal/ads/ddk;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    return v0
.end method

.method public static b(ILcom/google/android/gms/internal/ads/deg;)I
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    .line 56
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzebk;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->b(Lcom/google/android/gms/internal/ads/deg;)I

    move-result v2

    add-int/2addr v1, v2

    .line 59
    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method static b(ILcom/google/android/gms/internal/ads/deg;Lcom/google/android/gms/internal/ads/dfd;)I
    .locals 2

    .prologue
    .line 54
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzebk;->a(Lcom/google/android/gms/internal/ads/deg;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->b(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/dbi;)I
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    .line 121
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    return v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/deg;)I
    .locals 2

    .prologue
    .line 126
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/deg;->q()I

    move-result v0

    .line 127
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dgd;->a(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/dgh; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 115
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    return v0

    .line 112
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 113
    array-length v0, v0

    goto :goto_0
.end method

.method public static b(Z)I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public static b([B)I
    .locals 2

    .prologue
    .line 123
    array-length v0, p0

    .line 124
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    return v0
.end method

.method public static c(ILcom/google/android/gms/internal/ads/dbi;)I
    .locals 3

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 49
    add-int/2addr v0, v1

    return v0
.end method

.method static c(ILcom/google/android/gms/internal/ads/deg;Lcom/google/android/gms/internal/ads/dfd;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    shl-int/lit8 v1, v0, 0x1

    .line 152
    check-cast p1, Lcom/google/android/gms/internal/ads/day;

    .line 153
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/day;->m()I

    move-result v0

    .line 154
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 155
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/dfd;->b(Ljava/lang/Object;)I

    move-result v0

    .line 156
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/day;->a(I)V

    .line 158
    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public static c(Lcom/google/android/gms/internal/ads/deg;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/deg;->q()I

    move-result v0

    return v0
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 162
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzebk;->c:Z

    return v0
.end method

.method public static d(IJ)I
    .locals 3

    .prologue
    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    .line 31
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzebk;->e(J)I

    move-result v1

    .line 32
    add-int/2addr v0, v1

    return v0
.end method

.method public static d(ILcom/google/android/gms/internal/ads/dbi;)I
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    .line 62
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzebk;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 63
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/dbi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    return v0
.end method

.method public static d(J)I
    .locals 2

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzebk;->e(J)I

    move-result v0

    return v0
.end method

.method public static e(I)I
    .locals 1

    .prologue
    .line 69
    .line 70
    shl-int/lit8 v0, p0, 0x3

    .line 71
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v0

    return v0
.end method

.method public static e(IJ)I
    .locals 3

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzebk;->e(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(J)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 88
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 89
    const/4 v0, 0x1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    cmp-long v0, p0, v6

    if-gez v0, :cond_2

    .line 91
    const/16 v0, 0xa

    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x2

    .line 93
    const-wide v2, -0x800000000L

    and-long/2addr v2, p0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 94
    const/4 v0, 0x6

    .line 95
    const/16 v1, 0x1c

    ushr-long v2, p0, v1

    .line 96
    :goto_1
    const-wide/32 v4, -0x200000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    .line 97
    add-int/lit8 v0, v0, 0x2

    .line 98
    const/16 v1, 0xe

    ushr-long/2addr v2, v1

    .line 99
    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move-wide v2, p0

    goto :goto_1
.end method

.method public static f(I)I
    .locals 1

    .prologue
    .line 72
    if-ltz p0, :cond_0

    .line 73
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static f(II)I
    .locals 2

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(IJ)I
    .locals 5

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzebk;->i(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzebk;->e(J)I

    move-result v1

    .line 36
    add-int/2addr v0, v1

    return v0
.end method

.method public static f(J)I
    .locals 2

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzebk;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->e(J)I

    move-result v0

    return v0
.end method

.method public static g(I)I
    .locals 1

    .prologue
    .line 75
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 77
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    .line 78
    const/4 v0, 0x2

    goto :goto_0

    .line 79
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    .line 80
    const/4 v0, 0x3

    goto :goto_0

    .line 81
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    .line 82
    const/4 v0, 0x4

    goto :goto_0

    .line 83
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static g(II)I
    .locals 2

    .prologue
    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static g(IJ)I
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static g(J)I
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x8

    return v0
.end method

.method public static h(I)I
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->m(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v0

    return v0
.end method

.method public static h(II)I
    .locals 2

    .prologue
    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->m(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v1

    .line 27
    add-int/2addr v0, v1

    return v0
.end method

.method public static h(IJ)I
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static h(J)I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x8

    return v0
.end method

.method public static i(I)I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x4

    return v0
.end method

.method public static i(II)I
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static i(J)J
    .locals 4

    .prologue
    .line 139
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static j(I)I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x4

    return v0
.end method

.method public static j(II)I
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static k(I)I
    .locals 1

    .prologue
    .line 108
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->f(I)I

    move-result v0

    return v0
.end method

.method public static k(II)I
    .locals 2

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v0

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->f(I)I

    move-result v1

    .line 44
    add-int/2addr v0, v1

    return v0
.end method

.method public static l(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v0

    return v0
.end method

.method private static m(I)I
    .locals 2

    .prologue
    .line 138
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(B)V
.end method

.method public final a(D)V
    .locals 3

    .prologue
    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->c(J)V

    .line 20
    return-void
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 17
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->d(I)V

    .line 18
    return-void
.end method

.method public abstract a(I)V
.end method

.method public final a(ID)V
    .locals 2

    .prologue
    .line 11
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->c(IJ)V

    .line 12
    return-void
.end method

.method public final a(IF)V
    .locals 1

    .prologue
    .line 9
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzebk;->e(II)V

    .line 10
    return-void
.end method

.method public abstract a(II)V
.end method

.method public abstract a(IJ)V
.end method

.method public abstract a(ILcom/google/android/gms/internal/ads/dbi;)V
.end method

.method public abstract a(ILcom/google/android/gms/internal/ads/deg;)V
.end method

.method abstract a(ILcom/google/android/gms/internal/ads/deg;Lcom/google/android/gms/internal/ads/dfd;)V
.end method

.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(IZ)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Lcom/google/android/gms/internal/ads/dbi;)V
.end method

.method public abstract a(Lcom/google/android/gms/internal/ads/deg;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dgh;)V
    .locals 6

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebk;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v2, "com.google.protobuf.CodedOutputStream"

    const-string/jumbo v3, "inefficientWriteStringNoTag"

    const-string/jumbo v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    sget-object v0, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 145
    :try_start_0
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->b(I)V

    .line 146
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbj;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzebk$zzb; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Lcom/google/android/gms/internal/ads/zzebk$zzb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzebk$zzb;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 150
    :catch_1
    move-exception v0

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 21
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->a(B)V

    .line 22
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzebk;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    return-void
.end method

.method public abstract b(I)V
.end method

.method public abstract b(II)V
.end method

.method public final b(IJ)V
    .locals 2

    .prologue
    .line 7
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzebk;->i(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->a(IJ)V

    .line 8
    return-void
.end method

.method public abstract b(ILcom/google/android/gms/internal/ads/dbi;)V
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzebk;->i(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->a(J)V

    .line 16
    return-void
.end method

.method abstract b([BII)V
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->m(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(I)V

    .line 14
    return-void
.end method

.method public abstract c(II)V
.end method

.method public abstract c(IJ)V
.end method

.method public abstract c(J)V
.end method

.method public abstract d(I)V
.end method

.method public final d(II)V
    .locals 1

    .prologue
    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzebk;->m(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzebk;->c(II)V

    .line 6
    return-void
.end method

.method public abstract e(II)V
.end method
