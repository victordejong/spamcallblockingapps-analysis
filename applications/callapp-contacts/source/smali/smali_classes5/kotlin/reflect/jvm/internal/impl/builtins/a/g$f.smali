.class final Lkotlin/reflect/jvm/internal/impl/builtins/a/g$f;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/descriptors/d;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$f;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    .line 1178
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 1179
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/a/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

    move-object v9, v2

    const-string v3, "EMPTY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1180
    iget-object v15, v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$f;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const-string v3, "javaResolverCache"

    .line 1178
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 1305
    iget-object v13, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 2112
    iget-object v12, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 1305
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3070
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-object v2, v11

    .line 3071
    iget-object v3, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    iget-object v4, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/n;

    iget-object v5, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    iget-object v6, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

    .line 3072
    iget-object v7, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->e:Lkotlin/reflect/jvm/internal/impl/load/java/a/j;

    iget-object v8, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    .line 3073
    iget-object v10, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->h:Lkotlin/reflect/jvm/internal/impl/load/java/a/f;

    iget-object v0, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->i:Lkotlin/reflect/jvm/internal/impl/resolve/d/a;

    move-object/from16 v25, v1

    move-object v1, v11

    move-object v11, v0

    iget-object v0, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    move-object/from16 v26, v1

    move-object v1, v12

    move-object v12, v0

    .line 3074
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/i;

    move-object/from16 v27, v13

    move-object v13, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->l:Lkotlin/reflect/jvm/internal/impl/load/kotlin/u;

    move-object/from16 v28, v14

    move-object v14, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->m:Lkotlin/reflect/jvm/internal/impl/descriptors/aw;

    move-object/from16 v29, v15

    move-object v15, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->n:Lkotlin/reflect/jvm/internal/impl/a/a/c;

    move-object/from16 v16, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-object/from16 v17, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->p:Lkotlin/reflect/jvm/internal/impl/builtins/i;

    move-object/from16 v18, v0

    .line 3075
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->q:Lkotlin/reflect/jvm/internal/impl/load/java/c;

    move-object/from16 v19, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

    move-object/from16 v20, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->s:Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-object/from16 v21, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->t:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;

    move-object/from16 v22, v0

    .line 3076
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    move-object/from16 v23, v0

    .line 3077
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->v:Lkotlin/reflect/jvm/internal/impl/utils/e;

    move-object/from16 v24, v0

    .line 3070
    invoke-direct/range {v2 .. v24}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/load/java/n;Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;Lkotlin/reflect/jvm/internal/impl/load/java/a/j;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/load/java/a/g;Lkotlin/reflect/jvm/internal/impl/load/java/a/f;Lkotlin/reflect/jvm/internal/impl/resolve/d/a;Lkotlin/reflect/jvm/internal/impl/load/java/c/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/u;Lkotlin/reflect/jvm/internal/impl/descriptors/aw;Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/builtins/i;Lkotlin/reflect/jvm/internal/impl/load/java/c;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;Lkotlin/reflect/jvm/internal/impl/load/java/o;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/utils/e;)V

    const-string v0, "<this>"

    move-object/from16 v1, v27

    .line 1305
    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    move-object/from16 v2, v26

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3189
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 4113
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;

    .line 4114
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->c:Lkotlin/Lazy;

    .line 3189
    invoke-direct {v0, v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;Lkotlin/Lazy;)V

    .line 1306
    invoke-virtual/range {v25 .. v25}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v1

    const-string v2, "containingDeclaration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v25

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    move-object/from16 v4, v28

    move-object/from16 v3, v29

    .line 1304
    invoke-direct {v4, v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    .line 1178
    move-object v14, v4

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object v14
.end method
