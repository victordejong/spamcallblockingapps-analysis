.class public final Lio/opencensus/trace/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/a/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/a/a$d<",
            "Lio/opencensus/trace/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "opencensus-trace-span-key"

    .line 42
    invoke-static {v0}, Lio/a/a;->a(Ljava/lang/String;)Lio/a/a$d;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/b/a;->a:Lio/a/a$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lio/a/a;Lio/opencensus/trace/o;)Lio/a/a;
    .locals 5

    const-string v0, "context"

    .line 53
    invoke-static {p0, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/a/a;

    sget-object v0, Lio/opencensus/trace/b/a;->a:Lio/a/a$d;

    .line 1344
    iget-object v1, p0, Lio/a/a;->d:Lio/a/c;

    .line 2064
    iget-object v2, v1, Lio/a/c;->a:Lio/a/c$d;

    if-nez v2, :cond_0

    .line 2065
    new-instance v1, Lio/a/c;

    new-instance v2, Lio/a/c$c;

    invoke-direct {v2, v0, p1}, Lio/a/c$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lio/a/c;-><init>(Lio/a/c$d;)V

    goto :goto_0

    .line 2067
    :cond_0
    new-instance v2, Lio/a/c;

    iget-object v1, v1, Lio/a/c;->a:Lio/a/c$d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v0, p1, v3, v4}, Lio/a/c$d;->a(Ljava/lang/Object;Ljava/lang/Object;II)Lio/a/c$d;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/a/c;-><init>(Lio/a/c$d;)V

    move-object v1, v2

    .line 1345
    :goto_0
    new-instance p1, Lio/a/a;

    invoke-direct {p1, p0, v1}, Lio/a/a;-><init>(Lio/a/a;Lio/a/c;)V

    return-object p1
.end method

.method public static a(Lio/a/a;)Lio/opencensus/trace/o;
    .locals 3

    .line 65
    sget-object v0, Lio/opencensus/trace/b/a;->a:Lio/a/a$d;

    const-string v1, "context"

    invoke-static {p0, v1}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/a/a;

    .line 3700
    iget-object p0, p0, Lio/a/a;->d:Lio/a/c;

    .line 4054
    iget-object v1, p0, Lio/a/c;->a:Lio/a/c$d;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4057
    :cond_0
    iget-object p0, p0, Lio/a/c;->a:Lio/a/c$d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lio/a/c$d;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    .line 2933
    iget-object p0, v0, Lio/a/a$d;->a:Ljava/lang/Object;

    .line 65
    :cond_1
    check-cast p0, Lio/opencensus/trace/o;

    if-nez p0, :cond_2

    .line 66
    sget-object p0, Lio/opencensus/trace/j;->a:Lio/opencensus/trace/j;

    :cond_2
    return-object p0
.end method
