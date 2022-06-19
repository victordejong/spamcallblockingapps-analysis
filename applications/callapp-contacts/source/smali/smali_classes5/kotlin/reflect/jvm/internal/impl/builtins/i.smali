.class public final Lkotlin/reflect/jvm/internal/impl/builtins/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/i$a;,
        Lkotlin/reflect/jvm/internal/impl/builtins/i$b;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/i$b;

.field public static final synthetic b:[Lkotlin/reflect/KProperty;
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
.field public final c:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

.field public final d:Lkotlin/Lazy;

.field public final e:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

.field private final f:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

.field private final g:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

.field private final h:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

.field private final i:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

.field private final j:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

.field private final k:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

.field private final l:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lkotlin/reflect/jvm/internal/impl/builtins/i;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/i$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/i$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/i;->a:Lkotlin/reflect/jvm/internal/impl/builtins/i$b;

    const/16 v1, 0x9

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 45
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "kClass"

    const-string v5, "getKClass()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 46
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "kProperty"

    const-string v5, "getKProperty()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 47
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "kProperty0"

    const-string v5, "getKProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 48
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "kProperty1"

    const-string v5, "getKProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 49
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "kProperty2"

    const-string v5, "getKProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 50
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "kMutableProperty0"

    const-string v5, "getKMutableProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 51
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "kMutableProperty1"

    const-string v5, "getKMutableProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 52
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "kMutableProperty2"

    const-string v4, "getKMutableProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/i;->b:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)V
    .locals 2

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    .line 26
    sget-object p2, Lkotlin/l;->PUBLICATION:Lkotlin/l;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/i$c;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/i$c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/h;->a(Lkotlin/l;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i;->d:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;-><init>(I)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i;->e:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    .line 46
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;-><init>(I)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i;->f:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    .line 47
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;-><init>(I)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i;->g:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    .line 48
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;-><init>(I)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i;->h:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    .line 49
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;-><init>(I)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i;->i:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    .line 50
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;-><init>(I)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i;->j:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    .line 51
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;-><init>(I)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i;->k:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    .line 52
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    invoke-direct {p1, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/i$a;-><init>(I)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i;->l:Lkotlin/reflect/jvm/internal/impl/builtins/i$a;

    return-void
.end method
