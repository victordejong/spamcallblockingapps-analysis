.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/am;


# static fields
.field static final synthetic d:Z = true


# instance fields
.field public a:Z

.field public b:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

.field public c:Lkotlin/reflect/jvm/internal/impl/descriptors/w;

.field private final e:Z

.field private final f:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

.field private final g:Lkotlin/reflect/jvm/internal/impl/descriptors/an;

.field private final h:Z

.field private final i:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    :cond_2
    if-nez p4, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    :cond_3
    if-nez p5, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    :cond_4
    if-nez p10, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    .line 54
    :cond_5
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5, p10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    const/4 p4, 0x0

    .line 39
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    .line 55
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    .line 56
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 57
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 58
    iput-boolean p6, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a:Z

    .line 59
    iput-boolean p7, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->e:Z

    .line 60
    iput-boolean p8, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->h:Z

    .line 61
    iput-object p9, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    return-void
.end method

.method private static synthetic a(I)V
    .locals 6

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "overriddenDescriptors"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "correspondingProperty"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "visibility"

    aput-object v5, v2, v4

    :goto_2
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_c
    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_d
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_e
    const-string v3, "getCorrespondingProperty"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_f
    const-string v3, "getCorrespondingVariable"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_10
    const-string v3, "getVisibility"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_11
    const-string v3, "getModality"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_12
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_13
    const-string v3, "getKind"

    aput-object v3, v2, v4

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_14
    const-string v3, "setOverriddenDescriptors"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_15
    const-string v3, "substitute"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_16
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_18
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_13
        :pswitch_c
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_14
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x6
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method protected final a(Z)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/am;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-eqz p1, :cond_1

    .line 203
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/ap;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    .line 205
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a:Z

    return v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/descriptors/an;
    .locals 2

    .line 166
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-nez v0, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    :cond_0
    return-object v0
.end method

.method public abstract c()Lkotlin/reflect/jvm/internal/impl/descriptors/am;
.end method

.method public synthetic copy(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 0

    .line 1196
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Accessors must be copied by the corresponding property"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v0

    return-object v0
.end method

.method public getInitialSignatureDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/w;
    .locals 1

    .line 223
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    return-object v0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;
    .locals 2

    .line 76
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    if-nez v0, :cond_0

    const/4 v1, 0x6

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 2

    .line 144
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-nez v0, :cond_0

    const/16 v1, 0x9

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    :cond_0
    return-object v0
.end method

.method public synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/n;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/am;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x8

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getUserData(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 2

    .line 150
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    if-nez v0, :cond_0

    const/16 v1, 0xa

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    :cond_0
    return-object v0
.end method

.method public hasSynthesizedParameterNames()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActual()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExpect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->e:Z

    return v0
.end method

.method public isHiddenForResolutionEverywhereBesideSupercalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHiddenToOvercomeSignatureClash()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInfix()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInline()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->h:Z

    return v0
.end method

.method public isOperator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTailrec()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w$a<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Accessors must be copied by the corresponding property"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOverriddenDescriptors(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    .line 213
    :cond_0
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->d:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Overridden accessors should be empty"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/l;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object p1

    return-object p1
.end method

.method public substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/w;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a(I)V

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
