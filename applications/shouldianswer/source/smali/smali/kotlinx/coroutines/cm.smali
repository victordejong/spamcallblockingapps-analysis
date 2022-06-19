.class public final Lkotlinx/coroutines/cm;
.super Lkotlinx/coroutines/y;
.source "Unconfined.kt"


# static fields
.field public static final b:Lkotlinx/coroutines/cm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lkotlinx/coroutines/cm;

    invoke-direct {v0}, Lkotlinx/coroutines/cm;-><init>()V

    sput-object v0, Lkotlinx/coroutines/cm;->b:Lkotlinx/coroutines/cm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lkotlinx/coroutines/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/c/f;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public a(Lkotlin/c/f;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Unconfined"

    return-object v0
.end method
