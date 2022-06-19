.class public abstract Lio/opencensus/trace/s;
.super Ljava/lang/Object;
.source "Tracestate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/s$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/util/List;)Lio/opencensus/trace/s;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/opencensus/trace/s;->c(Ljava/util/List;)Lio/opencensus/trace/s;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lio/opencensus/trace/s$b;
    .locals 3

    .line 1
    new-instance v0, Lio/opencensus/trace/s$b;

    invoke-static {}, Lio/opencensus/trace/s$b;->a()Lio/opencensus/trace/s;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/opencensus/trace/s$b;-><init>(Lio/opencensus/trace/s;Lio/opencensus/trace/s$a;)V

    return-object v0
.end method

.method private static c(Ljava/util/List;)Lio/opencensus/trace/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lio/opencensus/trace/s;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid size"

    invoke-static {v0, v1}, Ld/b/b/b;->c(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lio/opencensus/trace/f;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/opencensus/trace/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method
