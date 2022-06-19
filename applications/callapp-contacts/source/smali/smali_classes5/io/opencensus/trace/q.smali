.class public final Lio/opencensus/trace/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lio/opencensus/trace/q;

.field private static final c:Lio/opencensus/trace/x;


# instance fields
.field final a:Lio/opencensus/trace/v;

.field private final d:Lio/opencensus/trace/u;

.field private final e:Lio/opencensus/trace/r;

.field private final f:Lio/opencensus/trace/x;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    invoke-static {}, Lio/opencensus/trace/x;->b()Lio/opencensus/trace/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/x$a;->a()Lio/opencensus/trace/x;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/q;->c:Lio/opencensus/trace/x;

    .line 44
    new-instance v1, Lio/opencensus/trace/q;

    sget-object v2, Lio/opencensus/trace/u;->a:Lio/opencensus/trace/u;

    sget-object v3, Lio/opencensus/trace/r;->a:Lio/opencensus/trace/r;

    sget-object v4, Lio/opencensus/trace/v;->a:Lio/opencensus/trace/v;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/opencensus/trace/q;-><init>(Lio/opencensus/trace/u;Lio/opencensus/trace/r;Lio/opencensus/trace/v;Lio/opencensus/trace/x;)V

    sput-object v1, Lio/opencensus/trace/q;->b:Lio/opencensus/trace/q;

    return-void
.end method

.method private constructor <init>(Lio/opencensus/trace/u;Lio/opencensus/trace/r;Lio/opencensus/trace/v;Lio/opencensus/trace/x;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lio/opencensus/trace/q;->d:Lio/opencensus/trace/u;

    .line 161
    iput-object p2, p0, Lio/opencensus/trace/q;->e:Lio/opencensus/trace/r;

    .line 162
    iput-object p3, p0, Lio/opencensus/trace/q;->a:Lio/opencensus/trace/v;

    .line 163
    iput-object p4, p0, Lio/opencensus/trace/q;->f:Lio/opencensus/trace/x;

    return-void
.end method


# virtual methods
.method public final a()Lio/opencensus/trace/u;
    .locals 1

    .line 83
    iget-object v0, p0, Lio/opencensus/trace/q;->d:Lio/opencensus/trace/u;

    return-object v0
.end method

.method public final b()Lio/opencensus/trace/r;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/opencensus/trace/q;->e:Lio/opencensus/trace/r;

    return-object v0
.end method

.method public final c()Lio/opencensus/trace/v;
    .locals 1

    .line 103
    iget-object v0, p0, Lio/opencensus/trace/q;->a:Lio/opencensus/trace/v;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 132
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 136
    :cond_1
    check-cast p1, Lio/opencensus/trace/q;

    .line 137
    iget-object v1, p0, Lio/opencensus/trace/q;->d:Lio/opencensus/trace/u;

    iget-object v3, p1, Lio/opencensus/trace/q;->d:Lio/opencensus/trace/u;

    invoke-virtual {v1, v3}, Lio/opencensus/trace/u;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/q;->e:Lio/opencensus/trace/r;

    iget-object v3, p1, Lio/opencensus/trace/q;->e:Lio/opencensus/trace/r;

    .line 138
    invoke-virtual {v1, v3}, Lio/opencensus/trace/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/q;->a:Lio/opencensus/trace/v;

    iget-object p1, p1, Lio/opencensus/trace/q;->a:Lio/opencensus/trace/v;

    .line 139
    invoke-virtual {v1, p1}, Lio/opencensus/trace/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lio/opencensus/trace/q;->d:Lio/opencensus/trace/u;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/opencensus/trace/q;->e:Lio/opencensus/trace/r;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/opencensus/trace/q;->a:Lio/opencensus/trace/v;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpanContext{traceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/opencensus/trace/q;->d:Lio/opencensus/trace/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/q;->e:Lio/opencensus/trace/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", traceOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/q;->a:Lio/opencensus/trace/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
