.class public final Lo6/c;
.super Lcom/google/protobuf/i;
.source "SourceFile"

# interfaces
.implements Lx6/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/c$b;,
        Lo6/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i<",
        "Lo6/c;",
        "Lo6/c$b;",
        ">;",
        "Lx6/p;"
    }
.end annotation


# static fields
.field public static final ANDROID_APP_INFO_FIELD_NUMBER:I = 0x3

.field public static final APPLICATION_PROCESS_STATE_FIELD_NUMBER:I = 0x5

.field public static final APP_INSTANCE_ID_FIELD_NUMBER:I = 0x2

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lo6/c;

.field public static final GOOGLE_APP_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lx6/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/s<",
            "Lo6/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private androidAppInfo_:Lo6/a;

.field private appInstanceId_:Ljava/lang/String;

.field private applicationProcessState_:I

.field private bitField0_:I

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

.field private googleAppId_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo6/c;

    invoke-direct {v0}, Lo6/c;-><init>()V

    .line 2
    sput-object v0, Lo6/c;->DEFAULT_INSTANCE:Lo6/c;

    .line 3
    const-class v1, Lo6/c;

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
    iput-object v0, p0, Lo6/c;->customAttributes_:Lcom/google/protobuf/r;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lo6/c;->googleAppId_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lo6/c;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method public static A(Lo6/c;Lo6/d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Lo6/d;->a:I

    .line 3
    iput p1, p0, Lo6/c;->applicationProcessState_:I

    .line 4
    iget p1, p0, Lo6/c;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lo6/c;->bitField0_:I

    return-void
.end method

.method public static B(Lo6/c;)Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lo6/c;->customAttributes_:Lcom/google/protobuf/r;

    .line 2
    iget-boolean v1, v0, Lcom/google/protobuf/r;->a:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/r;->c()Lcom/google/protobuf/r;

    move-result-object v0

    iput-object v0, p0, Lo6/c;->customAttributes_:Lcom/google/protobuf/r;

    .line 4
    :cond_0
    iget-object p0, p0, Lo6/c;->customAttributes_:Lcom/google/protobuf/r;

    return-object p0
.end method

.method public static C(Lo6/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lo6/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo6/c;->bitField0_:I

    .line 4
    iput-object p1, p0, Lo6/c;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method public static D(Lo6/c;Lo6/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lo6/c;->androidAppInfo_:Lo6/a;

    .line 3
    iget p1, p0, Lo6/c;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo6/c;->bitField0_:I

    return-void
.end method

.method public static F()Lo6/c;
    .locals 1

    .line 1
    sget-object v0, Lo6/c;->DEFAULT_INSTANCE:Lo6/c;

    return-object v0
.end method

.method public static K()Lo6/c$b;
    .locals 1

    .line 1
    sget-object v0, Lo6/c;->DEFAULT_INSTANCE:Lo6/c;

    invoke-virtual {v0}, Lcom/google/protobuf/i;->q()Lcom/google/protobuf/i$a;

    move-result-object v0

    check-cast v0, Lo6/c$b;

    return-object v0
.end method

.method public static synthetic y()Lo6/c;
    .locals 1

    .line 1
    sget-object v0, Lo6/c;->DEFAULT_INSTANCE:Lo6/c;

    return-object v0
.end method

.method public static z(Lo6/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lo6/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo6/c;->bitField0_:I

    .line 4
    iput-object p1, p0, Lo6/c;->googleAppId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public E()Lo6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/c;->androidAppInfo_:Lo6/a;

    if-nez v0, :cond_0

    invoke-static {}, Lo6/a;->C()Lo6/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public G()Z
    .locals 1

    .line 1
    iget v0, p0, Lo6/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget v0, p0, Lo6/c;->bitField0_:I

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
    .locals 1

    .line 1
    iget v0, p0, Lo6/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 2

    .line 1
    iget v0, p0, Lo6/c;->bitField0_:I

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
    sget-object p1, Lo6/c;->PARSER:Lx6/s;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lo6/c;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lo6/c;->PARSER:Lx6/s;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/google/protobuf/i$b;

    sget-object p3, Lo6/c;->DEFAULT_INSTANCE:Lo6/c;

    invoke-direct {p1, p3}, Lcom/google/protobuf/i$b;-><init>(Lcom/google/protobuf/i;)V

    .line 7
    sput-object p1, Lo6/c;->PARSER:Lx6/s;

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
    sget-object p1, Lo6/c;->DEFAULT_INSTANCE:Lo6/c;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lo6/c$b;

    invoke-direct {p1, p3}, Lo6/c$b;-><init>(Lo6/c$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lo6/c;

    invoke-direct {p1}, Lo6/c;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "googleAppId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "appInstanceId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "androidAppInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "applicationProcessState_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 12
    sget-object p3, Lo6/d$a;->a:Lcom/google/protobuf/k$b;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "customAttributes_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    sget-object p3, Lo6/c$c;->a:Lcom/google/protobuf/q;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0005\u100c\u0003\u00062"

    .line 13
    sget-object p3, Lo6/c;->DEFAULT_INSTANCE:Lo6/c;

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
