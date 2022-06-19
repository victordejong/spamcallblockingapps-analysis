.class final Lio/opencensus/trace/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/common/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/a/a;

.field private final b:Lio/opencensus/trace/o;

.field private final c:Z


# direct methods
.method private constructor <init>(Lio/opencensus/trace/o;Z)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lio/opencensus/trace/k$a;->b:Lio/opencensus/trace/o;

    .line 92
    iput-boolean p2, p0, Lio/opencensus/trace/k$a;->c:Z

    .line 93
    invoke-static {}, Lio/a/a;->a()Lio/a/a;

    move-result-object p2

    invoke-static {p2, p1}, Lio/opencensus/trace/b/a;->a(Lio/a/a;Lio/opencensus/trace/o;)Lio/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lio/a/a;->c()Lio/a/a;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/k$a;->a:Lio/a/a;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/o;ZLio/opencensus/trace/k$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lio/opencensus/trace/k$a;-><init>(Lio/opencensus/trace/o;Z)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 98
    invoke-static {}, Lio/a/a;->a()Lio/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/opencensus/trace/k$a;->a:Lio/a/a;

    invoke-virtual {v0, v1}, Lio/a/a;->a(Lio/a/a;)V

    .line 99
    iget-boolean v0, p0, Lio/opencensus/trace/k$a;->c:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lio/opencensus/trace/k$a;->b:Lio/opencensus/trace/o;

    .line 1244
    sget-object v1, Lio/opencensus/trace/l;->a:Lio/opencensus/trace/l;

    invoke-virtual {v0, v1}, Lio/opencensus/trace/o;->a(Lio/opencensus/trace/l;)V

    :cond_0
    return-void
.end method
