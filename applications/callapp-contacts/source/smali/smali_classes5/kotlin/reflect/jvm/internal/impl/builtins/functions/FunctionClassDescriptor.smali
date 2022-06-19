.class public final Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;,
        Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$a;

.field private static final i:Lkotlin/reflect/jvm/internal/impl/c/a;

.field private static final j:Lkotlin/reflect/jvm/internal/impl/c/a;


# instance fields
.field final b:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

.field final c:I

.field private final d:Lkotlin/reflect/jvm/internal/impl/f/n;

.field private final e:Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

.field private final f:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;

.field private final g:Lkotlin/reflect/jvm/internal/impl/builtins/functions/c;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$a;

    .line 135
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/a;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->m:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "Function"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->i:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 136
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/a;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->j:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "KFunction"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;I)V
    .locals 2

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionKind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p3, p4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->numberedClassName(I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    .line 32
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->d:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 33
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    .line 34
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->b:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    .line 35
    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->c:I

    .line 38
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;

    .line 39
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/c;

    invoke-direct {p2, p1, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/c;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/builtins/functions/c;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance p2, Lkotlin/f/c;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p4}, Lkotlin/f/c;-><init>(II)V

    check-cast p2, Ljava/lang/Iterable;

    .line 140
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 141
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    move-object p4, p2

    check-cast p4, Lkotlin/a/ag;

    invoke-virtual {p4}, Lkotlin/a/ag;->a()I

    move-result p4

    .line 53
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "P"

    invoke-static {v1, p4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p0, v0, p4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->a(Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;Lkotlin/reflect/jvm/internal/impl/types/Variance;Ljava/lang/String;)V

    .line 54
    sget-object p4, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_0
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const-string p3, "R"

    invoke-static {p1, p0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->a(Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;Lkotlin/reflect/jvm/internal/impl/types/Variance;Ljava/lang/String;)V

    .line 58
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a()Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 1

    .line 31
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->i:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object v0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/f/n;
    .locals 0

    .line 31
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->d:Lkotlin/reflect/jvm/internal/impl/f/n;

    return-object p0
.end method

.method private static final a(Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;Lkotlin/reflect/jvm/internal/impl/types/Variance;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/types/Variance;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->d:Lkotlin/reflect/jvm/internal/impl/f/n;

    const/4 v2, 0x0

    move-object v3, p2

    .line 47
    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->createWithDefaultBound(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/c/e;ILkotlin/reflect/jvm/internal/impl/f/n;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final synthetic b()Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 1

    .line 31
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object v0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ae;
    .locals 0

    .line 31
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 1

    .line 88
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getCompanionObjectDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic getConstructors()Ljava/util/Collection;
    .locals 1

    .line 2071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 31
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final bridge synthetic getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 1065
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    .line 31
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method public final getDeclaredTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->h:Ljava/util/List;

    return-object v0
.end method

.method public final getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 1

    .line 75
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object v0
.end method

.method public final getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 1

    .line 76
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object v0
.end method

.method public final bridge synthetic getSealedSubclasses()Ljava/util/Collection;
    .locals 1

    .line 3071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 31
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;
    .locals 2

    .line 89
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const-string v1, "NO_SOURCE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    .line 1067
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;

    .line 31
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method

.method public final getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 1

    .line 69
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    return-object v0
.end method

.method public final synthetic getUnsubstitutedMemberScope(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/builtins/functions/c;

    .line 31
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object p1
.end method

.method public final bridge synthetic getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 2

    .line 78
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const-string v1, "PUBLIC"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isActual()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isCompanionObject()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isExpect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isExternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isFun()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isInline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isInner()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 132
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
