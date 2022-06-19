.class public final Lio/opencensus/trace/j;
.super Lio/opencensus/trace/o;
.source "SourceFile"


# static fields
.field public static final a:Lio/opencensus/trace/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lio/opencensus/trace/j;

    invoke-direct {v0}, Lio/opencensus/trace/j;-><init>()V

    sput-object v0, Lio/opencensus/trace/j;->a:Lio/opencensus/trace/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    sget-object v0, Lio/opencensus/trace/q;->b:Lio/opencensus/trace/q;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/opencensus/trace/o;-><init>(Lio/opencensus/trace/q;Ljava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/opencensus/trace/l;)V
    .locals 1

    const-string v0, "options"

    .line 95
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lio/opencensus/trace/m;)V
    .locals 1

    const-string v0, "messageEvent"

    .line 78
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lio/opencensus/trace/n;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final a(Ljava/lang/String;Lio/opencensus/trace/a;)V
    .locals 1

    const-string v0, "key"

    .line 47
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    .line 48
    invoke-static {p2, p1}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "description"

    .line 60
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attributes"

    .line 61
    invoke-static {p2, p1}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attributes"

    .line 54
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BlankSpan"

    return-object v0
.end method
