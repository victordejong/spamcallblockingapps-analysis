.class public final enum Lkotlinx/coroutines/ae;
.super Ljava/lang/Enum;
.source "CoroutineStart.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/ae;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkotlinx/coroutines/ae;

.field public static final enum b:Lkotlinx/coroutines/ae;

.field public static final enum c:Lkotlinx/coroutines/ae;

.field public static final enum d:Lkotlinx/coroutines/ae;

.field private static final synthetic e:[Lkotlinx/coroutines/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/ae;

    new-instance v1, Lkotlinx/coroutines/ae;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/ae;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/ae;->a:Lkotlinx/coroutines/ae;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/coroutines/ae;

    const/4 v2, 0x1

    const-string v3, "LAZY"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/ae;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/ae;->b:Lkotlinx/coroutines/ae;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/coroutines/ae;

    const/4 v2, 0x2

    const-string v3, "ATOMIC"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/ae;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/ae;->c:Lkotlinx/coroutines/ae;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/coroutines/ae;

    const/4 v2, 0x3

    const-string v3, "UNDISPATCHED"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/ae;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/ae;->d:Lkotlinx/coroutines/ae;

    aput-object v1, v0, v2

    sput-object v0, Lkotlinx/coroutines/ae;->e:[Lkotlinx/coroutines/ae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/ae;
    .locals 1

    const-class v0, Lkotlinx/coroutines/ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/ae;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/ae;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/ae;->e:[Lkotlinx/coroutines/ae;

    invoke-virtual {v0}, [Lkotlinx/coroutines/ae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/ae;

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/e/a/m<",
            "-TR;-",
            "Lkotlin/c/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/c/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lkotlinx/coroutines/af;->b:[I

    invoke-virtual {p0}, Lkotlinx/coroutines/ae;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 111
    :cond_1
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/a/b;->a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p1, p2, p3}, Lkotlin/c/e;->a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)V

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/a/a;->a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)V

    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 121
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/ae;

    sget-object v1, Lkotlinx/coroutines/ae;->b:Lkotlinx/coroutines/ae;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
