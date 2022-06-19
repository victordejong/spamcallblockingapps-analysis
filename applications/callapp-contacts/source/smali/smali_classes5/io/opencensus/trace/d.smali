.class final Lio/opencensus/trace/d;
.super Lio/opencensus/trace/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/d$a;
    }
.end annotation


# instance fields
.field private final b:Z

.field private final c:Lio/opencensus/trace/s;


# direct methods
.method private constructor <init>(ZLio/opencensus/trace/s;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/opencensus/trace/l;-><init>()V

    .line 17
    iput-boolean p1, p0, Lio/opencensus/trace/d;->b:Z

    .line 18
    iput-object p2, p0, Lio/opencensus/trace/d;->c:Lio/opencensus/trace/s;

    return-void
.end method

.method synthetic constructor <init>(ZLio/opencensus/trace/s;Lio/opencensus/trace/d$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lio/opencensus/trace/d;-><init>(ZLio/opencensus/trace/s;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lio/opencensus/trace/d;->b:Z

    return v0
.end method

.method public final b()Lio/opencensus/trace/s;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/opencensus/trace/d;->c:Lio/opencensus/trace/s;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 47
    check-cast p1, Lio/opencensus/trace/l;

    .line 48
    iget-boolean v1, p0, Lio/opencensus/trace/d;->b:Z

    invoke-virtual {p1}, Lio/opencensus/trace/l;->a()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/d;->c:Lio/opencensus/trace/s;

    if-nez v1, :cond_1

    .line 49
    invoke-virtual {p1}, Lio/opencensus/trace/l;->b()Lio/opencensus/trace/s;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/opencensus/trace/l;->b()Lio/opencensus/trace/s;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/opencensus/trace/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 58
    iget-boolean v0, p0, Lio/opencensus/trace/d;->b:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 60
    iget-object v1, p0, Lio/opencensus/trace/d;->c:Lio/opencensus/trace/s;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lio/opencensus/trace/s;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EndSpanOptions{sampleToLocalSpanStore="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/opencensus/trace/d;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/d;->c:Lio/opencensus/trace/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
