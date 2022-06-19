.class public final Lcom/google/api/client/util/DateTime$SecondsAndNanos;
.super Ljava/lang/Object;
.source "DateTime.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecondsAndNanos"
.end annotation


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method private constructor <init>(JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->seconds:J

    .line 4
    iput p3, p0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->nanos:I

    return-void
.end method

.method synthetic constructor <init>(JILcom/google/api/client/util/DateTime$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/util/DateTime$SecondsAndNanos;-><init>(JI)V

    return-void
.end method

.method public static ofSecondsAndNanos(JI)Lcom/google/api/client/util/DateTime$SecondsAndNanos;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/client/util/DateTime$SecondsAndNanos;-><init>(JI)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/google/api/client/util/DateTime$SecondsAndNanos;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/api/client/util/DateTime$SecondsAndNanos;

    .line 3
    iget-wide v2, p0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->seconds:J

    iget-wide v4, p1, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->seconds:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->nanos:I

    iget p1, p1, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->nanos:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getNanos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->nanos:I

    return v0
.end method

.method public getSeconds()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->seconds:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->seconds:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->nanos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->seconds:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;->nanos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Seconds: %d, Nanos: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
