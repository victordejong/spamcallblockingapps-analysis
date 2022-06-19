.class public abstract Lio/opencensus/trace/r;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/r$b;
    }
.end annotation


# static fields
.field private static final a:Lio/opencensus/trace/r$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/opencensus/trace/r$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/r$b;-><init>(Lio/opencensus/trace/r$a;)V

    sput-object v0, Lio/opencensus/trace/r;->a:Lio/opencensus/trace/r$b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lio/opencensus/trace/r;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/trace/r;->a:Lio/opencensus/trace/r$b;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lio/opencensus/trace/l;
    .locals 1

    .line 1
    invoke-static {}, Lio/opencensus/trace/j;->a()Lio/opencensus/trace/Span;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/opencensus/trace/r;->c(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/l;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/l;
.end method

.method public final d(Lio/opencensus/trace/Span;)Lio/opencensus/common/a;
    .locals 1

    const-string v0, "span"

    .line 1
    invoke-static {p1, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/trace/Span;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/opencensus/trace/j;->b(Lio/opencensus/trace/Span;Z)Lio/opencensus/common/a;

    move-result-object p1

    return-object p1
.end method
