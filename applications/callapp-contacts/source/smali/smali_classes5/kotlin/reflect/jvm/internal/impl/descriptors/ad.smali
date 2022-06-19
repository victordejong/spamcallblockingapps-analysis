.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/ad$a;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/ad$b;
    }
.end annotation


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/f/n;

.field final b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

.field final c:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ad$a;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 28
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$d;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$d;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;->c:Lkotlin/reflect/jvm/internal/impl/f/g;

    .line 32
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$c;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;->d:Lkotlin/reflect/jvm/internal/impl/f/g;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/a;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;"
        }
    .end annotation

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParametersCount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;->d:Lkotlin/reflect/jvm/internal/impl/f/g;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$a;

    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object p1
.end method
