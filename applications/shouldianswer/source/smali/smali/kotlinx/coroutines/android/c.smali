.class public abstract Lkotlinx/coroutines/android/c;
.super Lkotlinx/coroutines/bu;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lkotlinx/coroutines/am;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lkotlinx/coroutines/bu;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lkotlinx/coroutines/android/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;)Lkotlinx/coroutines/au;
    .locals 1

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/am$a;->a(Lkotlinx/coroutines/am;JLjava/lang/Runnable;)Lkotlinx/coroutines/au;

    move-result-object p1

    return-object p1
.end method
