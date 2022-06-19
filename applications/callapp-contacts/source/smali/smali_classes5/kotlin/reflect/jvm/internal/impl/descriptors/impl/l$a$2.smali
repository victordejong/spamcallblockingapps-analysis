.class final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;Lkotlin/reflect/jvm/internal/impl/f/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/c/e;",
        "Ljava/util/Collection<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$2;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$2;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 208
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 1211
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$2;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
