.class public final Lkotlin/reflect/jvm/internal/impl/load/java/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final b:Ljava/lang/String;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/c/e;

.field public static final d:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final e:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final f:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final g:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final h:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final j:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final k:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final l:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final m:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final n:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final o:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final p:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final q:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final r:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final s:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final t:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final u:Lkotlin/reflect/jvm/internal/impl/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.Metadata"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->b:Ljava/lang/String;

    const-string v0, "value"

    .line 51
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 53
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-class v1, Ljava/lang/annotation/Target;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 54
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-class v1, Ljava/lang/annotation/Retention;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->e:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 55
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-class v1, Ljava/lang/Deprecated;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->f:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 56
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-class v1, Ljava/lang/annotation/Documented;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->g:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 57
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "java.lang.annotation.Repeatable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->h:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 59
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "org.jetbrains.annotations.NotNull"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->i:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 60
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "org.jetbrains.annotations.Nullable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->j:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 61
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "org.jetbrains.annotations.Mutable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->k:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 62
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "org.jetbrains.annotations.ReadOnly"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->l:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 64
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.annotations.jvm.ReadOnly"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->m:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 65
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.annotations.jvm.Mutable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->n:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 67
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.jvm.PurelyImplements"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->o:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 69
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.jvm.internal"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->p:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 72
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.jvm.internal.EnhancedNullability"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->q:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 73
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.jvm.internal.EnhancedMutability"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->r:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 75
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.annotations.jvm.internal.ParameterName"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->s:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 76
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.annotations.jvm.internal.DefaultValue"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->t:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 77
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.annotations.jvm.internal.DefaultNull"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->u:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-void
.end method
