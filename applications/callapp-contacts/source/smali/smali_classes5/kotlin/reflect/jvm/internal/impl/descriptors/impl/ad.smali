.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$a;

.field static final synthetic b:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final c:Lkotlin/reflect/jvm/internal/impl/f/n;

.field final d:Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

.field private final e:Lkotlin/reflect/jvm/internal/impl/f/j;

.field private f:Lkotlin/reflect/jvm/internal/impl/descriptors/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$a;

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 69
    new-instance v1, Lkotlin/jvm/internal/aa;

    const-class v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "withDispatchReceiver"

    const-string v4, "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/internal/z;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->b:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V
    .locals 7

    .line 59
    move-object v1, p2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-object v2, p4

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    const-string p4, "<init>"

    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/c/e;->c(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    move-object v0, p0

    move-object v3, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    .line 51
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->c:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 52
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 62
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->isActual()Z

    move-result p2

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->setActual(Z)V

    .line 69
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;

    invoke-direct {p2, p0, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;Lkotlin/reflect/jvm/internal/impl/descriptors/c;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/j;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->e:Lkotlin/reflect/jvm/internal/impl/f/j;

    .line 94
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    return-void
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;
    .locals 1

    const-string v0, "newOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v0

    .line 138
    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setOwner(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    .line 139
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setModality(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    .line 140
    invoke-interface {p1, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    .line 141
    invoke-interface {p1, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setKind(Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    .line 142
    invoke-interface {p1, p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setCopyOverrides(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    .line 137
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    return-object p1
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;
    .locals 2

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-super {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

    .line 123
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    const-string v1, "create(substitutedTypeAliasConstructor.returnType)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3094
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 124
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 126
    :cond_0
    iput-object v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 127
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    return-object p1
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 1

    .line 94
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    return-object v0
.end method

.method public final bridge synthetic b()Lkotlin/reflect/jvm/internal/impl/descriptors/h;
    .locals 1

    .line 4052
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 50
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    return-object v0
.end method

.method public final synthetic b(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/j;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    return-object p1
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 2

    .line 2094
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 104
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    const-string v1, "underlyingConstructorDescriptor.constructedClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic copy(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    return-object p1
.end method

.method public final synthetic copy(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/w;
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    return-object p1
.end method

.method protected final synthetic createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;
    .locals 8

    const-string p2, "newOwner"

    .line 50
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "annotations"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "source"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9153
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, p2, :cond_1

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    sget-boolean v2, Lkotlin/x;->a:Z

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    .line 9154
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Creating a type alias constructor that is not a declaration: \ncopy from: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "\nnewOwner: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nkind: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9153
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :cond_3
    :goto_2
    if-nez p4, :cond_4

    const/4 v0, 0x1

    .line 9156
    :cond_4
    sget-boolean p1, Lkotlin/x;->a:Z

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, "Renaming type alias constructor: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 9157
    :cond_6
    :goto_3
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

    .line 9158
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->c:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 10052
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 10094
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 9161
    move-object v4, p0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    .line 9163
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-object v0, p1

    move-object v5, p5

    move-object v7, p6

    .line 9157
    invoke-direct/range {v0 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    .line 50
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    return-object p1
.end method

.method public final d()Z
    .locals 1

    .line 1094
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 98
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->d()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 5052
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 50
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method public final bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .locals 1

    .line 7110
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    .line 50
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    return-object v0
.end method

.method public final bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 1

    .line 6110
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    .line 50
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    return-object v0
.end method

.method public final bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 8110
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    .line 50
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method public final bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/n;
    .locals 1

    .line 9110
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    .line 50
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    return-object v0
.end method

.method public final bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;
    .locals 1

    .line 5110
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    .line 50
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    return-object v0
.end method

.method public final getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    .line 107
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final synthetic substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/l;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/l;

    return-object p1
.end method

.method public final synthetic substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/w;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    return-object p1
.end method
