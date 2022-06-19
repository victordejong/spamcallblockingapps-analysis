.class final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/descriptors/c;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;Lkotlin/reflect/jvm/internal/impl/descriptors/c;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 10

    .line 1070
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

    .line 1071
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

    .line 2051
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->c:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 1072
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

    .line 2052
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 1073
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 1074
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

    move-object v4, v0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    .line 1075
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v5

    .line 1076
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v6

    const-string v0, "underlyingConstructorDescriptor.kind"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

    .line 3052
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 1077
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object v7

    const-string v0, "typeAliasDescriptor.source"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v0, v9

    .line 1070
    invoke-direct/range {v0 .. v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1078
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 1080
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$a;

    .line 4052
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 4167
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ax;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    .line 1084
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v1

    move-object v2, v1

    .line 5052
    :goto_0
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 1085
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v3

    .line 1086
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->getValueParameters()Ljava/util/List;

    move-result-object v5

    .line 1087
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    .line 1088
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    .line 6052
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 1089
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v8

    move-object v0, v9

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    .line 1082
    invoke-virtual/range {v0 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    return-object v9
.end method
