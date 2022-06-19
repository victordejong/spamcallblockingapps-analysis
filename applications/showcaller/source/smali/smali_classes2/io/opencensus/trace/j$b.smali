.class final Lio/opencensus/trace/j$b;
.super Ljava/lang/Object;
.source "CurrentSpanUtils.java"

# interfaces
.implements Lio/opencensus/common/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final d:Ld/a/b;

.field private final e:Lio/opencensus/trace/Span;

.field private final f:Z


# direct methods
.method private constructor <init>(Lio/opencensus/trace/Span;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/opencensus/trace/j$b;->e:Lio/opencensus/trace/Span;

    .line 4
    iput-boolean p2, p0, Lio/opencensus/trace/j$b;->f:Z

    .line 5
    invoke-static {}, Ld/a/b;->p()Ld/a/b;

    move-result-object p2

    invoke-static {p2, p1}, Lio/opencensus/trace/w/a;->b(Ld/a/b;Lio/opencensus/trace/Span;)Ld/a/b;

    move-result-object p1

    invoke-virtual {p1}, Ld/a/b;->a()Ld/a/b;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/j$b;->d:Ld/a/b;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/Span;ZLio/opencensus/trace/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/trace/j$b;-><init>(Lio/opencensus/trace/Span;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    invoke-static {}, Ld/a/b;->p()Ld/a/b;

    move-result-object v0

    iget-object v1, p0, Lio/opencensus/trace/j$b;->d:Ld/a/b;

    invoke-virtual {v0, v1}, Ld/a/b;->q(Ld/a/b;)V

    .line 2
    iget-boolean v0, p0, Lio/opencensus/trace/j$b;->f:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/opencensus/trace/j$b;->e:Lio/opencensus/trace/Span;

    invoke-virtual {v0}, Lio/opencensus/trace/Span;->f()V

    :cond_0
    return-void
.end method
