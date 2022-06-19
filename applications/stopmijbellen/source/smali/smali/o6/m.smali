.class public final Lo6/m;
.super Lcom/google/protobuf/i;
.source "SourceFile"

# interfaces
.implements Lx6/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/m$b;,
        Lo6/m$d;,
        Lo6/m$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i<",
        "Lo6/m;",
        "Lo6/m$b;",
        ">;",
        "Lx6/p;"
    }
.end annotation


# static fields
.field public static final CLIENT_START_TIME_US_FIELD_NUMBER:I = 0x4

.field public static final COUNTERS_FIELD_NUMBER:I = 0x6

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lo6/m;

.field public static final DURATION_US_FIELD_NUMBER:I = 0x5

.field public static final IS_AUTO_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lx6/s; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/s<",
            "Lo6/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERF_SESSIONS_FIELD_NUMBER:I = 0x9

.field public static final SUBTRACES_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private clientStartTimeUs_:J

.field private counters_:Lcom/google/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/r<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private customAttributes_:Lcom/google/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/r<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs_:J

.field private isAuto_:Z

.field private name_:Ljava/lang/String;

.field private perfSessions_:Lcom/google/protobuf/k$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/k$d<",
            "Lo6/k;",
            ">;"
        }
    .end annotation
.end field

