.class final Lio/opencensus/trace/j;
.super Ljava/lang/Object;
.source "CurrentSpanUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/j$b;
    }
.end annotation


# direct methods
.method static a()Lio/opencensus/trace/Span;
    .locals 1

    .line 1
    invoke-static {}, Ld/a/b;->p()Ld/a/b;

    move-result-object v0

    invoke-static {v0}, Lio/opencensus/trace/w/a;->a(Ld/a/b;)Lio/opencensus/trace/Span;

    move-result-object v0

    return-object v0
.end method

.method static b(Lio/opencensus/trace/Span;Z)Lio/opencensus/common/a;
    .locals 2

    .line 1
    new-instance v0, Lio/opencensus/trace/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/opencensus/trace/j$b;-><init>(Lio/opencensus/trace/Span;ZLio/opencensus/trace/j$a;)V

    return-object v0
.end method
