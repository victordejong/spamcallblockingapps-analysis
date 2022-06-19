.class final Lio/opencensus/trace/o$b;
.super Lio/opencensus/trace/o;
.source "TraceComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/opencensus/trace/u/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/o;-><init>()V

    .line 3
    invoke-static {}, Lio/opencensus/trace/u/b;->b()Lio/opencensus/trace/u/b;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/trace/o$b;->a:Lio/opencensus/trace/u/b;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/o$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/opencensus/trace/u/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/o$b;->a:Lio/opencensus/trace/u/b;

    return-object v0
.end method

.method public b()Lio/opencensus/trace/r;
    .locals 1

    .line 1
    invoke-static {}, Lio/opencensus/trace/r;->a()Lio/opencensus/trace/r;

    move-result-object v0

    return-object v0
.end method
