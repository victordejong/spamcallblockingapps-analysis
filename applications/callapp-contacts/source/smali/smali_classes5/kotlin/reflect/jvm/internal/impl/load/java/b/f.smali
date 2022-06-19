.class public Lkotlin/reflect/jvm/internal/impl/load/java/b/f;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic b:Z = true


# instance fields
.field private c:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    return-void
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_2
    if-nez p5, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_3
    if-nez p6, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    .line 74
    :cond_4
    invoke-direct/range {p0 .. p6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->c:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    .line 75
    iput-boolean p7, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->d:Z

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Z)Lkotlin/reflect/jvm/internal/impl/load/java/b/f;
    .locals 9

    if-nez p0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_2
    if-nez p3, :cond_3

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    .line 86
    :cond_3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    const/4 v3, 0x0

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Z)V

    return-object v0
.end method

.method private static synthetic a(I)V
    .locals 11

    const/16 v0, 0x14

    const/16 v1, 0x11

    const/16 v2, 0xc

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v8, "containingDeclaration"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "enhancedReturnType"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "enhancedValueParametersData"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "newOwner"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    const-string v8, "unsubstitutedValueParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_7
    const-string v8, "typeParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_9
    const-string v8, "kind"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_a
    const-string v8, "name"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_b
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "enhance"

    const-string v8, "createSubstitutedCopy"

    const-string v9, "initialize"

    const/4 v10, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v10

    goto :goto_3

    :cond_2
    aput-object v7, v5, v10

    goto :goto_3

    :cond_3
    aput-object v8, v5, v10

    goto :goto_3

    :cond_4
    aput-object v9, v5, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_c
    aput-object v7, v5, v4

    goto :goto_4

    :pswitch_d
    aput-object v8, v5, v4

    goto :goto_4

    :pswitch_e
    aput-object v9, v5, v4

    goto :goto_4

    :pswitch_f
    const-string v6, "createJavaMethod"

    aput-object v6, v5, v4

    :goto_4
    :pswitch_10
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/n;)Lkotlin/reflect/jvm/internal/impl/load/java/b/b;
    .locals 1

    if-nez p3, :cond_0

    const/16 v0, 0x13

    .line 33
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    .line 3160
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->getValueParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/k;->a(Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/util/List;

    move-result-object p2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3163
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object p1

    .line 3168
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setValueParameters(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p2

    invoke-interface {p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p2

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setExtensionReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setDropOriginalInContainingParts()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setPreserveSourceElement()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    .line 3177
    sget-boolean p2, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->b:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "null after substitution while enhancing "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    .line 4027
    iget-object p2, p4, Lkotlin/n;->a:Ljava/lang/Object;

    .line 3180
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    .line 4028
    iget-object p3, p4, Lkotlin/n;->b:Ljava/lang/Object;

    .line 3180
    invoke-virtual {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->putInUserDataMap(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;Ljava/lang/Object;)V

    :cond_4
    if-nez p1, :cond_5

    const/16 p2, 0x14

    .line 3183
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_5
    return-object p1
.end method

.method public final a(ZZ)V
    .locals 0

    .line 122
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->get(ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->c:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    return-void
.end method

.method public synthetic createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;
    .locals 9

    if-nez p1, :cond_0

    const/16 v0, 0xd

    .line 33
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_0
    if-nez p3, :cond_1

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_1
    if-nez p5, :cond_2

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_2
    if-nez p6, :cond_3

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    .line 3139
    :cond_3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    move-object v3, p2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    if-eqz p4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p4

    :goto_0
    move-object v5, p4

    iget-boolean v8, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->d:Z

    move-object v1, v0

    move-object v2, p1

    move-object v4, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Z)V

    .line 3148
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->hasStableParameterNames()Z

    move-result p1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->hasSynthesizedParameterNames()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(ZZ)V

    return-object v0
.end method

.method public hasStableParameterNames()Z
    .locals 3

    .line 111
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->c:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Parameter names status was not set: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 112
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->c:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->isStable:Z

    return v0
.end method

.method public hasSynthesizedParameterNames()Z
    .locals 3

    .line 117
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->c:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Parameter names status was not set: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->c:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->isSynthesized:Z

    return v0
.end method

.method public initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aq;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aq;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/s;",
            "Ljava/util/Map<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
            "*>;*>;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;"
        }
    .end annotation

    if-nez p3, :cond_0

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_0
    if-nez p4, :cond_1

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_1
    if-nez p7, :cond_2

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    .line 101
    :cond_2
    invoke-super/range {p0 .. p8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;

    move-result-object p1

    .line 105
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/g/i;->a:Lkotlin/reflect/jvm/internal/impl/g/i;

    const-string p3, "functionDescriptor"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/g/a;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/g/d;

    .line 1164
    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2125
    iget-object p5, p4, Lkotlin/reflect/jvm/internal/impl/g/d;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    const/4 p6, 0x0

    if-eqz p5, :cond_4

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p5

    iget-object p7, p4, Lkotlin/reflect/jvm/internal/impl/g/d;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-static {p5, p7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_4

    :goto_0
    const/4 p5, 0x0

    goto :goto_1

    .line 2126
    :cond_4
    iget-object p5, p4, Lkotlin/reflect/jvm/internal/impl/g/d;->b:Lkotlin/h/l;

    if-eqz p5, :cond_5

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p5

    invoke-virtual {p5}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p5

    const-string p7, "functionDescriptor.name.asString()"

    invoke-static {p5, p7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Ljava/lang/CharSequence;

    iget-object p7, p4, Lkotlin/reflect/jvm/internal/impl/g/d;->b:Lkotlin/h/l;

    invoke-virtual {p7, p5}, Lkotlin/h/l;->a(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_5

    goto :goto_0

    .line 2127
    :cond_5
    iget-object p5, p4, Lkotlin/reflect/jvm/internal/impl/g/d;->c:Ljava/util/Collection;

    if-eqz p5, :cond_6

    iget-object p5, p4, Lkotlin/reflect/jvm/internal/impl/g/d;->c:Ljava/util/Collection;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p7

    invoke-interface {p5, p7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6

    goto :goto_0

    :cond_6
    const/4 p5, 0x1

    :goto_1
    if-eqz p5, :cond_3

    .line 1165
    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2132
    iget-object p2, p4, Lkotlin/reflect/jvm/internal/impl/g/d;->e:[Lkotlin/reflect/jvm/internal/impl/g/b;

    array-length p3, p2

    :cond_7
    if-ge p6, p3, :cond_8

    aget-object p5, p2, p6

    add-int/lit8 p6, p6, 0x1

    .line 2133
    invoke-interface {p5, p1}, Lkotlin/reflect/jvm/internal/impl/g/b;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_7

    .line 2135
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/g/c$b;

    invoke-direct {p2, p5}, Lkotlin/reflect/jvm/internal/impl/g/c$b;-><init>(Ljava/lang/String;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/g/c;

    goto :goto_2

    .line 2139
    :cond_8
    iget-object p2, p4, Lkotlin/reflect/jvm/internal/impl/g/d;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 2141
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/g/c$b;

    invoke-direct {p3, p2}, Lkotlin/reflect/jvm/internal/impl/g/c$b;-><init>(Ljava/lang/String;)V

    move-object p2, p3

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/g/c;

    goto :goto_2

    .line 2144
    :cond_9
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/g/c$c;->b:Lkotlin/reflect/jvm/internal/impl/g/c$c;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/g/c;

    goto :goto_2

    .line 1168
    :cond_a
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/g/c$a;->b:Lkotlin/reflect/jvm/internal/impl/g/c$a;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/g/c;

    .line 3056
    :goto_2
    iget-boolean p2, p2, Lkotlin/reflect/jvm/internal/impl/g/c;->a:Z

    .line 105
    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->setOperator(Z)V

    if-nez p1, :cond_b

    const/16 p2, 0xc

    .line 106
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(I)V

    :cond_b
    return-object p1
.end method
