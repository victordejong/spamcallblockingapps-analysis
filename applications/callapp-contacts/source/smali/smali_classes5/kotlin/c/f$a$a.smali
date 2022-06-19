.class final Lkotlin/c/f$a$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/c/f$a;->a(Lkotlin/c/f;Lkotlin/c/f;)Lkotlin/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/c/f;",
        "Lkotlin/c/f$b;",
        "Lkotlin/c/f;",
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
        "<anonymous>",
        "Lkotlin/coroutines/CoroutineContext;",
        "acc",
        "element",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lkotlin/c/f$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/c/f$a$a;

    invoke-direct {v0}, Lkotlin/c/f$a$a;-><init>()V

    sput-object v0, Lkotlin/c/f$a$a;->a:Lkotlin/c/f$a$a;

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

    .line 14
    check-cast p1, Lkotlin/c/f;

    check-cast p2, Lkotlin/c/f$b;

    const-string v0, "acc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    invoke-interface {p2}, Lkotlin/c/f$b;->getKey()Lkotlin/c/f$c;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/c/f;->minusKey(Lkotlin/c/f$c;)Lkotlin/c/f;

    move-result-object p1

    .line 1034
    sget-object v0, Lkotlin/c/g;->a:Lkotlin/c/g;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1036
    :cond_0
    sget-object v0, Lkotlin/c/e;->a:Lkotlin/c/e$a;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p1, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    check-cast v0, Lkotlin/c/e;

    if-nez v0, :cond_1

    .line 1037
    new-instance v0, Lkotlin/c/c;

    invoke-direct {v0, p1, p2}, Lkotlin/c/c;-><init>(Lkotlin/c/f;Lkotlin/c/f$b;)V

    move-object p2, v0

    goto :goto_0

    .line 1038
    :cond_1
    sget-object v1, Lkotlin/c/e;->a:Lkotlin/c/e$a;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {p1, v1}, Lkotlin/c/f;->minusKey(Lkotlin/c/f$c;)Lkotlin/c/f;

    move-result-object p1

    .line 1039
    sget-object v1, Lkotlin/c/g;->a:Lkotlin/c/g;

    if-ne p1, v1, :cond_2

    new-instance p1, Lkotlin/c/c;

    check-cast p2, Lkotlin/c/f;

    check-cast v0, Lkotlin/c/f$b;

    invoke-direct {p1, p2, v0}, Lkotlin/c/c;-><init>(Lkotlin/c/f;Lkotlin/c/f$b;)V

    move-object p2, p1

    goto :goto_0

    .line 1040
    :cond_2
    new-instance v1, Lkotlin/c/c;

    new-instance v2, Lkotlin/c/c;

    invoke-direct {v2, p1, p2}, Lkotlin/c/c;-><init>(Lkotlin/c/f;Lkotlin/c/f$b;)V

    check-cast v2, Lkotlin/c/f;

    check-cast v0, Lkotlin/c/f$b;

    invoke-direct {v1, v2, v0}, Lkotlin/c/c;-><init>(Lkotlin/c/f;Lkotlin/c/f$b;)V

    move-object p2, v1

    .line 1037
    :goto_0
    check-cast p2, Lkotlin/c/f;

    return-object p2
.end method
