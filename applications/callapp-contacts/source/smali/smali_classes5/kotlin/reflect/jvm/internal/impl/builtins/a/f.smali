.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a/f;
.super Lkotlin/reflect/jvm/internal/impl/builtins/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;,
        Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;,
        Lkotlin/reflect/jvm/internal/impl/builtins/a/f$c;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;
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
.field public f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lkotlin/reflect/jvm/internal/impl/f/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 75
    new-instance v1, Lkotlin/jvm/internal/aa;

    const-class v2, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "customizer"

    const-string v4, "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/internal/z;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;)V

    .line 75
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/f;Lkotlin/reflect/jvm/internal/impl/f/n;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->g:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 88
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$c;->a:[I

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 92
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->a(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->a(Z)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/builtins/a/f;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 16
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->f:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/builtins/a/f;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/builtins/a/g;
    .locals 3

    .line 75
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->g:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;

    return-object v0
.end method

.method public final synthetic d()Ljava/lang/Iterable;
    .locals 8

    .line 1101
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->d()Ljava/lang/Iterable;

    move-result-object v0

    const-string v1, "super.getClassDescriptorFactories()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;

    .line 1143
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c:Lkotlin/reflect/jvm/internal/impl/f/n;

    if-nez v3, :cond_0

    const/4 v2, 0x5

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    const-string v2, "storageManager"

    .line 1101
    invoke-static {v3, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    move-result-object v2

    const-string v4, "builtInsModule"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lkotlin/a/n;->d(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
