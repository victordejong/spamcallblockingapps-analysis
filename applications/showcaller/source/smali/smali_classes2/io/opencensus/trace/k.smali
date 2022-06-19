.class public abstract Lio/opencensus/trace/k;
.super Ljava/lang/Object;
.source "EndSpanOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/k$a;
    }
.end annotation


# static fields
.field public static final a:Lio/opencensus/trace/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/opencensus/trace/k;->a()Lio/opencensus/trace/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/k$a;->a()Lio/opencensus/trace/k;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/k;->a:Lio/opencensus/trace/k;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/opencensus/trace/k$a;
    .locals 2

    .line 1
    new-instance v0, Lio/opencensus/trace/c$b;

    invoke-direct {v0}, Lio/opencensus/trace/c$b;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/opencensus/trace/c$b;->c(Z)Lio/opencensus/trace/k$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Z
.end method

.method public abstract c()Lio/opencensus/trace/Status;
.end method
