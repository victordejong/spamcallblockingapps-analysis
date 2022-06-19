.class public final Lcom/google/firebase/perf/v1/j;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/google/protobuf/n0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/j$b;,
        Lcom/google/firebase/perf/v1/j$d;,
        Lcom/google/firebase/perf/v1/j$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/perf/v1/j;",
        "Lcom/google/firebase/perf/v1/j$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CLIENT_START_TIME_US_FIELD_NUMBER:I = 0x4

.field public static final COUNTERS_FIELD_NUMBER:I = 0x6

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/j;

.field public static final DURATION_US_FIELD_NUMBER:I = 0x5

.field public static final IS_AUTO_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/u0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0<",
            "Lcom/google/firebase/perf/v1/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERF_SESSIONS_FIELD_NUMBER:I = 0x9

.field public static final SUBTRACES_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private clientStartTimeUs_:J

.field private counters_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private customAttributes_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs_:J

.field private isAuto_:Z

.field private name_:Ljava/lang/String;

.field private perfSessions_:Lcom/google/protobuf/x$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x$i<",
            "Lcom/google/firebase/perf/v1/i;",
            ">;"
        }
    .end annotation
.end field

.field private subtraces_:Lcom/google/protobuf/x$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x$i<",
            "Lcom/google/firebase/perf/v1/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/j;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/j;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/j;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/j;

    const-class v1, Lcom/google/firebase/perf/v1/j;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->P(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/j;->counters_:Lcom/google/protobuf/MapFieldLite;

    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/j;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/perf/v1/j;->name_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->E()Lcom/google/protobuf/x$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/j;->subtraces_:Lcom/google/protobuf/x$i;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->E()Lcom/google/protobuf/x$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/j;->perfSessions_:Lcom/google/protobuf/x$i;

    return-void
.end method

.method static synthetic R()Lcom/google/firebase/perf/v1/j;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/j;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/j;

    return-object v0
.end method

.method static synthetic S(Lcom/google/firebase/perf/v1/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/j;->z0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic T(Lcom/google/firebase/perf/v1/j;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j;->m0()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic U(Lcom/google/firebase/perf/v1/j;Lcom/google/firebase/perf/v1/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/j;->e0(Lcom/google/firebase/perf/v1/j;)V

    return-void
.end method

.method static synthetic V(Lcom/google/firebase/perf/v1/j;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/j;->c0(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic W(Lcom/google/firebase/perf/v1/j;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j;->n0()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic X(Lcom/google/firebase/perf/v1/j;Lcom/google/firebase/perf/v1/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/j;->d0(Lcom/google/firebase/perf/v1/i;)V

    return-void
.end method

.method static synthetic Y(Lcom/google/firebase/perf/v1/j;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/j;->b0(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic Z(Lcom/google/firebase/perf/v1/j;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/j;->x0(J)V

    return-void
.end method

.method static synthetic a0(Lcom/google/firebase/perf/v1/j;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/j;->y0(J)V

    return-void
.end method

.method private b0(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j;->f0()V

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->perfSessions_:Lcom/google/protobuf/x$i;

    invoke-static {p1, v0}, Lcom/google/protobuf/a;->q(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private c0(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j;->g0()V

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->subtraces_:Lcom/google/protobuf/x$i;

    invoke-static {p1, v0}, Lcom/google/protobuf/a;->q(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private d0(Lcom/google/firebase/perf/v1/i;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j;->f0()V

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->perfSessions_:Lcom/google/protobuf/x$i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private e0(Lcom/google/firebase/perf/v1/j;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j;->g0()V

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->subtraces_:Lcom/google/protobuf/x$i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f0()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->perfSessions_:Lcom/google/protobuf/x$i;

    invoke-interface {v0}, Lcom/google/protobuf/x$i;->D()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->L(Lcom/google/protobuf/x$i;)Lcom/google/protobuf/x$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/j;->perfSessions_:Lcom/google/protobuf/x$i;

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->subtraces_:Lcom/google/protobuf/x$i;

    invoke-interface {v0}, Lcom/google/protobuf/x$i;->D()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->L(Lcom/google/protobuf/x$i;)Lcom/google/protobuf/x$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/j;->subtraces_:Lcom/google/protobuf/x$i;

    :cond_0
    return-void
.end method

.method public static k0()Lcom/google/firebase/perf/v1/j;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/j;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/j;

    return-object v0
.end method

.method private m0()Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j;->u0()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private n0()Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j;->v0()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private s0()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->counters_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private t0()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private u0()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->counters_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->counters_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/j;->counters_:Lcom/google/protobuf/MapFieldLite;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->counters_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private v0()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/j;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static w0()Lcom/google/firebase/perf/v1/j$b;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/j;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/j;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->z()Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/j$b;

    return-object v0
.end method

.method private x0(J)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/j;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/perf/v1/j;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/j;->clientStartTimeUs_:J

    return-void
.end method

.method private y0(J)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/j;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firebase/perf/v1/j;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/j;->durationUs_:J

    return-void
.end method

.method private z0(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/j;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/j;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/j;->name_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final C(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-class p2, Lcom/google/firebase/perf/v1/j;

    sget-object p3, Lcom/google/firebase/perf/v1/j$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/v1/j;->PARSER:Lcom/google/protobuf/u0;

    if-nez p1, :cond_1

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/j;->PARSER:Lcom/google/protobuf/u0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$b;

    sget-object p3, Lcom/google/firebase/perf/v1/j;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/j;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/firebase/perf/v1/j;->PARSER:Lcom/google/protobuf/u0;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/firebase/perf/v1/j;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/j;

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

    sget-object v0, Lcom/google/firebase/perf/v1/j$c;->a:Lcom/google/protobuf/g0;

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

    sget-object p3, Lcom/google/firebase/perf/v1/j$d;->a:Lcom/google/protobuf/g0;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "perfSessions_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lcom/google/firebase/perf/v1/i;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0002\u0002\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0004\u1002\u0002\u0005\u1002\u0003\u00062\u0007\u001b\u00082\t\u001b"

    sget-object p3, Lcom/google/firebase/perf/v1/j;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/j;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->N(Lcom/google/protobuf/m0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/j$b;

    invoke-direct {p1, v0}, Lcom/google/firebase/perf/v1/j$b;-><init>(Lcom/google/firebase/perf/v1/j$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/j;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/j;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h0()I
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j;->s0()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public i0()Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j;->s0()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public j0()Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j;->t0()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public l0()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/perf/v1/j;->durationUs_:J

    return-wide v0
.end method

.method public o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public p0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->perfSessions_:Lcom/google/protobuf/x$i;

    return-object v0
.end method

.method public q0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/v1/j;->subtraces_:Lcom/google/protobuf/x$i;

    return-object v0
.end method

.method public r0()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/j;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
