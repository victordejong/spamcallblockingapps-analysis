.class public abstract Lio/opencensus/trace/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/t$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lio/opencensus/trace/t;
    .locals 2

    .line 85
    new-instance v0, Lio/opencensus/trace/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/t$a;-><init>(Lio/opencensus/trace/t$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lio/opencensus/trace/w;
.end method

.method public abstract b()Lio/opencensus/trace/a/b;
.end method
