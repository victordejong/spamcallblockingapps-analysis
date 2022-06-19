.class public abstract Lio/opencensus/trace/NetworkEvent;
.super Lio/opencensus/trace/g;
.source "NetworkEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/NetworkEvent$a;,
        Lio/opencensus/trace/NetworkEvent$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/g;-><init>()V

    return-void
.end method

.method public static a(Lio/opencensus/trace/NetworkEvent$Type;J)Lio/opencensus/trace/NetworkEvent$a;
    .locals 2

    .line 1
    new-instance v0, Lio/opencensus/trace/e$b;

    invoke-direct {v0}, Lio/opencensus/trace/e$b;-><init>()V

    const-string v1, "type"

    .line 2
    invoke-static {p0, v1}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/NetworkEvent$Type;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/e$b;->e(Lio/opencensus/trace/NetworkEvent$Type;)Lio/opencensus/trace/NetworkEvent$a;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/NetworkEvent$a;->c(J)Lio/opencensus/trace/NetworkEvent$a;

    move-result-object p0

    const-wide/16 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/NetworkEvent$a;->d(J)Lio/opencensus/trace/NetworkEvent$a;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/NetworkEvent$a;->b(J)Lio/opencensus/trace/NetworkEvent$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Lio/opencensus/common/b;
.end method

.method public abstract d()J
.end method

.method public abstract e()Lio/opencensus/trace/NetworkEvent$Type;
.end method

.method public abstract f()J
.end method
