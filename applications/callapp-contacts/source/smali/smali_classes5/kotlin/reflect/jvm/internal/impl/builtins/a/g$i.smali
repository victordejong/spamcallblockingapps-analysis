.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a/g$i;
.super Lkotlin/reflect/jvm/internal/impl/utils/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/utils/b$a<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
        "Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lkotlin/jvm/internal/ab$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/ab$e<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/ab$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/ab$e<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$i;->a:Ljava/lang/String;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$i;->b:Lkotlin/jvm/internal/ab$e;

    .line 239
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/utils/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic beforeChildren(Ljava/lang/Object;)Z
    .locals 2

    .line 239
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const-string v0, "javaClassDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$i;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1243
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/i;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$i;->b:Lkotlin/jvm/internal/ab$e;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->HIDDEN:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    iput-object v0, p1, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    goto :goto_0

    .line 1244
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/i;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$i;->b:Lkotlin/jvm/internal/ab$e;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->VISIBLE:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    iput-object v0, p1, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    goto :goto_0

    .line 1245
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/i;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$i;->b:Lkotlin/jvm/internal/ab$e;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->DROP:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    iput-object v0, p1, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 1248
    :cond_2
    :goto_0
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$i;->b:Lkotlin/jvm/internal/ab$e;

    iget-object p1, p1, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 1251
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$i;->b:Lkotlin/jvm/internal/ab$e;

    iget-object v0, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->NOT_CONSIDERED:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    :cond_0
    return-object v0
.end method
