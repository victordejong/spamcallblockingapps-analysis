.class final Lkotlinx/coroutines/internal/z$c;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/internal/ac;",
        "Lkotlin/c/f$b;",
        "Lkotlinx/coroutines/internal/ac;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<no name provided>",
        "Lkotlinx/coroutines/internal/ThreadState;",
        "state",
        "element",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/z$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/z$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/z$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/z$c;->a:Lkotlinx/coroutines/internal/z$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlinx/coroutines/internal/ac;

    check-cast p2, Lkotlin/c/f$b;

    .line 1053
    instance-of v0, p2, Lkotlinx/coroutines/cm;

    if-eqz v0, :cond_0

    .line 1054
    check-cast p2, Lkotlinx/coroutines/cm;

    iget-object v0, p1, Lkotlinx/coroutines/internal/ac;->d:Lkotlin/c/f;

    invoke-interface {p2, v0}, Lkotlinx/coroutines/cm;->a(Lkotlin/c/f;)Ljava/lang/Object;

    move-result-object v0

    .line 2021
    iget-object v1, p1, Lkotlinx/coroutines/internal/ac;->a:[Ljava/lang/Object;

    iget v2, p1, Lkotlinx/coroutines/internal/ac;->c:I

    aput-object v0, v1, v2

    .line 2022
    iget-object v0, p1, Lkotlinx/coroutines/internal/ac;->b:[Lkotlinx/coroutines/cm;

    iget v1, p1, Lkotlinx/coroutines/internal/ac;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lkotlinx/coroutines/internal/ac;->c:I

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    aput-object p2, v0, v1

    :cond_0
    return-object p1
.end method
