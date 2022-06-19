.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/f/n;

.field public final b:Lkotlin/reflect/jvm/internal/impl/load/java/n;

.field public final c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

.field public final d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

.field public final e:Lkotlin/reflect/jvm/internal/impl/load/java/a/j;

.field public final f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

.field public final g:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

.field public final h:Lkotlin/reflect/jvm/internal/impl/load/java/a/f;

.field public final i:Lkotlin/reflect/jvm/internal/impl/resolve/d/a;

.field public final j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

.field public final k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/i;

.field public final l:Lkotlin/reflect/jvm/internal/impl/load/kotlin/u;

.field public final m:Lkotlin/reflect/jvm/internal/impl/descriptors/aw;

.field public final n:Lkotlin/reflect/jvm/internal/impl/a/a/c;

.field public final o:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

.field public final p:Lkotlin/reflect/jvm/internal/impl/builtins/i;

.field public final q:Lkotlin/reflect/jvm/internal/impl/load/java/c;

.field public final r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

.field public final s:Lkotlin/reflect/jvm/internal/impl/load/java/o;

.field public final t:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;

.field public final u:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

.field public final v:Lkotlin/reflect/jvm/internal/impl/utils/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/load/java/n;Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;Lkotlin/reflect/jvm/internal/impl/load/java/a/j;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/load/java/a/g;Lkotlin/reflect/jvm/internal/impl/load/java/a/f;Lkotlin/reflect/jvm/internal/impl/resolve/d/a;Lkotlin/reflect/jvm/internal/impl/load/java/c/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/u;Lkotlin/reflect/jvm/internal/impl/descriptors/aw;Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/builtins/i;Lkotlin/reflect/jvm/internal/impl/load/java/c;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;Lkotlin/reflect/jvm/internal/impl/load/java/o;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/utils/e;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signaturePropagator"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaResolverCache"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaPropertyInitializerEvaluator"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElementFactory"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleClassResolver"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packagePartProvider"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertypeLoopChecker"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectionTypes"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationTypeQualifierResolver"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureEnhancement"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaClassesTracker"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 45
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 46
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/n;

    .line 47
    iput-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    .line 48
    iput-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

    .line 49
    iput-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->e:Lkotlin/reflect/jvm/internal/impl/load/java/a/j;

    .line 50
    iput-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    .line 51
    iput-object v7, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->g:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

    .line 52
    iput-object v8, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->h:Lkotlin/reflect/jvm/internal/impl/load/java/a/f;

    .line 53
    iput-object v9, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->i:Lkotlin/reflect/jvm/internal/impl/resolve/d/a;

    .line 54
    iput-object v10, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 55
    iput-object v11, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/i;

    .line 56
    iput-object v12, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->l:Lkotlin/reflect/jvm/internal/impl/load/kotlin/u;

    .line 57
    iput-object v13, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->m:Lkotlin/reflect/jvm/internal/impl/descriptors/aw;

    .line 58
    iput-object v14, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->n:Lkotlin/reflect/jvm/internal/impl/a/a/c;

    move-object/from16 v1, p15

    .line 59
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 60
    iput-object v15, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->p:Lkotlin/reflect/jvm/internal/impl/builtins/i;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 61
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->q:Lkotlin/reflect/jvm/internal/impl/load/java/c;

    .line 62
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    .line 63
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->s:Lkotlin/reflect/jvm/internal/impl/load/java/o;

    .line 64
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->t:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    .line 65
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 66
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->v:Lkotlin/reflect/jvm/internal/impl/utils/e;

    return-void
.end method
