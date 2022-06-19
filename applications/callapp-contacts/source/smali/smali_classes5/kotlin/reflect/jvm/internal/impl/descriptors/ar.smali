.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/ar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/ar$a;

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
.field private final c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

.field private final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

.field private final f:Lkotlin/reflect/jvm/internal/impl/f/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ar$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ar$a;

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 21
    new-instance v1, Lkotlin/jvm/internal/aa;

    const-class v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "scopeForOwnerModule"

    const-string v4, "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/internal/z;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->b:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Lkotlin/reflect/jvm/internal/impl/f/n;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;",
            "+TT;>;",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 18
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->d:Lkotlin/jvm/functions/Function1;

    .line 19
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->e:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    .line 21
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ar$c;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ar$c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ar;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/ar;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 15
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->d:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->b:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/descriptors/ar;)Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;
    .locals 0

    .line 15
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->e:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;",
            ")TT;"
        }
    .end annotation

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;->isRefinementNeededForModule(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    const-string v1, "classDescriptor.typeConstructor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;->isRefinementNeededForTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p1

    return-object p1

    .line 43
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ar$b;

    invoke-direct {v1, p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ar$b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ar;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;->getOrPutScopeForClass(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p1

    return-object p1
.end method
