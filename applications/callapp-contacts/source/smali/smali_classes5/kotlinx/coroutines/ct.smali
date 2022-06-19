.class final Lkotlinx/coroutines/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/c/f$b;
.implements Lkotlin/c/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/c/f$b;",
        "Lkotlin/c/f$c<",
        "Lkotlinx/coroutines/ct;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c2\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/coroutines/UndispatchedMarker;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "()V",
        "key",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lkotlinx/coroutines/ct;

    invoke-direct {v0}, Lkotlinx/coroutines/ct;-><init>()V

    sput-object v0, Lkotlinx/coroutines/ct;->a:Lkotlinx/coroutines/ct;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/c/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 107
    invoke-static {p0, p1, p2}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lkotlin/c/f$c;)Lkotlin/c/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/c/f$b;",
            ">(",
            "Lkotlin/c/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 107
    invoke-static {p0, p1}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lkotlin/c/f$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/c/f$c<",
            "*>;"
        }
    .end annotation

    .line 109
    move-object v0, p0

    check-cast v0, Lkotlin/c/f$c;

    return-object v0
.end method

.method public final minusKey(Lkotlin/c/f$c;)Lkotlin/c/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f$c<",
            "*>;)",
            "Lkotlin/c/f;"
        }
    .end annotation

    .line 107
    invoke-static {p0, p1}, Lkotlin/c/f$b$a;->b(Lkotlin/c/f$b;Lkotlin/c/f$c;)Lkotlin/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lkotlin/c/f;)Lkotlin/c/f;
    .locals 0

    .line 107
    invoke-static {p0, p1}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p1

    return-object p1
.end method
