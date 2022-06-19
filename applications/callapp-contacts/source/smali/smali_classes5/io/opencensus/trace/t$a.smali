.class final Lio/opencensus/trace/t$a;
.super Lio/opencensus/trace/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/opencensus/trace/a/b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Lio/opencensus/trace/t;-><init>()V

    .line 1038
    new-instance v0, Lio/opencensus/trace/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/a/b$a;-><init>(Lio/opencensus/trace/a/b$1;)V

    .line 89
    iput-object v0, p0, Lio/opencensus/trace/t$a;->a:Lio/opencensus/trace/a/b;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/t$1;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lio/opencensus/trace/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/opencensus/trace/w;
    .locals 1

    .line 93
    invoke-static {}, Lio/opencensus/trace/w;->a()Lio/opencensus/trace/w;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lio/opencensus/trace/a/b;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/opencensus/trace/t$a;->a:Lio/opencensus/trace/a/b;

    return-object v0
.end method
