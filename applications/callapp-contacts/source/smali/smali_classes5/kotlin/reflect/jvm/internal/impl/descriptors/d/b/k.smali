.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/k;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/h;


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;)V

    .line 68
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/k;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final b()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;
    .locals 1

    .line 70
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/k;->b:Ljava/lang/Class;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;->a(Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    return-object v0
.end method
