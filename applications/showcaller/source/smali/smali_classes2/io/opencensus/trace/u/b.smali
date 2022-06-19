.class public abstract Lio/opencensus/trace/u/b;
.super Ljava/lang/Object;
.source "ExportComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/u/b$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/opencensus/trace/u/b;
    .locals 2

    .line 1
    new-instance v0, Lio/opencensus/trace/u/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/u/b$b;-><init>(Lio/opencensus/trace/u/b$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lio/opencensus/trace/u/c;
.end method
