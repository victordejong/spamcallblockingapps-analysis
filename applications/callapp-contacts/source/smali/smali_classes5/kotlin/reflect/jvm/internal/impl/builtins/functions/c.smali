.class public final Lkotlin/reflect/jvm/internal/impl/builtins/functions/c;
.super Lkotlin/reflect/jvm/internal/impl/resolve/e/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/functions/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/e;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            ">;"
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/e;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 28
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    .line 2034
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->b:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    .line 28
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/c$a;->a:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 3071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 30
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/functions/d$a;

    .line 3036
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/e;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 30
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/d$a;->a(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;Z)Lkotlin/reflect/jvm/internal/impl/builtins/functions/d;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/functions/d$a;

    .line 2036
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/e;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 29
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/d$a;->a(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;Z)Lkotlin/reflect/jvm/internal/impl/builtins/functions/d;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
