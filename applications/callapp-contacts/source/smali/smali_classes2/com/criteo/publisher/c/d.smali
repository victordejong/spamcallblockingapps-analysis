.class public Lcom/criteo/publisher/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/h;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/h;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/criteo/publisher/c/d;->a:Lcom/criteo/publisher/h;

    return-void
.end method

.method private static a(JI)B
    .locals 4

    add-int/lit8 p2, p2, 0x1

    rsub-int/lit8 p2, p2, 0x40

    shl-int/lit8 p2, p2, 0x2

    const-wide/16 v0, 0xf

    shl-long v2, v0, p2

    and-long/2addr p0, v2

    shr-long/2addr p0, p2

    and-long/2addr p0, v0

    long-to-int p1, p0

    int-to-byte p0, p1

    return p0
.end method

.method private static a(JIB)J
    .locals 2

    add-int/lit8 p2, p2, 0x1

    rsub-int/lit8 p2, p2, 0x40

    shl-int/lit8 p2, p2, 0x2

    const-wide/16 v0, 0xf

    shl-long/2addr v0, p2

    not-long v0, v0

    and-long/2addr p0, v0

    int-to-long v0, p3

    shl-long p2, v0, p2

    or-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 10

    .line 60
    iget-object v0, p0, Lcom/criteo/publisher/c/d;->a:Lcom/criteo/publisher/h;

    invoke-interface {v0}, Lcom/criteo/publisher/h;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 1067
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 1068
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    const/4 v2, 0x0

    .line 1072
    invoke-static {v3, v4, v2}, Lcom/criteo/publisher/c/d;->a(JI)B

    move-result v7

    const/16 v8, 0xc

    invoke-static {v3, v4, v8, v7}, Lcom/criteo/publisher/c/d;->a(JIB)J

    move-result-wide v3

    const/4 v7, 0x1

    .line 1073
    invoke-static {v3, v4, v7}, Lcom/criteo/publisher/c/d;->a(JI)B

    move-result v8

    invoke-static {v5, v6, v2, v8}, Lcom/criteo/publisher/c/d;->a(JIB)J

    move-result-wide v5

    const/16 v8, 0x20

    shl-long/2addr v0, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v3, v8

    or-long/2addr v0, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1078
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v7

    const-string v0, "%016x%016x"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
