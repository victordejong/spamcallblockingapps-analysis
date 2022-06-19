.class public abstract Lio/opencensus/trace/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/o$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/opencensus/trace/o$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/opencensus/trace/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lio/opencensus/trace/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/o;->b:Ljava/util/Map;

    .line 62
    const-class v0, Lio/opencensus/trace/o$a;

    .line 63
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/o;->d:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Lio/opencensus/trace/q;Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/q;",
            "Ljava/util/EnumSet<",
            "Lio/opencensus/trace/o$a;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context"

    .line 77
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/opencensus/trace/q;

    iput-object v0, p0, Lio/opencensus/trace/o;->c:Lio/opencensus/trace/q;

    if-nez p2, :cond_0

    .line 80
    sget-object p2, Lio/opencensus/trace/o;->d:Ljava/util/Set;

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p2}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lio/opencensus/trace/o;->a:Ljava/util/Set;

    .line 1103
    iget-object p1, p1, Lio/opencensus/trace/q;->a:Lio/opencensus/trace/v;

    .line 1236
    invoke-virtual {p1}, Lio/opencensus/trace/v;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 83
    sget-object p1, Lio/opencensus/trace/o$a;->RECORD_EVENTS:Lio/opencensus/trace/o$a;

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

    .line 82
    invoke-static {p1, p2}, Lio/opencensus/b/b;->a(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lio/opencensus/trace/l;)V
.end method

.method public a(Lio/opencensus/trace/m;)V
    .locals 5

    const-string v0, "messageEvent"

    .line 191
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    .line 3065
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    check-cast p1, Lio/opencensus/trace/m;

    .line 3071
    invoke-virtual {p1}, Lio/opencensus/trace/m;->a()Lio/opencensus/trace/m$b;

    move-result-object v0

    sget-object v1, Lio/opencensus/trace/m$b;->RECEIVED:Lio/opencensus/trace/m$b;

    if-ne v0, v1, :cond_0

    .line 3072
    sget-object v0, Lio/opencensus/trace/n$b;->RECV:Lio/opencensus/trace/n$b;

    goto :goto_0

    .line 3073
    :cond_0
    sget-object v0, Lio/opencensus/trace/n$b;->SENT:Lio/opencensus/trace/n$b;

    .line 3074
    :goto_0
    invoke-virtual {p1}, Lio/opencensus/trace/m;->b()J

    move-result-wide v1

    .line 4068
    new-instance v3, Lio/opencensus/trace/f$a;

    invoke-direct {v3}, Lio/opencensus/trace/f$a;-><init>()V

    const-string v4, "type"

    .line 4069
    invoke-static {v0, v4}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/opencensus/trace/n$b;

    const-string v4, "Null type"

    .line 4117
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4119
    iput-object v0, v3, Lio/opencensus/trace/f$a;->a:Lio/opencensus/trace/n$b;

    .line 4070
    invoke-virtual {v3, v1, v2}, Lio/opencensus/trace/n$a;->a(J)Lio/opencensus/trace/n$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 4073
    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/n$a;->b(J)Lio/opencensus/trace/n$a;

    move-result-object v0

    .line 4074
    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/n$a;->c(J)Lio/opencensus/trace/n$a;

    move-result-object v0

    .line 3075
    invoke-virtual {p1}, Lio/opencensus/trace/m;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/n$a;->b(J)Lio/opencensus/trace/n$a;

    move-result-object v0

    .line 3076
    invoke-virtual {p1}, Lio/opencensus/trace/m;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/n$a;->c(J)Lio/opencensus/trace/n$a;

    move-result-object p1

    .line 3077
    invoke-virtual {p1}, Lio/opencensus/trace/n$a;->a()Lio/opencensus/trace/n;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lio/opencensus/trace/o;->a(Lio/opencensus/trace/n;)V

    return-void
.end method

.method public a(Lio/opencensus/trace/n;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "event"

    .line 3041
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    check-cast p1, Lio/opencensus/trace/n;

    .line 3047
    invoke-virtual {p1}, Lio/opencensus/trace/n;->b()Lio/opencensus/trace/n$b;

    move-result-object v0

    sget-object v1, Lio/opencensus/trace/n$b;->RECV:Lio/opencensus/trace/n$b;

    if-ne v0, v1, :cond_0

    .line 3048
    sget-object v0, Lio/opencensus/trace/m$b;->RECEIVED:Lio/opencensus/trace/m$b;

    goto :goto_0

    .line 3049
    :cond_0
    sget-object v0, Lio/opencensus/trace/m$b;->SENT:Lio/opencensus/trace/m$b;

    .line 3050
    :goto_0
    invoke-virtual {p1}, Lio/opencensus/trace/n;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/opencensus/trace/m;->a(Lio/opencensus/trace/m$b;J)Lio/opencensus/trace/m$a;

    move-result-object v0

    .line 3051
    invoke-virtual {p1}, Lio/opencensus/trace/n;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/m$a;->b(J)Lio/opencensus/trace/m$a;

    move-result-object v0

    .line 3052
    invoke-virtual {p1}, Lio/opencensus/trace/n;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/m$a;->c(J)Lio/opencensus/trace/m$a;

    move-result-object p1

    .line 3053
    invoke-virtual {p1}, Lio/opencensus/trace/m$a;->a()Lio/opencensus/trace/m;

    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Lio/opencensus/trace/o;->a(Lio/opencensus/trace/m;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lio/opencensus/trace/a;)V
    .locals 1

    const-string v0, "key"

    .line 99
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 100
    invoke-static {p2, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/trace/o;->a(Ljava/util/Map;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Map;)V
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

.method public a(Ljava/util/Map;)V
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

    .line 115
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    invoke-virtual {p0, p1}, Lio/opencensus/trace/o;->a(Ljava/util/Map;)V

    return-void
.end method
