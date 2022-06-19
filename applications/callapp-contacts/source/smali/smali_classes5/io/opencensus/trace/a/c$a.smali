.class final Lio/opencensus/trace/a/c$a;
.super Lio/opencensus/trace/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lio/opencensus/trace/a/c$b;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 479
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 480
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 1201
    new-instance v2, Lio/opencensus/trace/a/a;

    new-instance v3, Ljava/util/HashMap;

    const-string v4, "numbersOfLatencySampledSpans"

    .line 1204
    invoke-static {v0, v4}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1202
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    const-string v4, "numbersOfErrorSampledSpans"

    .line 1208
    invoke-static {v1, v4}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1206
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lio/opencensus/trace/a/a;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 478
    sput-object v2, Lio/opencensus/trace/a/c$a;->a:Lio/opencensus/trace/a/c$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 476
    invoke-direct {p0}, Lio/opencensus/trace/a/c;-><init>()V

    .line 482
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/opencensus/trace/a/c$a;->b:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/a/c$1;)V
    .locals 0

    .line 476
    invoke-direct {p0}, Lio/opencensus/trace/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "spanNames"

    .line 510
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lio/opencensus/trace/a/c$a;->b:Ljava/util/Set;

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object v1, p0, Lio/opencensus/trace/a/c$a;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 513
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
