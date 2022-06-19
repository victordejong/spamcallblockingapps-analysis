.class public final Lo6/k;
.super Lcom/google/protobuf/i;
.source "SourceFile"

# interfaces
.implements Lx6/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i<",
        "Lo6/k;",
        "Lo6/k$b;",
        ">;",
        "Lx6/p;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo6/k;

.field private static volatile PARSER:Lx6/s; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/s<",
            "Lo6/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field public static final SESSION_VERBOSITY_FIELD_NUMBER:I = 0x2

.field private static final sessionVerbosity_converter_:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/lang/Integer;",
            "Lo6/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private sessionId_:Ljava/lang/String;

.field private sessionVerbosity_:Lcom/google/protobuf/k$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo6/k$a;

    invoke-direct {v0}, Lo6/k$a;-><init>()V

    sput-object v0, Lo6/k;->sessionVerbosity_converter_:Lx6/i;

    .line 2
    new-instance v0, Lo6/k;

    invoke-direct {v0}, Lo6/k;-><init>()V

    .line 3
    sput-object v0, Lo6/k;->DEFAULT_INSTANCE:Lo6/k;

    .line 4
    const-class v1, Lo6/k;

    invoke-static {v1, v0}, Lcom/google/protobuf/i;->x(Ljava/lang/Class;Lcom/google/protobuf/i;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/i;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo6/k;->sessionId_:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/protobuf/j;->d:Lcom/google/protobuf/j;

    .line 4
    iput-object v0, p0, Lo6/k;->sessionVerbosity_:Lcom/google/protobuf/k$c;

    return-void
.end method

.method public static A(Lo6/k;Lo6/l;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lo6/k;->sessionVerbosity_:Lcom/google/protobuf/k$c;

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/c;

    .line 5
    iget-boolean v1, v1, Lcom/google/protobuf/c;->a:Z

    if-nez v1, :cond_1

    .line 6
    check-cast v0, Lcom/google/protobuf/j;

    .line 7
    iget v1, v0, Lcom/google/protobuf/j;->c:I

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/protobuf/j;->f(I)Lcom/google/protobuf/k$c;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lo6/k;->sessionVerbosity_:Lcom/google/protobuf/k$c;

    .line 10
    :cond_1
    iget-object p0, p0, Lo6/k;->sessionVerbosity_:Lcom/google/protobuf/k$c;

    .line 11
    iget p1, p1, Lo6/l;->a:I

    .line 12
    check-cast p0, Lcom/google/protobuf/j;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j;->b(I)V

    return-void
.end method

.method public static D()Lo6/k$b;
    .locals 1

    .line 1
    sget-object v0, Lo6/k;->DEFAULT_INSTANCE:Lo6/k;

    invoke-virtual {v0}, Lcom/google/protobuf/i;->q()Lcom/google/protobuf/i$a;

    move-result-object v0

    check-cast v0, Lo6/k$b;

    return-object v0
.end method

.method public static synthetic y()Lo6/k;
    .locals 1

    .line 1
    sget-object v0, Lo6/k;->DEFAULT_INSTANCE:Lo6/k;

    return-object v0
.end method

.method public static z(Lo6/k;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lo6/k;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo6/k;->bitField0_:I

    .line 4
    iput-object p1, p0, Lo6/k;->sessionId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B(I)Lo6/l;
    .locals 2

    .line 1
    sget-object v0, Lo6/k;->sessionVerbosity_converter_:Lx6/i;

    iget-object v1, p0, Lo6/k;->sessionVerbosity_:Lcom/google/protobuf/k$c;

    check-cast v1, Lcom/google/protobuf/j;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/protobuf/j;->c(I)V

    .line 3
    iget-object v1, v1, Lcom/google/protobuf/j;->b:[I

    aget p1, v1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Lo6/k$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lo6/l;->a(I)Lo6/l;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lo6/l;->b:Lo6/l;

    :cond_0
    return-object p1
.end method

.method public C()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/k;->sessionVerbosity_:Lcom/google/protobuf/k$c;

    check-cast v0, Lcom/google/protobuf/j;

    invoke-virtual {v0}, Lcom/google/protobuf/j;->size()I

    move-result v0

    return v0
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
    sget-object p1, Lo6/k;->PARSER:Lx6/s;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lo6/k;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lo6/k;->PARSER:Lx6/s;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/google/protobuf/i$b;

    sget-object p3, Lo6/k;->DEFAULT_INSTANCE:Lo6/k;

    invoke-direct {p1, p3}, Lcom/google/protobuf/i$b;-><init>(Lcom/google/protobuf/i;)V

    .line 7
    sput-object p1, Lo6/k;->PARSER:Lx6/s;

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
    sget-object p1, Lo6/k;->DEFAULT_INSTANCE:Lo6/k;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lo6/k$b;

    invoke-direct {p1, p3}, Lo6/k$b;-><init>(Lo6/k$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lo6/k;

    invoke-direct {p1}, Lo6/k;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "sessionId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "sessionVerbosity_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 12
    sget-object p3, Lo6/l$a;->a:Lcom/google/protobuf/k$b;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001e"

    .line 13
    sget-object p3, Lo6/k;->DEFAULT_INSTANCE:Lo6/k;

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
