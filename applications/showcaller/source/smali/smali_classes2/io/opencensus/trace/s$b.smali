.class public final Lio/opencensus/trace/s$b;
.super Ljava/lang/Object;
.source "Tracestate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static final a:Lio/opencensus/trace/s;


# instance fields
.field private final b:Lio/opencensus/trace/s;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/opencensus/trace/s;->a(Ljava/util/List;)Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s$b;->a:Lio/opencensus/trace/s;

    return-void
.end method

.method private constructor <init>(Lio/opencensus/trace/s;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "parent"

    .line 3
    invoke-static {p1, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lio/opencensus/trace/s$b;->b:Lio/opencensus/trace/s;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lio/opencensus/trace/s$b;->c:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/s;Lio/opencensus/trace/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/opencensus/trace/s$b;-><init>(Lio/opencensus/trace/s;)V

    return-void
.end method

.method static synthetic a()Lio/opencensus/trace/s;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/trace/s$b;->a:Lio/opencensus/trace/s;

    return-object v0
.end method


# virtual methods
.method public b()Lio/opencensus/trace/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/s$b;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/trace/s$b;->b:Lio/opencensus/trace/s;

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lio/opencensus/trace/s;->a(Ljava/util/List;)Lio/opencensus/trace/s;

    move-result-object v0

    return-object v0
.end method
