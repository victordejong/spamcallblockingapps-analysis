.class public final Lio/opencensus/trace/b;
.super Lio/opencensus/trace/a$a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lio/opencensus/trace/a$a;-><init>()V

    const-string v0, "Null longValue"

    .line 14
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lio/opencensus/trace/b;->a:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Long;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/opencensus/trace/b;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 36
    :cond_0
    instance-of v0, p1, Lio/opencensus/trace/a$a;

    if-eqz v0, :cond_1

    .line 37
    check-cast p1, Lio/opencensus/trace/a$a;

    .line 38
    iget-object v0, p0, Lio/opencensus/trace/b;->a:Ljava/lang/Long;

    invoke-virtual {p1}, Lio/opencensus/trace/a$a;->a()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 47
    iget-object v0, p0, Lio/opencensus/trace/b;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AttributeValueLong{longValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/opencensus/trace/b;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
