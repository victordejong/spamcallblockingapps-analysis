.class public abstract Lio/opencensus/trace/Span;
.super Ljava/lang/Object;
.source "Span.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/Span$Options;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/opencensus/trace/Span$Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lio/opencensus/trace/m;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/opencensus/trace/Span$Options;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Span;->a:Ljava/util/Map;

    .line 2
    const-class v0, Lio/opencensus/trace/Span$Options;

    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Span;->b:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Lio/opencensus/trace/m;Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/m;",
            "Ljava/util/EnumSet<",
            "Lio/opencensus/trace/Span$Options;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context"

    .line 2
    invoke-static {p1, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/opencensus/trace/m;

    iput-object v0, p0, Lio/opencensus/trace/Span;->c:Lio/opencensus/trace/m;

    if-nez p2, :cond_0

    .line 3
    sget-object p2, Lio/opencensus/trace/Span;->b:Ljava/util/Set;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lio/opencensus/trace/Span;->d:Ljava/util/Set;

    .line 5
    invoke-virtual {p1}, Lio/opencensus/trace/m;->c()Lio/opencensus/trace/q;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/trace/q;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lio/opencensus/trace/Span$Options;->d:Lio/opencensus/trace/Span$Options;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    const-string p2, "Span is sampled, but does not have RECORD_EVENTS set."

    .line 6
    invoke-static {p1, p2}, Ld/b/b/b;->a(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "description"

    .line 1
    invoke-static {p1, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lio/opencensus/trace/Span;->a:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lio/opencensus/trace/Span;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public abstract b(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->j(Ljava/util/Map;)V

    return-void
.end method

.method public d(Lio/opencensus/trace/MessageEvent;)V
    .locals 1

    const-string v0, "messageEvent"

    .line 1
    invoke-static {p1, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/opencensus/trace/v/a;->b(Lio/opencensus/trace/g;)Lio/opencensus/trace/NetworkEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->e(Lio/opencensus/trace/NetworkEvent;)V

    return-void
.end method

.method public e(Lio/opencensus/trace/NetworkEvent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lio/opencensus/trace/v/a;->a(Lio/opencensus/trace/g;)Lio/opencensus/trace/MessageEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->d(Lio/opencensus/trace/MessageEvent;)V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/trace/k;->a:Lio/opencensus/trace/k;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Span;->g(Lio/opencensus/trace/k;)V

    return-void
.end method

.method public abstract g(Lio/opencensus/trace/k;)V
.end method

.method public final h()Lio/opencensus/trace/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/Span;->c:Lio/opencensus/trace/m;

    return-object v0
.end method

.method public i(Ljava/lang/String;Lio/opencensus/trace/a;)V
    .locals 1

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {p2, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->j(Ljava/util/Map;)V

    return-void
.end method

.method public j(Ljava/util/Map;)V
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

    .line 1
    invoke-static {p1, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->c(Ljava/util/Map;)V

    return-void
.end method
