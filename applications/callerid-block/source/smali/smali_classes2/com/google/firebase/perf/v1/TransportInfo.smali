.class public final Lcom/google/firebase/perf/v1/TransportInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/google/protobuf/n0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/TransportInfo$b;,
        Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/perf/v1/TransportInfo;",
        "Lcom/google/firebase/perf/v1/TransportInfo$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TransportInfo;

.field public static final DISPATCH_DESTINATION_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0<",
            "Lcom/google/firebase/perf/v1/TransportInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private dispatchDestination_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/TransportInfo;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/TransportInfo;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/TransportInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TransportInfo;

    const-class v1, Lcom/google/firebase/perf/v1/TransportInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->P(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic R()Lcom/google/firebase/perf/v1/TransportInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/TransportInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TransportInfo;

    return-object v0
.end method


# virtual methods
.method protected final C(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/firebase/perf/v1/TransportInfo$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/v1/TransportInfo;->PARSER:Lcom/google/protobuf/u0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/perf/v1/TransportInfo;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/TransportInfo;->PARSER:Lcom/google/protobuf/u0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$b;

    sget-object p3, Lcom/google/firebase/perf/v1/TransportInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TransportInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/firebase/perf/v1/TransportInfo;->PARSER:Lcom/google/protobuf/u0;

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
    sget-object p1, Lcom/google/firebase/perf/v1/TransportInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TransportInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "dispatchDestination_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    invoke-static {}, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->internalGetVerifier()Lcom/google/protobuf/x$e;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    sget-object p3, Lcom/google/firebase/perf/v1/TransportInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TransportInfo;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->N(Lcom/google/protobuf/m0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/TransportInfo$b;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/TransportInfo$b;-><init>(Lcom/google/firebase/perf/v1/TransportInfo$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/TransportInfo;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/TransportInfo;-><init>()V

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
