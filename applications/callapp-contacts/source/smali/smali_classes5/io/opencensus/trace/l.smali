.class public abstract Lio/opencensus/trace/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/l$a;
    }
.end annotation


# static fields
.field public static final a:Lio/opencensus/trace/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lio/opencensus/trace/l;->c()Lio/opencensus/trace/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/l$a;->a()Lio/opencensus/trace/l;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/l;->a:Lio/opencensus/trace/l;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lio/opencensus/trace/l$a;
    .locals 2

    .line 48
    new-instance v0, Lio/opencensus/trace/d$a;

    invoke-direct {v0}, Lio/opencensus/trace/d$a;-><init>()V

    .line 1071
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lio/opencensus/trace/d$a;->a:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Lio/opencensus/trace/s;
.end method
