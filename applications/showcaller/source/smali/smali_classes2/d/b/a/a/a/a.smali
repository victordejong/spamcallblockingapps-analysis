.class final Ld/b/a/a/a/a;
.super Lio/opencensus/trace/propagation/a;
.source "CloudTraceFormat.java"


# static fields
.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Lio/opencensus/trace/q;

.field static final d:Lio/opencensus/trace/q;

.field static final e:I

.field private static final f:Lio/opencensus/trace/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "X-Cloud-Trace-Context"

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld/b/a/a/a/a;->b:Ljava/util/List;

    .line 2
    invoke-static {}, Lio/opencensus/trace/q;->a()Lio/opencensus/trace/q$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/opencensus/trace/q$b;->b(Z)Lio/opencensus/trace/q$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/q$b;->a()Lio/opencensus/trace/q;

    move-result-object v0

    sput-object v0, Ld/b/a/a/a/a;->c:Lio/opencensus/trace/q;

    .line 3
    sget-object v0, Lio/opencensus/trace/q;->a:Lio/opencensus/trace/q;

    sput-object v0, Ld/b/a/a/a/a;->d:Lio/opencensus/trace/q;

    const/4 v0, 0x3

    .line 4
    sput v0, Ld/b/a/a/a/a;->e:I

    .line 5
    invoke-static {}, Lio/opencensus/trace/s;->b()Lio/opencensus/trace/s$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/s$b;->b()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Ld/b/a/a/a/a;->f:Lio/opencensus/trace/s;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/propagation/a;-><init>()V

    return-void
.end method

.method private static b(Lio/opencensus/trace/n;)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/opencensus/trace/n;->e()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Lio/opencensus/trace/m;Ljava/lang/Object;Lio/opencensus/trace/propagation/a$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/trace/m;",
            "TC;",
            "Lio/opencensus/trace/propagation/a$c<",
            "TC;>;)V"
        }
    .end annotation

    const-string v0, "spanContext"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/j;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "setter"

    .line 2
    invoke-static {p3, v0}, Lcom/google/common/base/j;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "carrier"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/j;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p1}, Lio/opencensus/trace/m;->b()Lio/opencensus/trace/p;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/trace/p;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lio/opencensus/trace/m;->a()Lio/opencensus/trace/n;

    move-result-object v1

    invoke-static {v1}, Ld/b/a/a/a/a;->b(Lio/opencensus/trace/n;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lc/c/c/b/d;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";o="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lio/opencensus/trace/m;->c()Lio/opencensus/trace/q;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/trace/q;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Cloud-Trace-Context"

    invoke-virtual {p3, p2, v0, p1}, Lio/opencensus/trace/propagation/a$c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
