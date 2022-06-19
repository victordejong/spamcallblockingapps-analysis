.class public final Lkotlinx/coroutines/bk$b;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlin/c/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/c/f$c<",
        "Lkotlinx/coroutines/bk;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Lkotlinx/coroutines/bk$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lkotlinx/coroutines/bk$b;

    invoke-direct {v0}, Lkotlinx/coroutines/bk$b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/bk$b;->a:Lkotlinx/coroutines/bk$b;

    .line 95
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
