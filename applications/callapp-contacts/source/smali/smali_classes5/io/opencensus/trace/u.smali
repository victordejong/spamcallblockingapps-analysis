.class public final Lio/opencensus/trace/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/opencensus/trace/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/opencensus/trace/u;


# instance fields
.field private final b:J

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lio/opencensus/trace/u;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lio/opencensus/trace/u;-><init>(JJ)V

    sput-object v0, Lio/opencensus/trace/u;->a:Lio/opencensus/trace/u;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lio/opencensus/trace/u;->b:J

    .line 56
    iput-wide p3, p0, Lio/opencensus/trace/u;->c:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 1190
    iget-wide v1, p0, Lio/opencensus/trace/u;->b:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lio/opencensus/trace/i;->a(J[CI)V

    .line 1191
    iget-wide v1, p0, Lio/opencensus/trace/u;->c:J

    const/16 v3, 0x10

    invoke-static {v1, v2, v0, v3}, Lio/opencensus/trace/i;->a(J[CI)V

    .line 214
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 7

    .line 31
    check-cast p1, Lio/opencensus/trace/u;

    .line 1260
    iget-wide v0, p0, Lio/opencensus/trace/u;->b:J

    iget-wide v2, p1, Lio/opencensus/trace/u;->b:J

    const/4 v4, -0x1

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    .line 1261
    iget-wide v0, p0, Lio/opencensus/trace/u;->c:J

    iget-wide v2, p1, Lio/opencensus/trace/u;->c:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    return v4

    :cond_1
    return v5

    :cond_2
    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    return v4

    :cond_3
    return v5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 236
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/u;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 240
    :cond_1
    check-cast p1, Lio/opencensus/trace/u;

    .line 241
    iget-wide v3, p0, Lio/opencensus/trace/u;->b:J

    iget-wide v5, p1, Lio/opencensus/trace/u;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lio/opencensus/trace/u;->c:J

    iget-wide v5, p1, Lio/opencensus/trace/u;->c:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .line 248
    iget-wide v0, p0, Lio/opencensus/trace/u;->b:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    .line 249
    iget-wide v3, p0, Lio/opencensus/trace/u;->c:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TraceId{traceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/opencensus/trace/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
