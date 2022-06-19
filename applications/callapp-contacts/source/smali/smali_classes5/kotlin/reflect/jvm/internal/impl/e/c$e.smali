.class final Lkotlin/reflect/jvm/internal/impl/e/c$e;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/e/c;-><clinit>()V
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
.field public static final a:Lkotlin/reflect/jvm/internal/impl/e/c$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/e/c$e;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/e/c$e;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/c$e;->a:Lkotlin/reflect/jvm/internal/impl/e/c$e;

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
    .locals 1

    .line 124
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/e/f;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    sget-object v0, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v0, Ljava/util/Set;

    .line 1125
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->b(Ljava/util/Set;)V

    .line 1126
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/b$b;->a:Lkotlin/reflect/jvm/internal/impl/e/b$b;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/b;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->a(Lkotlin/reflect/jvm/internal/impl/e/b;)V

    .line 1127
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/k;->ONLY_NON_SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/e/k;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->a(Lkotlin/reflect/jvm/internal/impl/e/k;)V

    .line 124
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
