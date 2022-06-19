.class final Lio/opencensus/trace/d$a;
.super Lio/opencensus/trace/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Boolean;

.field private b:Lio/opencensus/trace/s;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lio/opencensus/trace/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/opencensus/trace/s;)Lio/opencensus/trace/l$a;
    .locals 0

    .line 76
    iput-object p1, p0, Lio/opencensus/trace/d$a;->b:Lio/opencensus/trace/s;

    return-object p0
.end method

.method public final a()Lio/opencensus/trace/l;
    .locals 4

    .line 82
    iget-object v0, p0, Lio/opencensus/trace/d$a;->a:Ljava/lang/Boolean;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sampleToLocalSpanStore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Lio/opencensus/trace/d;

    iget-object v1, p0, Lio/opencensus/trace/d$a;->a:Ljava/lang/Boolean;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lio/opencensus/trace/d$a;->b:Lio/opencensus/trace/s;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/opencensus/trace/d;-><init>(ZLio/opencensus/trace/s;Lio/opencensus/trace/d$1;)V

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
