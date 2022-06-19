.class final Lkotlin/reflect/jvm/internal/impl/resolve/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/e/f;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 39
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/e/f;

    const/4 v0, 0x0

    .line 1042
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->f(Z)V

    const/4 v0, 0x1

    .line 1043
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->e(Z)V

    .line 1044
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/a;->UNLESS_EMPTY:Lkotlin/reflect/jvm/internal/impl/e/a;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->a(Lkotlin/reflect/jvm/internal/impl/e/a;)V

    .line 1045
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/e;->ALL:Ljava/util/Set;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->b(Ljava/util/Set;)V

    .line 1046
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
