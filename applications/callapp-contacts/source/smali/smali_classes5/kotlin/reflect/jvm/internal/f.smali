.class public abstract Lkotlin/reflect/jvm/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KCallable;
.implements Lkotlin/reflect/jvm/internal/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KCallable<",
        "TR;>;",
        "Lkotlin/reflect/jvm/internal/aa;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008 \u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J%\u00106\u001a\u00028\u00002\u0016\u00107\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010908\"\u0004\u0018\u000109H\u0016\u00a2\u0006\u0002\u0010:J#\u0010;\u001a\u00028\u00002\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u0001090<H\u0002\u00a2\u0006\u0002\u0010=J#\u0010>\u001a\u00028\u00002\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u0001090<H\u0016\u00a2\u0006\u0002\u0010=J3\u0010?\u001a\u00028\u00002\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u0001090<2\u000c\u0010@\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010AH\u0000\u00a2\u0006\u0004\u0008B\u0010CJ\u0010\u0010D\u001a\u0002092\u0006\u0010E\u001a\u00020,H\u0002J\n\u0010F\u001a\u0004\u0018\u00010GH\u0002R(\u0010\u0005\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0008 \t*\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00070\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\n\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000c \t*\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b0\u000b0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u000e0\u000e0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u000f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0010 \t*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00070\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u0019X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0017R\u0012\u0010\u001e\u001a\u00020\u001fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010$R\u0014\u0010%\u001a\u00020#8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010$R\u0012\u0010&\u001a\u00020#X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010$R\u0014\u0010\'\u001a\u00020#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010$R\u0014\u0010(\u001a\u00020#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010$R\u001a\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u0013R\u0014\u0010+\u001a\u00020,8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u001a\u0010/\u001a\u0008\u0012\u0004\u0012\u0002000\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u0013R\u0016\u00102\u001a\u0004\u0018\u0001038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105\u00a8\u0006H"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KCallableImpl;",
        "R",
        "Lkotlin/reflect/KCallable;",
        "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;",
        "()V",
        "_annotations",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "_parameters",
        "Ljava/util/ArrayList;",
        "Lkotlin/reflect/KParameter;",
        "_returnType",
        "Lkotlin/reflect/jvm/internal/KTypeImpl;",
        "_typeParameters",
        "Lkotlin/reflect/jvm/internal/KTypeParameterImpl;",
        "annotations",
        "getAnnotations",
        "()Ljava/util/List;",
        "caller",
        "Lkotlin/reflect/jvm/internal/calls/Caller;",
        "getCaller",
        "()Lkotlin/reflect/jvm/internal/calls/Caller;",
        "container",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "getContainer",
        "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "defaultCaller",
        "getDefaultCaller",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
        "getDescriptor",
        "()Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;",
        "isAbstract",
        "",
        "()Z",
        "isAnnotationConstructor",
        "isBound",
        "isFinal",
        "isOpen",
        "parameters",
        "getParameters",
        "returnType",
        "Lkotlin/reflect/KType;",
        "getReturnType",
        "()Lkotlin/reflect/KType;",
        "typeParameters",
        "Lkotlin/reflect/KTypeParameter;",
        "getTypeParameters",
        "visibility",
        "Lkotlin/reflect/KVisibility;",
        "getVisibility",
        "()Lkotlin/reflect/KVisibility;",
        "call",
        "args",
        "",
        "",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "callAnnotationConstructor",
        "",
        "(Ljava/util/Map;)Ljava/lang/Object;",
        "callBy",
        "callDefaultMethod",
        "continuationArgument",
        "Lkotlin/coroutines/Continuation;",
        "callDefaultMethod$kotlin_reflection",
        "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "defaultEmptyArray",
        "type",
        "extractContinuationArgument",
        "Ljava/lang/reflect/Type;",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/ad$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ad$a<",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/reflect/jvm/internal/ad$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ad$a<",
            "Ljava/util/ArrayList<",
            "Lkotlin/reflect/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/reflect/jvm/internal/ad$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ad$a<",
            "Lkotlin/reflect/jvm/internal/w;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/reflect/jvm/internal/ad$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ad$a<",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/y;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lkotlin/reflect/jvm/internal/f$a;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/f$a;-><init>(Lkotlin/reflect/jvm/internal/f;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ad;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$a;

    move-result-object v0

    const-string v1, "ReflectProperties.lazySo\u2026or.computeAnnotations() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/f;->a:Lkotlin/reflect/jvm/internal/ad$a;

    .line 40
    new-instance v0, Lkotlin/reflect/jvm/internal/f$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/f$b;-><init>(Lkotlin/reflect/jvm/internal/f;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ad;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$a;

    move-result-object v0

    const-string v1, "ReflectProperties.lazySo\u2026ze()\n        result\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/f;->b:Lkotlin/reflect/jvm/internal/ad$a;

    .line 75
    new-instance v0, Lkotlin/reflect/jvm/internal/f$c;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/f$c;-><init>(Lkotlin/reflect/jvm/internal/f;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ad;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$a;

    move-result-object v0

    const-string v1, "ReflectProperties.lazySo\u2026eturnType\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/f;->c:Lkotlin/reflect/jvm/internal/ad$a;

    .line 84
    new-instance v0, Lkotlin/reflect/jvm/internal/f$d;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/f$d;-><init>(Lkotlin/reflect/jvm/internal/f;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ad;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$a;

    move-result-object v0

    const-string v1, "ReflectProperties.lazySo\u2026this, descriptor) }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/f;->d:Lkotlin/reflect/jvm/internal/ad$a;

    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/k;",
            "+",
            "Ljava/lang/Object;",
            ">;)TR;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/k;

    if-eqz v6, :cond_1

    .line 125
    rem-int/lit8 v10, v6, 0x20

    if-nez v10, :cond_1

    .line 126
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 131
    :cond_1
    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 132
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    :cond_2
    invoke-interface {v8}, Lkotlin/reflect/k;->d()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 137
    invoke-interface {v8}, Lkotlin/reflect/k;->b()Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/aj;->a(Lkotlin/reflect/KType;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v8}, Lkotlin/reflect/k;->b()Lkotlin/reflect/KType;

    move-result-object v5

    const-string v9, "$this$javaType"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    move-object v9, v5

    check-cast v9, Lkotlin/reflect/jvm/internal/w;

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/w;->am_()Ljava/lang/reflect/Type;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-static {v5}, Lkotlin/reflect/w;->a(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 137
    :cond_4
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/aj;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    :goto_1
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    rem-int/lit8 v5, v6, 0x20

    shl-int v5, v3, v5

    or-int/2addr v5, v7

    move v7, v5

    const/4 v5, 0x1

    goto :goto_2

    .line 141
    :cond_5
    invoke-interface {v8}, Lkotlin/reflect/k;->e()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 142
    invoke-interface {v8}, Lkotlin/reflect/k;->b()Lkotlin/reflect/KType;

    move-result-object v9

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/f;->a(Lkotlin/reflect/KType;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :goto_2
    invoke-interface {v8}, Lkotlin/reflect/k;->c()Lkotlin/reflect/k$a;

    move-result-object v8

    sget-object v9, Lkotlin/reflect/k$a;->VALUE:Lkotlin/reflect/k$a;

    if-ne v8, v9, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 145
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No argument provided for a required parameter: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_7
    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    if-nez v5, :cond_8

    .line 159
    check-cast v1, Ljava/util/Collection;

    new-array v0, v4, [Ljava/lang/Object;

    .line 227
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/f;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 162
    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->d()Lkotlin/reflect/jvm/internal/a/d;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 166
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :try_start_0
    check-cast v1, Ljava/util/Collection;

    new-array v2, v4, [Ljava/lang/Object;

    .line 231
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 173
    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/a/d;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 231
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 233
    new-instance v0, Lkotlin/reflect/full/IllegalCallableAccessException;

    invoke-direct {v0, p1}, Lkotlin/reflect/full/IllegalCallableAccessException;-><init>(Ljava/lang/IllegalAccessException;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 164
    :cond_a
    new-instance p1, Lkotlin/reflect/jvm/internal/ab;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This callable does not support a default call: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private static a(Lkotlin/reflect/KType;)Ljava/lang/Object;
    .locals 3

    .line 198
    invoke-static {p0}, Lkotlin/reflect/jvm/a;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/c;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/a;->a(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "type.jvmErasure.java.run\u2026\"\n            )\n        }"

    .line 198
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 200
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/ab;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot instantiate the default empty array of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", because it is not an array type"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/f;)Ljava/lang/reflect/Type;
    .locals 3

    .line 1206
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isSuspend()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1208
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->c()Lkotlin/reflect/jvm/internal/a/d;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/a/d;->c()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/a/n;->h(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_1

    move-object p0, v2

    :cond_1
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p0, :cond_2

    .line 1209
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    const-class v1, Lkotlin/c/d;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1211
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "continuationType.actualTypeArguments"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/a/i;->f([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_3

    move-object p0, v2

    :cond_3
    check-cast p0, Ljava/lang/reflect/WildcardType;

    if-eqz p0, :cond_4

    .line 1213
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lkotlin/a/i;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    :cond_4
    return-object v2
.end method

.method private final b(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/k;",
            "+",
            "Ljava/lang/Object;",
            ">;)TR;"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->getParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 236
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 237
    check-cast v2, Lkotlin/reflect/k;

    .line 180
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Annotation argument value cannot be null ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 183
    :cond_1
    invoke-interface {v2}, Lkotlin/reflect/k;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 184
    :cond_2
    invoke-interface {v2}, Lkotlin/reflect/k;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lkotlin/reflect/k;->b()Lkotlin/reflect/KType;

    move-result-object v2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/f;->a(Lkotlin/reflect/KType;)Ljava/lang/Object;

    move-result-object v3

    .line 185
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No argument provided for a required parameter: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 238
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 189
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->d()Lkotlin/reflect/jvm/internal/a/d;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 193
    :try_start_0
    check-cast v1, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 242
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 193
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/a/d;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 242
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 244
    new-instance v0, Lkotlin/reflect/full/IllegalCallableAccessException;

    invoke-direct {v0, p1}, Lkotlin/reflect/full/IllegalCallableAccessException;-><init>(Ljava/lang/IllegalAccessException;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 189
    :cond_6
    new-instance p1, Lkotlin/reflect/jvm/internal/ab;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This callable does not support a default call: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public abstract b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;
.end method

.method public abstract c()Lkotlin/reflect/jvm/internal/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/a/d<",
            "*>;"
        }
    .end annotation
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->c()Lkotlin/reflect/jvm/internal/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/a/d;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 224
    new-instance v0, Lkotlin/reflect/full/IllegalCallableAccessException;

    invoke-direct {v0, p1}, Lkotlin/reflect/full/IllegalCallableAccessException;-><init>(Ljava/lang/IllegalAccessException;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/k;",
            "+",
            "Ljava/lang/Object;",
            ">;)TR;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/f;->b(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/f;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract d()Lkotlin/reflect/jvm/internal/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/a/d<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract e()Lkotlin/reflect/jvm/internal/k;
.end method

.method public abstract f()Z
.end method

.method protected final g()Z
    .locals 2

    .line 104
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->e()Lkotlin/reflect/jvm/internal/k;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/k;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/f;->a:Lkotlin/reflect/jvm/internal/ad$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_annotations()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/k;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/f;->b:Lkotlin/reflect/jvm/internal/ad$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_parameters()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Lkotlin/reflect/KType;
    .locals 2

    .line 82
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/f;->c:Lkotlin/reflect/jvm/internal/ad$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_returnType()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/KType;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/p;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/f;->d:Lkotlin/reflect/jvm/internal/ad$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_typeParameters()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/KVisibility;
    .locals 2

    .line 92
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    const-string v1, "descriptor.visibility"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/aj;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/KVisibility;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFinal()Z
    .locals 2

    .line 95
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .line 98
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
