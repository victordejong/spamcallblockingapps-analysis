.class public abstract Lio/opencensus/trace/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/w$a;
    }
.end annotation


# static fields
.field private static final a:Lio/opencensus/trace/w$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lio/opencensus/trace/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/w$a;-><init>(Lio/opencensus/trace/w$1;)V

    sput-object v0, Lio/opencensus/trace/w;->a:Lio/opencensus/trace/w$a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lio/opencensus/trace/o;)Lio/opencensus/common/b;
    .locals 3

    const-string v0, "span"

    .line 154
    invoke-static {p0, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/o;

    .line 1052
    new-instance v0, Lio/opencensus/trace/k$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/opencensus/trace/k$a;-><init>(Lio/opencensus/trace/o;ZLio/opencensus/trace/k$1;)V

    return-object v0
.end method

.method static a()Lio/opencensus/trace/w;
    .locals 1

    .line 81
    sget-object v0, Lio/opencensus/trace/w;->a:Lio/opencensus/trace/w$a;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lio/opencensus/trace/p;
.end method
