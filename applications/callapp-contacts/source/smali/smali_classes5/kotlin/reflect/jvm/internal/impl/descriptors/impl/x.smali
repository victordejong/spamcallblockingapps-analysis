.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ao;


# instance fields
.field private e:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field private final f:Lkotlin/reflect/jvm/internal/impl/descriptors/ao;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/ao;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V
    .locals 11

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->a(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->a(I)V

    :cond_2
    if-nez p4, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->a(I)V

    :cond_3
    if-nez p8, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->a(I)V

    :cond_4
    if-nez p10, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->a(I)V

    .line 48
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<get-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->c(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    if-eqz p9, :cond_6

    move-object v1, p0

    move-object/from16 v0, p9

    goto :goto_0

    :cond_6
    move-object v0, p0

    move-object v1, v0

    .line 50
    :goto_0
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    return-void
.end method

.method private static synthetic a(I)V
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

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

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v8, "correspondingProperty"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_0
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "kind"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "modality"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const/4 v7, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v7

    goto :goto_3

    :cond_2
    const-string v6, "getOriginal"

    aput-object v6, v5, v7

    goto :goto_3

    :cond_3
    const-string v6, "getValueParameters"

    aput-object v6, v5, v7

    goto :goto_3

    :cond_4
    const-string v6, "getOverriddenDescriptors"

    aput-object v6, v5, v7

    :goto_3
    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    const-string v6, "<init>"

    aput-object v6, v5, v4

    :cond_5
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private d()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;
    .locals 2

    .line 83
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    if-nez v0, :cond_0

    const/16 v1, 0x8

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->a(I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 0

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->e:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-void
.end method

.method public final accept(Lkotlin/reflect/jvm/internal/impl/descriptors/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 77
    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ao;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/descriptors/am;
    .locals 1

    .line 30
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .locals 1

    .line 30
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 1

    .line 30
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 30
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/n;
    .locals 1

    .line 30
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;
    .locals 1

    .line 30
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v0

    return-object v0
.end method

.method public final getOverriddenDescriptors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ao;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 61
    invoke-super {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    .line 72
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->e:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public final getValueParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x7

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->a(I)V

    :cond_0
    return-object v0
.end method
