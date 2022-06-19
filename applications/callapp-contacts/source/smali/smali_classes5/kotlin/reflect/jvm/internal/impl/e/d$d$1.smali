.class final Lkotlin/reflect/jvm/internal/impl/e/d$d$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/e/d$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/e/f;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/e/d$d$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/e/d$d$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/e/d$d$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/d$d$1;->a:Lkotlin/reflect/jvm/internal/impl/e/d$d$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 38
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/e/f;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/e/f;->d()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->C:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v1}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->a(Ljava/util/Set;)V

    .line 1040
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/a;->ALWAYS_PARENTHESIZED:Lkotlin/reflect/jvm/internal/impl/e/a;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->a(Lkotlin/reflect/jvm/internal/impl/e/a;)V

    .line 38
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
