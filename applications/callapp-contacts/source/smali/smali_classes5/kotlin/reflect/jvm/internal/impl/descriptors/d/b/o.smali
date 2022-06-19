.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/o;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/m;


# instance fields
.field private final b:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;)V

    .line 53
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/o;->b:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final b()Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 2

    .line 57
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/o;->b:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-string v1, "enumClass"

    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    .line 63
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/o;->b:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    return-object v0
.end method
