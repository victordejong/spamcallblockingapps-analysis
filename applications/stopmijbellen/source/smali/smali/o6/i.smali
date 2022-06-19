.class public final Lo6/i;
.super Lcom/google/protobuf/i;
.source "SourceFile"

# interfaces
.implements Lo6/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i<",
        "Lo6/i;",
        "Lo6/i$b;",
        ">;",
        "Lo6/j;"
    }
.end annotation


# static fields
.field public static final APPLICATION_INFO_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lo6/i;

.field public static final GAUGE_METRIC_FIELD_NUMBER:I = 0x4

.field public static final NETWORK_REQUEST_METRIC_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lx6/s; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/s<",
            "Lo6/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRACE_METRIC_FIELD_NUMBER:I = 0x2

.field public static final TRANSPORT_INFO_FIELD_NUMBER:I = 0x5


# instance fields
.field private applicationInfo_:Lo6/c;

.field private bitField0_:I

.field private gaugeMetric_:Lo6/g;

.field private networkRequestMetric_:Lo6/h;

.field private traceMetric_:Lo6/m;

.field private transportInfo_:Lo6/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo6/i;

    invoke-direct {v0}, Lo6/i;-><init>()V

    .line 2
    sput-object v0, Lo6/i;->DEFAULT_INSTANCE:Lo6/i;

    .line 3
    const-class v1, Lo6/i;

    invoke-static {v1, v0}, Lcom/google/protobuf/i;->x(Ljava/lang/Class;Lcom/google/protobuf/i;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/i;-><init>()V

    return-void
.end method

.method public static A(Lo6/i;Lo6/g;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo6/i;->gaugeMetric_:Lo6/g;

    .line 4
    iget p1, p0, Lo6/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lo6/i;->bitField0_:I

    return-void
.end method

.method public static B(Lo6/i;Lo6/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo6/i;->traceMetric_:Lo6/m;

    .line 4
    iget p1, p0, Lo6/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo6/i;->bitField0_:I

    return-void
.end method

.method public static C(Lo6/i;Lo6/h;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo6/i;->networkRequestMetric_:Lo6/h;

    .line 4
    iget p1, p0, Lo6/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo6/i;->bitField0_:I

    return-void
.end method

.method public static F()Lo6/i$b;
    .locals 1

    .line 1
    sget-object v0, Lo6/i;->DEFAULT_INSTANCE:Lo6/i;

    invoke-virtual {v0}, Lcom/google/protobuf/i;->q()Lcom/google/protobuf/i$a;

    move-result-object v0

    check-cast v0, Lo6/i$b;

    return-object v0
.end method

.method public static synthetic y()Lo6/i;
    .locals 1

    .line 1
    sget-object v0, Lo6/i;->DEFAULT_INSTANCE:Lo6/i;

    return-object v0
.end method

.method public static z(Lo6/i;Lo6/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lo6/i;->applicationInfo_:Lo6/c;

    .line 3
    iget p1, p0, Lo6/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo6/i;->bitField0_:I

    return-void
.end method


# virtual methods
.method public D()Lo6/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/i;->applicationInfo_:Lo6/c;

    if-nez v0, :cond_0

    invoke-static {}, Lo6/c;->F()Lo6/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public E()Z
    .locals 2

    .line 1
    iget v0, p0, Lo6/i;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Lo6/i;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Lo6/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/i;->gaugeMetric_:Lo6/g;

    if-nez v0, :cond_0

    invoke-static {}, Lo6/g;->F()Lo6/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget v0, p0, Lo6/i;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Lo6/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/i;->traceMetric_:Lo6/m;

    if-nez v0, :cond_0

    invoke-static {}, Lo6/m;->L()Lo6/m;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget v0, p0, Lo6/i;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Lo6/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/i;->networkRequestMetric_:Lo6/h;

    if-nez v0, :cond_0

    invoke-static {}, Lo6/h;->N()Lo6/h;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final r(Lcom/google/protobuf/i$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lo6/i;->PARSER:Lx6/s;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lo6/i;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lo6/i;->PARSER:Lx6/s;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/google/protobuf/i$b;

    sget-object p3, Lo6/i;->DEFAULT_INSTANCE:Lo6/i;

    invoke-direct {p1, p3}, Lcom/google/protobuf/i$b;-><init>(Lcom/google/protobuf/i;)V

    .line 7
    sput-object p1, Lo6/i;->PARSER:Lx6/s;

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
    sget-object p1, Lo6/i;->DEFAULT_INSTANCE:Lo6/i;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lo6/i$b;

    invoke-direct {p1, p3}, Lo6/i$b;-><init>(Lo6/i$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lo6/i;

    invoke-direct {p1}, Lo6/i;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "applicationInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "traceMetric_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "networkRequestMetric_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "gaugeMetric_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "transportInfo_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004"

    .line 12
    sget-object p3, Lo6/i;->DEFAULT_INSTANCE:Lo6/i;

    .line 13
    new-instance v0, Lx6/v;

    invoke-direct {v0, p3, p2, p1}, Lx6/v;-><init>(Lcom/google/protobuf/u;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 14
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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
