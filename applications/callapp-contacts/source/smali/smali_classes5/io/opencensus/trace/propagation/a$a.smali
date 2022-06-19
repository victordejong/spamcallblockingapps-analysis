.class final Lio/opencensus/trace/propagation/a$a;
.super Lio/opencensus/trace/propagation/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/propagation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lio/opencensus/trace/propagation/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/propagation/a$1;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lio/opencensus/trace/propagation/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/opencensus/trace/q;Ljava/lang/Object;Lio/opencensus/trace/propagation/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/trace/q;",
            "TC;",
            "Lio/opencensus/trace/propagation/a$b<",
            "TC;>;)V"
        }
    .end annotation

    const-string v0, "spanContext"

    .line 192
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "carrier"

    .line 193
    invoke-static {p2, p1}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "setter"

    .line 194
    invoke-static {p3, p1}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
