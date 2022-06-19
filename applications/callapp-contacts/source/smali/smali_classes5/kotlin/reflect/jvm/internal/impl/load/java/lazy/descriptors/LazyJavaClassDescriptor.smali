.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$a;,
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$a;

.field private static final q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

.field public final c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field private final d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field private final e:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

.field private final f:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

.field private final g:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

.field private final h:Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

.field private final i:Z

.field private final j:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;

.field private final k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

.field private final l:Lkotlin/reflect/jvm/internal/impl/descriptors/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ar<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lkotlin/reflect/jvm/internal/impl/resolve/e/f;

.field private final n:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;

.field private final o:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

.field private final p:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$a;

    const-string v2, "equals"

    const-string v3, "hashCode"

    const-string v4, "getClass"

    const-string v5, "wait"

    const-string v6, "notify"

    const-string v7, "notifyAll"

    const-string v8, "toString"

    .line 57
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/ap;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->q:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V
    .locals 11

    const-string v0, "outerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2045
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 50
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    .line 2112
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3054
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 51
    move-object v1, p3

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 49
    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Z)V

    .line 45
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 47
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    .line 48
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 60
    move-object p2, p0

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-object v0, p3

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/y;

    const/4 v1, 0x4

    invoke-static {p1, p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/f;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 3112
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 4051
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->g:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

    .line 63
    invoke-interface {p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/a/g;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)V

    .line 65
    sget-boolean p2, Lkotlin/x;->a:Z

    .line 71
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->j()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->l()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    goto :goto_0

    .line 74
    :cond_2
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    .line 70
    :goto_0
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    .line 78
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->k()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_6

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->l()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    .line 80
    :cond_3
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/y$a;

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->n()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->o()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {p2, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/y$a;->a(ZZ)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p2

    goto :goto_4

    .line 78
    :cond_6
    :goto_3
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    :goto_4
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    .line 82
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    .line 83
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->s()Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->p()Z

    move-result p2

    if-nez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_5

    :cond_7
    const/4 p2, 0x0

    :goto_5
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->i:Z

    .line 113
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;

    .line 117
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    move-object v10, p0

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz p4, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v4, v10

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    .line 120
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ar$a;

    .line 4127
    iget-object p4, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 5045
    iget-object p4, p4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 5112
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 6065
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 120
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->getKotlinTypeRefiner()Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$c;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$c;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, p4, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ar$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/ar;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ar;

    .line 130
    new-instance p4, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-direct {p4, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;)V

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/resolve/e/f;

    .line 133
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;

    invoke-direct {p2, p1, p3, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->n:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;

    .line 143
    check-cast p3, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-static {p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    .line 6127
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 7045
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 145
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$b;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->p:Lkotlin/reflect/jvm/internal/impl/f/i;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 44
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;
    .locals 0

    .line 44
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 0

    .line 44
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;
    .locals 0

    .line 44
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    return-object p0
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;
    .locals 1

    .line 140
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->getUnsubstitutedMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    .line 7083
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->b:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 141
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 1

    .line 143
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method

.method public final getCompanionObjectDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic getConstructors()Ljava/util/Collection;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

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

    .line 152
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->p:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 1

    .line 85
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object v0
.end method

.method public final getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 1

    .line 86
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object v0
.end method

.method public final getSealedSubclasses()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-ne v0, v1, :cond_3

    .line 185
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/load/java/a/k;ZLkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->m()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 333
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 332
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/d/j;

    .line 187
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 7124
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    .line 187
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    invoke-virtual {v5, v4, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/d/w;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v4

    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v5, :cond_1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_0

    .line 332
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 324
    check-cast v2, Ljava/util/Collection;

    return-object v2

    .line 8071
    :cond_3
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 190
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    .line 134
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->n:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method

.method public final getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 1

    .line 114
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    return-object v0
.end method

.method public final getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    .line 131
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/resolve/e/f;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method

.method public final bridge synthetic getUnsubstitutedMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    .line 8140
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->getUnsubstitutedMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    .line 44
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method

.method public final synthetic getUnsubstitutedMemberScope(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8128
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ar;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->a(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    .line 44
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object p1
.end method

.method public final getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 2

    .line 97
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->s()Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const-string v1, "{\n            JavaDescriptorVisibilities.PACKAGE_VISIBILITY\n        }"

    .line 97
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/z;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

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

    .line 104
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->i:Z

    return v0
.end method

.method public final isValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 193
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v0

    const-string v1, "Lazy Java class "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
