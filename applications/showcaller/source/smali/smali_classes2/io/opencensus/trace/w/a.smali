.class public final Lio/opencensus/trace/w/a;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field private static final a:Ld/a/b$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/b$d<",
            "Lio/opencensus/trace/Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "opencensus-trace-span-key"

    .line 1
    invoke-static {v0}, Ld/a/b;->y(Ljava/lang/String;)Ld/a/b$d;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/w/a;->a:Ld/a/b$d;

    return-void
.end method

.method public static a(Ld/a/b;)Lio/opencensus/trace/Span;
    .locals 2

    .line 1
    sget-object v0, Lio/opencensus/trace/w/a;->a:Ld/a/b$d;

    const-string v1, "context"

    invoke-static {p0, v1}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld/a/b;

    invoke-virtual {v0, p0}, Ld/a/b$d;->a(Ld/a/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/Span;

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lio/opencensus/trace/i;->e:Lio/opencensus/trace/i;

    :cond_0
    return-object p0
.end method

.method public static b(Ld/a/b;Lio/opencensus/trace/Span;)Ld/a/b;
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld/a/b;

    sget-object v0, Lio/opencensus/trace/w/a;->a:Ld/a/b$d;

    invoke-virtual {p0, v0, p1}, Ld/a/b;->I(Ld/a/b$d;Ljava/lang/Object;)Ld/a/b;

    move-result-object p0

    return-object p0
.end method
