.class public Lkotlin/reflect/jvm/internal/a;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/j<",
        "Lkotlin/reflect/jvm/internal/f<",
        "*>;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0010\u0018\u00002\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J!\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H\u0016\u00a2\u0006\u0002\u0010\u000bJ!\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0008\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0003H\u0016\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;",
        "Lkotlin/reflect/jvm/internal/KCallableImpl;",
        "",
        "container",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V",
        "visitFunctionDescriptor",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;",
        "data",
        "(Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;",
        "visitPropertyDescriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "(Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;",
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
.field private final a:Lkotlin/reflect/jvm/internal/k;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/k;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/j;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/a;->a:Lkotlin/reflect/jvm/internal/k;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 222
    check-cast p2, Lkotlin/v;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1225
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1226
    :goto_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr p2, v0

    .line 1229
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->at_()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    .line 1232
    new-instance p2, Lkotlin/reflect/jvm/internal/o;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a;->a:Lkotlin/reflect/jvm/internal/k;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/o;-><init>(Lkotlin/reflect/jvm/internal/k;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/f;

    return-object p2

    .line 1231
    :cond_2
    new-instance p2, Lkotlin/reflect/jvm/internal/n;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a;->a:Lkotlin/reflect/jvm/internal/k;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/n;-><init>(Lkotlin/reflect/jvm/internal/k;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/f;

    return-object p2

    .line 1230
    :cond_3
    new-instance p2, Lkotlin/reflect/jvm/internal/m;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a;->a:Lkotlin/reflect/jvm/internal/k;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/m;-><init>(Lkotlin/reflect/jvm/internal/k;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/f;

    return-object p2

    :cond_4
    if-eqz p2, :cond_6

    if-eq p2, v1, :cond_5

    .line 1237
    new-instance p2, Lkotlin/reflect/jvm/internal/t;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a;->a:Lkotlin/reflect/jvm/internal/k;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/t;-><init>(Lkotlin/reflect/jvm/internal/k;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/f;

    return-object p2

    .line 1236
    :cond_5
    new-instance p2, Lkotlin/reflect/jvm/internal/s;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a;->a:Lkotlin/reflect/jvm/internal/k;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/s;-><init>(Lkotlin/reflect/jvm/internal/k;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/f;

    return-object p2

    .line 1235
    :cond_6
    new-instance p2, Lkotlin/reflect/jvm/internal/r;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a;->a:Lkotlin/reflect/jvm/internal/k;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/r;-><init>(Lkotlin/reflect/jvm/internal/k;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/f;

    return-object p2
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 222
    check-cast p2, Lkotlin/v;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2245
    new-instance p2, Lkotlin/reflect/jvm/internal/l;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a;->a:Lkotlin/reflect/jvm/internal/k;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/l;-><init>(Lkotlin/reflect/jvm/internal/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/f;

    return-object p2
.end method
