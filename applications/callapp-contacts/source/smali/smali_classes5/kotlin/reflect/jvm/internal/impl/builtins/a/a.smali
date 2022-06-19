.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a/a;
.super Lkotlin/reflect/jvm/internal/impl/resolve/e/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/a/a$a;

.field private static final d:Lkotlin/reflect/jvm/internal/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/a$a;

    const-string v0, "clone"

    .line 31
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(\"clone\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;->d:Lkotlin/reflect/jvm/internal/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/e;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    return-void
.end method

.method public static final synthetic b()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    .line 17
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;->d:Lkotlin/reflect/jvm/internal/impl/c/e;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            ">;"
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/e;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 22
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    .line 3017
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;->d:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 22
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;->create(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;

    move-result-object v0

    .line 3036
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/e;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 24
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v7

    .line 3071
    sget-object v1, Lkotlin/a/z;->a:Lkotlin/a/z;

    move-object v8, v1

    check-cast v8, Ljava/util/List;

    .line 4071
    sget-object v1, Lkotlin/a/z;->a:Lkotlin/a/z;

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 5036
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/e;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 24
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->g()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 25
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const/4 v6, 0x0

    move-object v5, v0

    .line 23
    invoke-virtual/range {v5 .. v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;

    .line 21
    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
