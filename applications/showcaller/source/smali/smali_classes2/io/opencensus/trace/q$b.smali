.class public final Lio/opencensus/trace/q$b;
.super Ljava/lang/Object;
.source "TraceOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:B


# direct methods
.method private constructor <init>(B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Lio/opencensus/trace/q$b;->a:B

    return-void
.end method

.method synthetic constructor <init>(BLio/opencensus/trace/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/opencensus/trace/q$b;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a()Lio/opencensus/trace/q;
    .locals 1

    .line 1
    iget-byte v0, p0, Lio/opencensus/trace/q$b;->a:B

    invoke-static {v0}, Lio/opencensus/trace/q;->b(B)Lio/opencensus/trace/q;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lio/opencensus/trace/q$b;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-byte p1, p0, Lio/opencensus/trace/q$b;->a:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lio/opencensus/trace/q$b;->a:B

    goto :goto_0

    .line 2
    :cond_0
    iget-byte p1, p0, Lio/opencensus/trace/q$b;->a:B

    and-int/lit8 p1, p1, -0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lio/opencensus/trace/q$b;->a:B

    :goto_0
    return-object p0
.end method
