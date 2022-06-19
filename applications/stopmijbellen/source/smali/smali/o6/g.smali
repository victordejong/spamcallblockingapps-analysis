.class public final Lo6/g;
.super Lcom/google/protobuf/i;
.source "SourceFile"

# interfaces
.implements Lx6/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i<",
        "Lo6/g;",
        "Lo6/g$b;",
        ">;",
        "Lx6/p;"
    }
.end annotation


# static fields
.field public static final ANDROID_MEMORY_READINGS_FIELD_NUMBER:I = 0x4

.field public static final CPU_METRIC_READINGS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lo6/g;

.field public static final GAUGE_METADATA_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lx6/s; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/s<",
            "Lo6/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private androidMemoryReadings_:Lcom/google/protobuf/k$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/k$d<",
            "Lo6/b;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private cpuMetricReadings_:Lcom/google/protobuf/k$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/k$d<",
            "Lo6/e;",
            ">;"
        }
    .end annotation
.end field

.field private gaugeMetadata_:Lo6/f;

.field private sessionId_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo6/g;

    invoke-direct {v0}, Lo6/g;-><init>()V

    .line 2
    sput-object v0, Lo6/g;->DEFAULT_INSTANCE:Lo6/g;

    .line 3
    const-class v1, Lo6/g;

    invoke-static {v1, v0}, Lcom/google/protobuf/i;->x(Ljava/lang/Class;Lcom/google/protobuf/i;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/i;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo6/g;->sessionId_:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/protobuf/z;->d:Lcom/google/protobuf/z;

    .line 4
    iput-object v0, p0, Lo6/g;->cpuMetricReadings_:Lcom/google/protobuf/k$d;

    .line 5
    iput-object v0, p0, Lo6/g;->androidMemoryReadings_:Lcom/google/protobuf/k$d;

    return-void
.end method

.method public static A(Lo6/g;Lo6/b;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lo6/g;->androidMemoryReadings_:Lcom/google/protobuf/k$d;

    .line 4
    invoke-interface {v0}, Lcom/google/protobuf/k$d;->W()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/i;->v(Lcom/google/protobuf/k$d;)Lcom/google/protobuf/k$d;

    move-result-object v0

    iput-object v0, p0, Lo6/g;->androidMemoryReadings_:Lcom/google/protobuf/k$d;

    .line 6
    :cond_0
    iget-object p0, p0, Lo6/g;->androidMemoryReadings_:Lcom/google/protobuf/k$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static B(Lo6/g;Lo6/f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo6/g;->gaugeMetadata_:Lo6/f;

    .line 4
    iget p1, p0, Lo6/g;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo6/g;->bitField0_:I

    return-void
.end method

.method public static C(Lo6/g;Lo6/e;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lo6/g;->cpuMetricReadings_:Lcom/google/protobuf/k$d;

    .line 4
    invoke-interface {v0}, Lcom/google/protobuf/k$d;->W()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/i;->v(Lcom/google/protobuf/k$d;)Lcom/google/protobuf/k$d;

    move-result-object v0

    iput-object v0, p0, Lo6/g;->cpuMetricReadings_:Lcom/google/protobuf/k$d;

    .line 6
    :cond_0
    iget-object p0, p0, Lo6/g;->cpuMetricReadings_:Lcom/google/protobuf/k$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static F()Lo6/g;
    .locals 1

    .line 1
    sget-object v0, Lo6/g;->DEFAULT_INSTANCE:Lo6/g;

    return-object v0
.end method

.method public static J()Lo6/g$b;
    .locals 1

    .line 1
    sget-object v0, Lo6/g;->DEFAULT_INSTANCE:Lo6/g;

    invoke-virtual {v0}, Lcom/google/protobuf/i;->q()Lcom/google/protobuf/i$a;

    move-result-object v0

    check-cast v0, Lo6/g$b;

    return-object v0
.end method

.method public static synthetic y()Lo6/g;
    .locals 1

    .line 1
    sget-object v0, Lo6/g;->DEFAULT_INSTANCE:Lo6/g;

    return-object v0
.end method

.method public static z(Lo6/g;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lo6/g;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo6/g;->bitField0_:I

    .line 4
    iput-object p1, p0, Lo6/g;->sessionId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public D()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/g;->androidMemoryReadings_:Lcom/google/protobuf/k$d;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/g;->cpuMetricReadings_:Lcom/google/protobuf/k$d;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public G()Lo6/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/g;->gaugeMetadata_:Lo6/f;

    if-nez v0, :cond_0

    invoke-static {}, Lo6/f;->D()Lo6/f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget v0, p0, Lo6/g;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()Z
    .locals 2

    .line 1
    iget v0, p0, Lo6/g;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
    sget-object p1, Lo6/g;->PARSER:Lx6/s;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lo6/g;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lo6/g;->PARSER:Lx6/s;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/google/protobuf/i$b;

    sget-object p3, Lo6/g;->DEFAULT_INSTANCE:Lo6/g;

    invoke-direct {p1, p3}, Lcom/google/protobuf/i$b;-><init>(Lcom/google/protobuf/i;)V

    .line 7
    sput-object p1, Lo6/g;->PARSER:Lx6/s;

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
    sget-object p1, Lo6/g;->DEFAULT_INSTANCE:Lo6/g;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lo6/g$b;

    invoke-direct {p1, p3}, Lo6/g$b;-><init>(Lo6/g$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lo6/g;

    invoke-direct {p1}, Lo6/g;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "sessionId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "cpuMetricReadings_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 12
    const-class p3, Lo6/e;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "gaugeMetadata_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "androidMemoryReadings_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lo6/b;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1009\u0001\u0004\u001b"

    .line 13
    sget-object p3, Lo6/g;->DEFAULT_INSTANCE:Lo6/g;

    .line 14
    new-instance v0, Lx6/v;

    invoke-direct {v0, p3, p2, p1}, Lx6/v;-><init>(Lcom/google/protobuf/u;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 15
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

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
