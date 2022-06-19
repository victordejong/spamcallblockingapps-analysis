.class public final Lio/opencensus/trace/m;
.super Ljava/lang/Object;
.source "SpanContext.java"


# static fields
.field private static final a:Lio/opencensus/trace/s;

.field public static final b:Lio/opencensus/trace/m;


# instance fields
.field private final c:Lio/opencensus/trace/p;

.field private final d:Lio/opencensus/trace/n;

.field private final e:Lio/opencensus/trace/q;

.field private final f:Lio/opencensus/trace/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lio/opencensus/trace/s;->b()Lio/opencensus/trace/s$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/s$b;->b()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/m;->a:Lio/opencensus/trace/s;

    .line 2
    new-instance v1, Lio/opencensus/trace/m;

    sget-object v2, Lio/opencensus/trace/p;->d:Lio/opencensus/trace/p;

    sget-object v3, Lio/opencensus/trace/n;->d:Lio/opencensus/trace/n;

    sget-object v4, Lio/opencensus/trace/q;->a:Lio/opencensus/trace/q;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/opencensus/trace/m;-><init>(Lio/opencensus/trace/p;Lio/opencensus/trace/n;Lio/opencensus/trace/q;Lio/opencensus/trace/s;)V

    sput-object v1, Lio/opencensus/trace/m;->b:Lio/opencensus/trace/m;

    return-void
.end method

.method private constructor <init>(Lio/opencensus/trace/p;Lio/opencensus/trace/n;Lio/opencensus/trace/q;Lio/opencensus/trace/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/opencensus/trace/m;->c:Lio/opencensus/trace/p;

    .line 3
    iput-object p2, p0, Lio/opencensus/trace/m;->d:Lio/opencensus/trace/n;

    .line 4
    iput-object p3, p0, Lio/opencensus/trace/m;->e:Lio/opencensus/trace/q;

    .line 5
    iput-object p4, p0, Lio/opencensus/trace/m;->f:Lio/opencensus/trace/s;

    return-void
.end method


# virtual methods
.method public a()Lio/opencensus/trace/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/m;->d:Lio/opencensus/trace/n;

    return-object v0
.end method

.method public b()Lio/opencensus/trace/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/m;->c:Lio/opencensus/trace/p;

    return-object v0
.end method

.method public c()Lio/opencensus/trace/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/m;->e:Lio/opencensus/trace/q;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lio/opencensus/trace/m;

    .line 3
    iget-object v1, p0, Lio/opencensus/trace/m;->c:Lio/opencensus/trace/p;

    iget-object v3, p1, Lio/opencensus/trace/m;->c:Lio/opencensus/trace/p;

    invoke-virtual {v1, v3}, Lio/opencensus/trace/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/m;->d:Lio/opencensus/trace/n;

    iget-object v3, p1, Lio/opencensus/trace/m;->d:Lio/opencensus/trace/n;

    .line 4
    invoke-virtual {v1, v3}, Lio/opencensus/trace/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/m;->e:Lio/opencensus/trace/q;

    iget-object p1, p1, Lio/opencensus/trace/m;->e:Lio/opencensus/trace/q;

    .line 5
    invoke-virtual {v1, p1}, Lio/opencensus/trace/q;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lio/opencensus/trace/m;->c:Lio/opencensus/trace/p;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/opencensus/trace/m;->d:Lio/opencensus/trace/n;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/opencensus/trace/m;->e:Lio/opencensus/trace/q;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpanContext{traceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/m;->c:Lio/opencensus/trace/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/m;->d:Lio/opencensus/trace/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", traceOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/m;->e:Lio/opencensus/trace/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
