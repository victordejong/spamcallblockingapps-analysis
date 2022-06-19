.class final Lkotlin/reflect/jvm/internal/p$a$d;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/p$a;-><init>(Lkotlin/reflect/jvm/internal/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/Class;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/p$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/p$a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/p$a$d;->a:Lkotlin/reflect/jvm/internal/p$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 5

    .line 1056
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/p$a$d;->a:Lkotlin/reflect/jvm/internal/p$a;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/p$a;->a(Lkotlin/reflect/jvm/internal/p$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 1059
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 1060
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/p$a$d;->a:Lkotlin/reflect/jvm/internal/p$a;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/p$a;->d:Lkotlin/reflect/jvm/internal/p;

    .line 3039
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/p;->a:Ljava/lang/Class;

    .line 1060
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v4, 0x2e

    .line 3063
    invoke-static {v0, v2, v4, v3}, Lkotlin/h/p;->a(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method
