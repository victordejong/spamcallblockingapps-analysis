.class public abstract Lio/opencensus/trace/m;
.super Lio/opencensus/trace/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/m$a;,
        Lio/opencensus/trace/m$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lio/opencensus/trace/h;-><init>()V

    return-void
.end method

.method public static a(Lio/opencensus/trace/m$b;J)Lio/opencensus/trace/m$a;
    .locals 2

    .line 67
    new-instance v0, Lio/opencensus/trace/e$a;

    invoke-direct {v0}, Lio/opencensus/trace/e$a;-><init>()V

    const-string v1, "type"

    .line 68
    invoke-static {p0, v1}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/m$b;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/e$a;->a(Lio/opencensus/trace/m$b;)Lio/opencensus/trace/m$a;

    move-result-object p0

    .line 69
    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/m$a;->a(J)Lio/opencensus/trace/m$a;

    move-result-object p0

    const-wide/16 p1, 0x0

    .line 72
    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/m$a;->b(J)Lio/opencensus/trace/m$a;

    move-result-object p0

    .line 73
    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/m$a;->c(J)Lio/opencensus/trace/m$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()Lio/opencensus/trace/m$b;
.end method

.method public abstract b()J
.end method

.method public abstract c()J
.end method

.method public abstract d()J
.end method
