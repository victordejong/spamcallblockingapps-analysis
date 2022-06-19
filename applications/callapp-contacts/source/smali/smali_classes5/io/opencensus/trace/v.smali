.class public final Lio/opencensus/trace/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/v$a;
    }
.end annotation


# static fields
.field public static final a:Lio/opencensus/trace/v;


# instance fields
.field private final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Lio/opencensus/trace/v;->a(B)Lio/opencensus/trace/v;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/v;->a:Lio/opencensus/trace/v;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-byte p1, p0, Lio/opencensus/trace/v;->b:B

    return-void
.end method

.method public static a()Lio/opencensus/trace/v$a;
    .locals 3

    .line 214
    new-instance v0, Lio/opencensus/trace/v$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/opencensus/trace/v$a;-><init>(BLio/opencensus/trace/v$1;)V

    return-object v0
.end method

.method public static a(B)Lio/opencensus/trace/v;
    .locals 1

    .line 116
    new-instance v0, Lio/opencensus/trace/v;

    invoke-direct {v0, p0}, Lio/opencensus/trace/v;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 236
    invoke-virtual {p0}, Lio/opencensus/trace/v;->c()Z

    move-result v0

    return v0
.end method

.method final c()Z
    .locals 2

    .line 322
    iget-byte v0, p0, Lio/opencensus/trace/v;->b:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 245
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/v;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 249
    :cond_1
    check-cast p1, Lio/opencensus/trace/v;

    .line 250
    iget-byte v1, p0, Lio/opencensus/trace/v;->b:B

    iget-byte p1, p1, Lio/opencensus/trace/v;->b:B

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 255
    iget-byte v1, p0, Lio/opencensus/trace/v;->b:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TraceOptions{sampled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p0}, Lio/opencensus/trace/v;->c()Z

    move-result v1

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
