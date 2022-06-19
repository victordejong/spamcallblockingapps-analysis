.class final Lkotlin/reflect/jvm/internal/impl/e/c$j;
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
.field public static final a:Lkotlin/reflect/jvm/internal/impl/e/c$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/e/c$j;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/e/c$j;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/c$j;->a:Lkotlin/reflect/jvm/internal/impl/e/c$j;

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

    .line 131
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/e/f;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1132
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->f(Z)V

    .line 2036
    sget-object v0, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v0, Ljava/util/Set;

    .line 1133
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->b(Ljava/util/Set;)V

    .line 1134
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/b$b;->a:Lkotlin/reflect/jvm/internal/impl/e/b$b;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/b;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->a(Lkotlin/reflect/jvm/internal/impl/e/b;)V

    const/4 v0, 0x1

    .line 1135
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->h(Z)V

    .line 1136
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/k;->NONE:Lkotlin/reflect/jvm/internal/impl/e/k;

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/e/f;->a(Lkotlin/reflect/jvm/internal/impl/e/k;)V

    .line 1137
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->b(Z)V

    .line 1138
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->c(Z)V

    .line 1139
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->g(Z)V

    .line 1140
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->d(Z)V

    .line 131
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
