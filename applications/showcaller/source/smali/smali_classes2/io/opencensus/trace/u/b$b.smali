.class final Lio/opencensus/trace/u/b$b;
.super Lio/opencensus/trace/u/b;
.source "ExportComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/opencensus/trace/u/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/u/b;-><init>()V

    .line 2
    invoke-static {}, Lio/opencensus/trace/u/c;->a()Lio/opencensus/trace/u/c;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/trace/u/b$b;->a:Lio/opencensus/trace/u/c;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/u/b$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/opencensus/trace/u/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/opencensus/trace/u/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/u/b$b;->a:Lio/opencensus/trace/u/c;

    return-object v0
.end method
