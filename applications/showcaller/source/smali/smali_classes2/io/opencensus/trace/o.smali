.class public abstract Lio/opencensus/trace/o;
.super Ljava/lang/Object;
.source "TraceComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/o$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lio/opencensus/trace/o;
    .locals 2

    .line 1
    new-instance v0, Lio/opencensus/trace/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/o$b;-><init>(Lio/opencensus/trace/o$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lio/opencensus/trace/u/b;
.end method

.method public abstract b()Lio/opencensus/trace/r;
.end method