.field private subtraces_:Lcom/google/protobuf/k$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/k$d<",
            "Lo6/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo6/m;

    invoke-direct {v0}, Lo6/m;-><init>()V

    .line 2
    sput-object v0, Lo6/m;->DEFAULT_INSTANCE:Lo6/m;

    .line 3
    const-class v1, Lo6/m;

    invoke-static {v1, v0}, Lcom/google/protobuf/i;->x(Ljava/lang/Class;Lcom/google/protobuf/i;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/i;-><init>()V

    .line 2
    sget-object v0, Lcom/google/protobuf/r;->b:Lcom/google/protobuf/r;

    .line 3
    iput-object v0, p0, Lo6/m;->counters_:Lcom/google/protobuf/r;

    .line 4
    iput-object v0, p0, Lo6/m;->customAttributes_:Lcom/google/protobuf/r;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lo6/m;->name_:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/google/protobuf/z;->d:Lcom/google/protobuf/z;

    .line 7
    iput-object v0, p0, Lo6/m;->subtraces_:Lcom/google/protobuf/k$d;

    .line 8
    iput-object v0, p0, Lo6/m;->perfSessions_:Lcom/google/protobuf/k$d;

    return-void
.end method

.method public static A(Lo6/m;)Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lo6/m;->counters_:Lcom/google/protobuf/r;

    .line 2
    iget-boolean v1, v0, Lcom/google/protobuf/r;->a:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/r;->c()Lcom/google/protobuf/r;

    move-result-object v0

    iput-object v0, p0, Lo6/m;->counters_:Lcom/google/protobuf/r;

    .line 4
    :cond_0
    iget-object p0, p0, Lo6/m;->counters_:Lcom/google/protobuf/r;

    return-object p0
.end method

.method public static B(Lo6/m;Lo6/m;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lo6/m;->subtraces_:Lcom/google/protobuf/k$d;

    .line 4
    invoke-interface {v0}, Lcom/google/protobuf/k$d;->W()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/i;->v(Lcom/google/protobuf/k$d;)Lcom/google/protobuf/k$d;

    move-result-object v0

    iput-object v0, p0, Lo6/m;->subtraces_:Lcom/google/protobuf/k$d;

    .line 6
    :cond_0
    iget-object p0, p0, Lo6/m;->subtraces_:Lcom/google/protobuf/k$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static C(Lo6/m;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo6/m;->subtraces_:Lcom/google/protobuf/k$d;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/k$d;->W()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->v(Lcom/google/protobuf/k$d;)Lcom/google/protobuf/k$d;

    move-result-object v0

    iput-object v0, p0, Lo6/m;->subtraces_:Lcom/google/protobuf/k$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lo6/m;->subtraces_:Lcom/google/protobuf/k$d;

    invoke-static {p1, p0}, Lcom/google/protobuf/a;->l(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static D(Lo6/m;)Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lo6/m;->customAttributes_:Lcom/google/protobuf/r;

    .line 2
    iget-boolean v1, v0, Lcom/google/protobuf/r;->a:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/r;->c()Lcom/google/protobuf/r;

    move-result-object v0

    iput-object v0, p0, Lo6/m;->customAttributes_:Lcom/google/protobuf/r;

    .line 4
    :cond_0
    iget-object p0, p0, Lo6/m;->customAttributes_:Lcom/google/protobuf/r;

    return-object p0
.end method

.method public static E(Lo6/m;Lo6/k;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lo6/m;->perfSessions_:Lcom/google/protobuf/k$d;

    .line 4
    invoke-interface {v0}, Lcom/google/protobuf/k$d;->W()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/i;->v(Lcom/google/protobuf/k$d;)Lcom/google/protobuf/k$d;

    move-result-object v0

    iput-object v0, p0, Lo6/m;->perfSessions_:Lcom/google/protobuf/k$d;

    .line 6
    :cond_0
    iget-object p0, p0, Lo6/m;->perfSessions_:Lcom/google/protobuf/k$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static F(Lo6/m;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo6/m;->perfSessions_:Lcom/google/protobuf/k$d;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/k$d;->W()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->v(Lcom/google/protobuf/k$d;)Lcom/google/protobuf/k$d;

    move-result-object v0

    iput-object v0, p0, Lo6/m;->perfSessions_:Lcom/google/protobuf/k$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lo6/m;->perfSessions_:Lcom/google/protobuf/k$d;

    invoke-static {p1, p0}, Lcom/google/protobuf/a;->l(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static G(Lo6/m;J)V
    .locals 1

    .line 1
    iget v0, p0, Lo6/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo6/m;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lo6/m;->clientStartTimeUs_:J

    return-void
.end method

.method public static H(Lo6/m;J)V
    .locals 1

    .line 1
    iget v0, p0, Lo6/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo6/m;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lo6/m;->durationUs_:J

    return-void
.end method

.method public static L()Lo6/m;
    .locals 1

    .line 1
    sget-object v0, Lo6/m;->DEFAULT_INSTANCE:Lo6/m;

    return-object v0
.end method

.method public static R()Lo6/m$b;
    .locals 1

    .line 1
    sget-object v0, Lo6/m;->DEFAULT_INSTANCE:Lo6/m;

    invoke-virtual {v0}, Lcom/google/protobuf/i;->q()Lcom/google/protobuf/i$a;

    move-result-object v0

    check-cast v0, Lo6/m$b;

    return-object v0
.end method

.method public static synthetic y()Lo6/m;
    .locals 1

    .line 1
    sget-object v0, Lo6/m;->DEFAULT_INSTANCE:Lo6/m;

    return-object v0
.end method

.method public static z(Lo6/m;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lo6/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo6/m;->bitField0_:I

    .line 4
    iput-object p1, p0, Lo6/m;->name_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public I()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/m;->counters_:Lcom/google/protobuf/r;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public J()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo6/m;->counters_:Lcom/google/protobuf/r;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo6/m;->customAttributes_:Lcom/google/protobuf/r;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public M()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo6/m;->durationUs_:J

    return-wide v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/m;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public O()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo6/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo6/m;->perfSessions_:Lcom/google/protobuf/k$d;

    return-object v0
.end method

.method public P()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo6/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo6/m;->subtraces_:Lcom/google/protobuf/k$d;

    return-object v0
.end method

.method public Q()Z
    .locals 1

    .line 1
    iget v0, p0, Lo6/m;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r(Lcom/google/protobuf/i$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class p2, Lo6/m;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lo6/m;->PARSER:Lx6/s;

    if-nez p1, :cond_1

    .line 4
    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lo6/m;->PARSER:Lx6/s;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/google/protobuf/i$b;

    sget-object p3, Lo6/m;->DEFAULT_INSTANCE:Lo6/m;

    invoke-direct {p1, p3}, Lcom/google/protobuf/i$b;-><init>(Lcom/google/protobuf/i;)V

    .line 7
    sput-object p1, Lo6/m;->PARSER:Lx6/s;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, Lo6/m;->DEFAULT_INSTANCE:Lo6/m;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lo6/m$b;

    invoke-direct {p1, v0}, Lo6/m$b;-><init>(Lo6/m$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lo6/m;

    invoke-direct {p1}, Lo6/m;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "bitField0_"

    aput-object v1, p1, v0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    const-string v0, "isAuto_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "clientStartTimeUs_"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "durationUs_"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    const-string v0, "counters_"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    .line 12
    sget-object v0, Lo6/m$c;->a:Lcom/google/protobuf/q;

    aput-object v0, p1, p3

    const/4 p3, 0x7

    const-string v0, "subtraces_"

    aput-object v0, p1, p3

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const/16 p2, 0x9

    const-string p3, "customAttributes_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    sget-object p3, Lo6/m$d;->a:Lcom/google/protobuf/q;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "perfSessions_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lo6/k;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0002\u0002\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0004\u1002\u0002\u0005\u1002\u0003\u00062\u0007\u001b\u00082\t\u001b"

    .line 13
    sget-object p3, Lo6/m;->DEFAULT_INSTANCE:Lo6/m;

    .line 14
    new-instance v0, Lx6/v;

    invoke-direct {v0, p3, p2, p1}, Lx6/v;-><init>(Lcom/google/protobuf/u;Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_5
    return-object v0

    .line 15
    :pswitch_6
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
