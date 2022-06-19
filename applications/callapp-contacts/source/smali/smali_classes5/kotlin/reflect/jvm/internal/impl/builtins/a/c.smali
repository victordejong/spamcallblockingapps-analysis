.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Lkotlin/reflect/jvm/internal/impl/c/a;

.field private static final g:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final h:Lkotlin/reflect/jvm/internal/impl/c/a;

.field private static final i:Lkotlin/reflect/jvm/internal/impl/c/a;

.field private static final j:Lkotlin/reflect/jvm/internal/impl/c/a;

.field private static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/c/c;",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/c/c;",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/c/c;",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/c/c;",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/c/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->getClassNamePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->b:Ljava/lang/String;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->KFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->KFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->getClassNamePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->c:Ljava/lang/String;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->getClassNamePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->d:Ljava/lang/String;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->KSuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->KSuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->getClassNamePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->e:Ljava/lang/String;

    .line 27
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v3, "kotlin.jvm.functions.FunctionN"

    invoke-direct {v1, v3}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    const-string v3, "topLevel(FqName(\"kotlin.jvm.functions.FunctionN\"))"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->f:Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v3, "FUNCTION_N_CLASS_ID.asSingleFqName()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->g:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 29
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v3, "kotlin.reflect.KFunction"

    invoke-direct {v1, v3}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    const-string v3, "topLevel(FqName(\"kotlin.reflect.KFunction\"))"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->h:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 30
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v3, "kotlin.reflect.KClass"

    invoke-direct {v1, v3}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    const-string v3, "topLevel(FqName(\"kotlin.reflect.KClass\"))"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->i:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 31
    const-class v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->j:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->k:Ljava/util/HashMap;

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->l:Ljava/util/HashMap;

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->m:Ljava/util/HashMap;

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->n:Ljava/util/HashMap;

    const/16 v1, 0x8

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;

    .line 52
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->O:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "topLevel(FqNames.iterable)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->W:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 212
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v6

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v7

    const-string v8, "kotlinReadOnly.packageFqName"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7}, Lkotlin/reflect/jvm/internal/impl/c/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;Z)V

    .line 213
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;

    const-class v6, Ljava/lang/Iterable;

    .line 3017
    invoke-direct {v0, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    .line 213
    invoke-direct {v4, v6, v3, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    aput-object v4, v1, v7

    .line 53
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->N:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "topLevel(FqNames.iterator)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->V:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 214
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v6

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/reflect/jvm/internal/impl/c/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;Z)V

    .line 215
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;

    const-class v6, Ljava/util/Iterator;

    .line 4017
    invoke-direct {v0, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    .line 215
    invoke-direct {v4, v6, v3, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    const/4 v3, 0x1

    aput-object v4, v1, v3

    .line 54
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->P:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "topLevel(FqNames.collection)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->X:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 216
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v6

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/reflect/jvm/internal/impl/c/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;Z)V

    .line 217
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;

    const-class v6, Ljava/util/Collection;

    .line 5017
    invoke-direct {v0, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    .line 217
    invoke-direct {v4, v6, v3, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    const/4 v3, 0x2

    aput-object v4, v1, v3

    .line 55
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->Q:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "topLevel(FqNames.list)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->Y:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 218
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v6

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/reflect/jvm/internal/impl/c/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;Z)V

    .line 219
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;

    const-class v6, Ljava/util/List;

    .line 6017
    invoke-direct {v0, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    .line 219
    invoke-direct {v4, v6, v3, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    const/4 v3, 0x3

    aput-object v4, v1, v3

    .line 56
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->S:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "topLevel(FqNames.set)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->aa:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 220
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v6

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/reflect/jvm/internal/impl/c/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;Z)V

    .line 221
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;

    const-class v6, Ljava/util/Set;

    .line 7017
    invoke-direct {v0, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    .line 221
    invoke-direct {v4, v6, v3, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    const/4 v3, 0x4

    aput-object v4, v1, v3

    .line 57
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->R:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "topLevel(FqNames.listIterator)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->Z:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 222
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v6

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/reflect/jvm/internal/impl/c/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;Z)V

    .line 223
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;

    const-class v6, Ljava/util/ListIterator;

    .line 8017
    invoke-direct {v0, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    .line 223
    invoke-direct {v4, v6, v3, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    const/4 v3, 0x5

    aput-object v4, v1, v3

    .line 58
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->T:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "topLevel(FqNames.map)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->ab:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 224
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v6

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/reflect/jvm/internal/impl/c/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;Z)V

    .line 225
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;

    const-class v6, Ljava/util/Map;

    .line 9017
    invoke-direct {v0, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    .line 225
    invoke-direct {v4, v6, v3, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    const/4 v3, 0x6

    aput-object v4, v1, v3

    .line 60
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->T:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->U:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/c/b;->e()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "topLevel(FqNames.map).createNestedClassId(FqNames.mapEntry.shortName())"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->ac:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 226
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v6

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/reflect/jvm/internal/impl/c/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/b;Z)V

    .line 227
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;

    const-class v6, Ljava/util/Map$Entry;

    .line 10017
    invoke-direct {v0, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    .line 227
    invoke-direct {v4, v6, v3, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    const/4 v3, 0x7

    aput-object v4, v1, v3

    .line 51
    invoke-static {v1}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->o:Ljava/util/List;

    .line 65
    const-class v3, Ljava/lang/Object;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-direct {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/c;)V

    .line 66
    const-class v3, Ljava/lang/String;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->h:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-direct {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/c;)V

    .line 67
    const-class v3, Ljava/lang/CharSequence;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->g:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-direct {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/c;)V

    .line 68
    const-class v3, Ljava/lang/Throwable;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->u:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    .line 69
    const-class v3, Ljava/lang/Cloneable;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->d:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-direct {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/c;)V

    .line 70
    const-class v3, Ljava/lang/Number;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->r:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-direct {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/c;)V

    .line 71
    const-class v3, Ljava/lang/Comparable;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->v:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    .line 72
    const-class v3, Ljava/lang/Enum;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->s:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-direct {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/c;)V

    .line 73
    const-class v3, Ljava/lang/annotation/Annotation;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->E:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    .line 75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;

    .line 11000
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;->a:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 12000
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;->b:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 13000
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;->c:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 10161
    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    .line 10162
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v5

    const-string v6, "mutableClassId.asSingleFqName()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    .line 10164
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v3

    const-string v4, "readOnlyClassId.asSingleFqName()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10165
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10166
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->m:Ljava/util/HashMap;

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->b()Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v1

    const-string v6, "mutableClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10167
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->n:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/b;->b()Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v3

    const-string v5, "readOnlyFqName.toUnsafe()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->values()[Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 81
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v5

    const-string v6, "topLevel(jvmType.wrapperFqName)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/j;->a:Lkotlin/reflect/jvm/internal/impl/builtins/j;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/h;

    move-result-object v4

    const-string v6, "jvmType.primitiveType"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/j;->a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v4

    const-string v6, "topLevel(StandardNames.getPrimitiveFqName(jvmType.primitiveType))"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {v5, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    goto :goto_1

    .line 86
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/b;->a:Lkotlin/reflect/jvm/internal/impl/builtins/b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 88
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/c/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "kotlin.jvm.internal."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "CompanionObject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "topLevel(FqName(\"kotlin.jvm.internal.\" + classId.shortClassName.asString() + \"CompanionObject\"))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/c/g;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    const-string v4, "classId.createNestedClassId(SpecialNames.DEFAULT_NAME_FOR_COMPANION_OBJECT)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    add-int/lit8 v1, v0, 0x1

    .line 94
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kotlin.jvm.functions.Function"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "topLevel(FqName(\"kotlin.jvm.functions.Function$i\"))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j;->a:Lkotlin/reflect/jvm/internal/impl/builtins/j;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/j;->b(I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    .line 95
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/c/b;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->h:Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-static {v3, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    const/16 v0, 0x17

    if-lt v1, v0, :cond_4

    :goto_4
    add-int/lit8 v0, v7, 0x1

    .line 98
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->KSuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/c/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->getClassNamePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->h:Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    const/16 v1, 0x16

    if-lt v0, v1, :cond_3

    .line 103
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->c:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/c;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    const-string v1, "nothing.toSafe()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

    const-class v2, Ljava/lang/Void;

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    return-void

    :cond_3
    move v7, v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto/16 :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/c/a;"
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lkotlin/x;->a:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Invalid class: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 203
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    .line 205
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    const-string v0, "topLevel(FqName(clazz.canonicalName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 207
    :cond_3
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    const-string v0, "classId(outer).createNestedClassId(Name.identifier(clazz.simpleName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->k:Ljava/util/HashMap;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/b;->b()Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/c;)Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 1

    const-string v0, "kotlinFqName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->f:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object p0

    .line 144
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->f:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object p0

    .line 145
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->h:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object p0

    .line 146
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->h:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object p0

    .line 147
    :cond_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object p0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 28
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->g:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method private final a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ")V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p2

    const-string v0, "topLevel(kotlinFqName)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    return-void
.end method

.method private final a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlin/reflect/jvm/internal/impl/c/c;",
            ")V"
        }
    .end annotation

    .line 176
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/c/c;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p2

    const-string v0, "kotlinFqName.toSafe()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/a;)V
    .locals 3

    .line 2184
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->k:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->b()Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v1

    const-string v2, "javaClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    const-string v0, "kotlinClassId.asSingleFqName()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/a;)V
    .locals 2

    .line 188
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->l:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/b;->b()Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object p0

    const-string v1, "kotlinFqNameUnsafe.toUnsafe()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/c/c;Ljava/lang/String;)Z
    .locals 3

    .line 151
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/c;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "kotlinFqName.asString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lkotlin/h/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    move-object p1, p0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x30

    .line 1829
    invoke-static {p1, v0, v2}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;CZ)Z

    move-result p1

    if-nez p1, :cond_1

    .line 153
    invoke-static {p0}, Lkotlin/h/p;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 154
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x17

    if-lt p0, p1, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->o:Ljava/util/List;

    return-object v0
.end method

.method public static b(Lkotlin/reflect/jvm/internal/impl/c/c;)Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 193
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->m:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object p0
.end method

.method public static c(Lkotlin/reflect/jvm/internal/impl/c/c;)Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 195
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->n:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object p0
.end method

.method public static d(Lkotlin/reflect/jvm/internal/impl/c/c;)Z
    .locals 2

    .line 197
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->m:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e(Lkotlin/reflect/jvm/internal/impl/c/c;)Z
    .locals 2

    .line 199
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->n:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
