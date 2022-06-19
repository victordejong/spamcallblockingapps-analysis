.class final Lkotlin/reflect/jvm/internal/impl/e/c$c;
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
.field public static final a:Lkotlin/reflect/jvm/internal/impl/e/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/e/c$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/e/c$c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/c$c;->a:Lkotlin/reflect/jvm/internal/impl/e/c$c;

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

    .line 117
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/e/f;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1118
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->f(Z)V

    .line 2036
    sget-object v0, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v0, Ljava/util/Set;

    .line 1119
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->b(Ljava/util/Set;)V

    const/4 v0, 0x1

    .line 1120
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->g(Z)V

    .line 117
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
