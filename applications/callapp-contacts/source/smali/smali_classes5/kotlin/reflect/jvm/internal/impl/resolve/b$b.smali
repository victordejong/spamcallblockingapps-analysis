.class final Lkotlin/reflect/jvm/internal/impl/resolve/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/resolve/b;

.field final synthetic b:Z

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

.field final synthetic d:Lkotlin/reflect/jvm/internal/impl/descriptors/a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/b;ZLkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b$b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/b;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b$b;->b:Z

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b$b;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b$b;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Z
    .locals 5

    const-string v0, "c1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 103
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p1

    .line 104
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p2

    .line 106
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-nez v0, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b$b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/b;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b$b;->b:Z

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/b$b$1;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b$b;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b$b;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/b$b$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, p2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a(Lkotlin/reflect/jvm/internal/impl/resolve/b;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ZLkotlin/jvm/functions/Function2;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
