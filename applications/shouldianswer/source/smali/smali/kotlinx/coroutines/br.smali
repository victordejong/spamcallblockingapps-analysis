.class public final Lkotlinx/coroutines/br;
.super Ljava/lang/Object;
.source "JobSupport.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/u;

.field private static final b:Lkotlinx/coroutines/ax;

.field private static final c:Lkotlinx/coroutines/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1174
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/br;->a:Lkotlinx/coroutines/internal/u;

    .line 1176
    new-instance v0, Lkotlinx/coroutines/ax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/ax;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/br;->b:Lkotlinx/coroutines/ax;

    .line 1178
    new-instance v0, Lkotlinx/coroutines/ax;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/ax;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/br;->c:Lkotlinx/coroutines/ax;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1160
    instance-of v0, p0, Lkotlinx/coroutines/bg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlinx/coroutines/bg;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/bg;->a:Lkotlinx/coroutines/bf;

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/u;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/br;->a:Lkotlinx/coroutines/internal/u;

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/br;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/ax;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/br;->c:Lkotlinx/coroutines/ax;

    return-object v0
.end method

.method private static final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1159
    instance-of v0, p0, Lkotlinx/coroutines/bf;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/bg;

    check-cast p0, Lkotlinx/coroutines/bf;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/bg;-><init>(Lkotlinx/coroutines/bf;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/ax;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/br;->b:Lkotlinx/coroutines/ax;

    return-object v0
.end method
