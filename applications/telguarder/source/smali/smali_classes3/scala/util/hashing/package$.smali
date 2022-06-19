.class public final Lscala/util/hashing/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/util/hashing/package$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/hashing/package$;

    invoke-direct {v0}, Lscala/util/hashing/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    return-void
.end method


# virtual methods
.method public byteswap32(I)I
    .locals 1

    const v0, -0x61c88a33    # -9.7123E-21f

    mul-int p1, p1, v0

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    mul-int p1, p1, v0

    return p1
.end method

.method public byteswap64(J)J
    .locals 2

    const-wide v0, -0x61c88a3261c88a33L

    mul-long p1, p1, v0

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    mul-long p1, p1, v0

    return-wide p1
.end method
