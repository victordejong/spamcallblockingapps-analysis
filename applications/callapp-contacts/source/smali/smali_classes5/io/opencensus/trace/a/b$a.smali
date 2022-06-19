.class public final Lio/opencensus/trace/a/b$a;
.super Lio/opencensus/trace/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/opencensus/trace/a/c;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lio/opencensus/trace/a/b;-><init>()V

    .line 1061
    new-instance v0, Lio/opencensus/trace/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/a/c$a;-><init>(Lio/opencensus/trace/a/c$1;)V

    .line 78
    iput-object v0, p0, Lio/opencensus/trace/a/b$a;->a:Lio/opencensus/trace/a/c;

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/a/b$1;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lio/opencensus/trace/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/opencensus/trace/a/c;
    .locals 1

    .line 92
    iget-object v0, p0, Lio/opencensus/trace/a/b$a;->a:Lio/opencensus/trace/a/c;

    return-object v0
.end method
