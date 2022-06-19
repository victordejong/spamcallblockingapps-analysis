.class public final Lio/opencensus/a/a/a/a;
.super Lio/opencensus/trace/propagation/a;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lio/opencensus/trace/v;

.field static final c:Lio/opencensus/trace/v;

.field static final d:I

.field private static final e:Lio/opencensus/trace/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "X-Cloud-Trace-Context"

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/opencensus/a/a/a/a;->a:Ljava/util/List;

    .line 73
    invoke-static {}, Lio/opencensus/trace/v;->a()Lio/opencensus/trace/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/v$a;->a()Lio/opencensus/trace/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/v$a;->b()Lio/opencensus/trace/v;

    move-result-object v0

    sput-object v0, Lio/opencensus/a/a/a/a;->b:Lio/opencensus/trace/v;

    .line 74
    sget-object v0, Lio/opencensus/trace/v;->a:Lio/opencensus/trace/v;

    sput-object v0, Lio/opencensus/a/a/a/a;->c:Lio/opencensus/trace/v;

    const/4 v0, 0x3

    .line 76
    sput v0, Lio/opencensus/a/a/a/a;->d:I

    .line 81
    invoke-static {}, Lio/opencensus/trace/x;->b()Lio/opencensus/trace/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/x$a;->a()Lio/opencensus/trace/x;

    move-result-object v0

    sput-object v0, Lio/opencensus/a/a/a/a;->e:Lio/opencensus/trace/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lio/opencensus/trace/propagation/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/opencensus/trace/q;Ljava/lang/Object;Lio/opencensus/trace/propagation/a$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/trace/q;",
            "TC;",
            "Lio/opencensus/trace/propagation/a$b<",
            "TC;>;)V"
        }
    .end annotation

    const-string v0, "spanContext"

    .line 91
    invoke-static {p1, v0}, Lcom/google/common/base/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "setter"

    .line 92
    invoke-static {p3, v0}, Lcom/google/common/base/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "carrier"

    .line 93
    invoke-static {p2, v0}, Lcom/google/common/base/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {p1}, Lio/opencensus/trace/q;->a()Lio/opencensus/trace/u;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/trace/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Lio/opencensus/trace/q;->b()Lio/opencensus/trace/r;

    move-result-object v1

    const/16 v2, 0x8

    .line 1145
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1146
    invoke-virtual {v1}, Lio/opencensus/trace/r;->a()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 1147
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    .line 98
    invoke-static {v1, v2}, Lcom/google/common/b/d;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";o="

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Lio/opencensus/trace/q;->c()Lio/opencensus/trace/v;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/trace/v;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Cloud-Trace-Context"

    invoke-virtual {p3, p2, v0, p1}, Lio/opencensus/trace/propagation/a$b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
