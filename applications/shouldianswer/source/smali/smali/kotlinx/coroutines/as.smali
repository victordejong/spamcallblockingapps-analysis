.class public final Lkotlinx/coroutines/as;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/as;

.field private static final b:Lkotlinx/coroutines/y;

.field private static final c:Lkotlinx/coroutines/y;

.field private static final d:Lkotlinx/coroutines/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lkotlinx/coroutines/as;

    invoke-direct {v0}, Lkotlinx/coroutines/as;-><init>()V

    sput-object v0, Lkotlinx/coroutines/as;->a:Lkotlinx/coroutines/as;

    .line 33
    invoke-static {}, Lkotlinx/coroutines/x;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/as;->b:Lkotlinx/coroutines/y;

    .line 75
    sget-object v0, Lkotlinx/coroutines/cm;->b:Lkotlinx/coroutines/cm;

    check-cast v0, Lkotlinx/coroutines/y;

    sput-object v0, Lkotlinx/coroutines/as;->c:Lkotlinx/coroutines/y;

    .line 90
    sget-object v0, Lkotlinx/coroutines/b/c;->b:Lkotlinx/coroutines/b/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/c;->b()Lkotlinx/coroutines/y;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/as;->d:Lkotlinx/coroutines/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/y;
    .locals 1

    .line 33
    sget-object v0, Lkotlinx/coroutines/as;->b:Lkotlinx/coroutines/y;

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/bu;
    .locals 1

    .line 55
    sget-object v0, Lkotlinx/coroutines/internal/l;->a:Lkotlinx/coroutines/bu;

    return-object v0
.end method

.method public static final c()Lkotlinx/coroutines/y;
    .locals 1

    .line 90
    sget-object v0, Lkotlinx/coroutines/as;->d:Lkotlinx/coroutines/y;

    return-object v0
.end method
