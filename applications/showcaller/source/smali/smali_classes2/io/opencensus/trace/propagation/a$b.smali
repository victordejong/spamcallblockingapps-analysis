.class final Lio/opencensus/trace/propagation/a$b;
.super Lio/opencensus/trace/propagation/a;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/propagation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/propagation/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/propagation/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/propagation/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/opencensus/trace/m;Ljava/lang/Object;Lio/opencensus/trace/propagation/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/trace/m;",
            "TC;",
            "Lio/opencensus/trace/propagation/a$c<",
            "TC;>;)V"
        }
    .end annotation

    const-string v0, "spanContext"

    .line 1
    invoke-static {p1, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "carrier"

    .line 2
    invoke-static {p2, p1}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "setter"

    .line 3
    invoke-static {p3, p1}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
