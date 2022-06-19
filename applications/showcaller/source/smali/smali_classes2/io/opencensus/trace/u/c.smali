.class public abstract Lio/opencensus/trace/u/c;
.super Ljava/lang/Object;
.source "SampledSpanStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/u/c$b;,
        Lio/opencensus/trace/u/c$c;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lio/opencensus/trace/u/c;
    .locals 2

    .line 1
    new-instance v0, Lio/opencensus/trace/u/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/u/c$b;-><init>(Lio/opencensus/trace/u/c$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
