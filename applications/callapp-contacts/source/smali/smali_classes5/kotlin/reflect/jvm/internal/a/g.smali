.class public final Lkotlin/reflect/jvm/internal/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/a/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/reflect/Member;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/a/d<",
        "TM;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u000c\u0008\u0000\u0010\u0001 \u0001*\u0004\u0018\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001cB#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u001aH\u0016\u00a2\u0006\u0002\u0010\u001bR\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00028\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;",
        "M",
        "Ljava/lang/reflect/Member;",
        "Lkotlin/reflect/jvm/internal/calls/Caller;",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
        "caller",
        "isDefault",
        "",
        "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/calls/Caller;Z)V",
        "data",
        "Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller$BoxUnboxData;",
        "member",
        "getMember",
        "()Ljava/lang/reflect/Member;",
        "parameterTypes",
        "",
        "Ljava/lang/reflect/Type;",
        "getParameterTypes",
        "()Ljava/util/List;",
        "returnType",
        "getReturnType",
        "()Ljava/lang/reflect/Type;",
        "call",
        "",
        "args",
        "",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "BoxUnboxData",
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
.field private final a:Lkotlin/reflect/jvm/internal/a/g$a;

.field private final b:Lkotlin/reflect/jvm/internal/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/a/d<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/reflect/jvm/internal/a/d;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            "Lkotlin/reflect/jvm/internal/a/d<",
            "+TM;>;Z)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "caller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/a/g;->b:Lkotlin/reflect/jvm/internal/a/d;

    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/a/g;->c:Z

    .line 47
    move-object p2, p0

    check-cast p2, Lkotlin/reflect/jvm/internal/a/g;

    .line 48
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    const-string v0, "descriptor.returnType!!"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/a/h;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Class;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-static {p3, p1}, Lkotlin/reflect/jvm/internal/a/h;->b(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/lang/reflect/Method;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 50
    :goto_0
    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 54
    new-instance p1, Lkotlin/reflect/jvm/internal/a/g$a;

    sget-object p2, Lkotlin/f/c;->e:Lkotlin/f/c$a;

    .line 2058
    invoke-static {}, Lkotlin/f/c;->b()Lkotlin/f/c;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/reflect/Method;

    .line 54
    invoke-direct {p1, p2, v0, p3}, Lkotlin/reflect/jvm/internal/a/g$a;-><init>(Lkotlin/f/c;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto/16 :goto_a

    .line 58
    :cond_1
    iget-object v1, p2, Lkotlin/reflect/jvm/internal/a/g;->b:Lkotlin/reflect/jvm/internal/a/d;

    instance-of v3, v1, Lkotlin/reflect/jvm/internal/a/e$h$c;

    const-string v4, "descriptor.containingDeclaration"

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    instance-of v3, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    if-eqz v3, :cond_3

    .line 65
    instance-of v1, v1, Lkotlin/reflect/jvm/internal/a/c;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 67
    :cond_3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p2, Lkotlin/reflect/jvm/internal/a/g;->b:Lkotlin/reflect/jvm/internal/a/d;

    instance-of v1, v1, Lkotlin/reflect/jvm/internal/a/c;

    if-nez v1, :cond_4

    .line 70
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 79
    :goto_1
    iget-boolean v1, p2, Lkotlin/reflect/jvm/internal/a/g;->c:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 80
    :goto_2
    instance-of v3, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-eqz v3, :cond_6

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isSuspend()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v1, v3

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v0

    :goto_4
    if-eqz v7, :cond_8

    .line 85
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 86
    :cond_8
    instance-of v7, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    if-eqz v7, :cond_9

    .line 87
    move-object v4, p1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v4

    const-string v7, "descriptor.constructedClass"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isInner()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 89
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v4

    const-string v7, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 92
    :cond_9
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    instance-of v4, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v4, :cond_a

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 94
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_a
    :goto_5
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getValueParameters()Ljava/util/List;

    move-result-object v4

    const-string v7, "descriptor.valueParameters"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    .line 209
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 210
    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 98
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 82
    :cond_b
    check-cast v3, Ljava/util/List;

    .line 100
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 101
    move-object v1, p2

    check-cast v1, Lkotlin/reflect/jvm/internal/a/d;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/a/f;->a(Lkotlin/reflect/jvm/internal/a/d;)I

    move-result v7

    if-ne v7, v4, :cond_f

    .line 112
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {p2, v1}, Lkotlin/f/d;->b(II)Lkotlin/f/c;

    move-result-object p2

    .line 114
    new-array v1, v4, [Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v4, :cond_e

    .line 3087
    iget v8, p2, Lkotlin/f/a;->a:I

    if-gt v8, v7, :cond_c

    .line 3092
    iget v8, p2, Lkotlin/f/a;->b:I

    if-gt v7, v8, :cond_c

    const/4 v8, 0x1

    goto :goto_8

    :cond_c
    const/4 v8, 0x0

    :goto_8
    if-eqz v8, :cond_d

    sub-int v8, v7, v5

    .line 116
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/a/h;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-static {v8, p1}, Lkotlin/reflect/jvm/internal/a/h;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/lang/reflect/Method;

    move-result-object v8

    goto :goto_9

    :cond_d
    move-object v8, v0

    .line 115
    :goto_9
    aput-object v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 120
    :cond_e
    new-instance p1, Lkotlin/reflect/jvm/internal/a/g$a;

    invoke-direct {p1, p2, v1, p3}, Lkotlin/reflect/jvm/internal/a/g$a;-><init>(Lkotlin/f/c;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 47
    :goto_a
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/a/g;->a:Lkotlin/reflect/jvm/internal/a/g$a;

    return-void

    .line 102
    :cond_f
    new-instance p3, Lkotlin/reflect/jvm/internal/ab;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistent number of parameters in the descriptor and Java reflection object: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/a/f;->a(Lkotlin/reflect/jvm/internal/a/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Calling: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "Parameter types: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/a/g;->c()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")\nDefault: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-boolean p1, p2, Lkotlin/reflect/jvm/internal/a/g;->c:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-direct {p3, p1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Throwable;

    throw p3
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a/g;->a:Lkotlin/reflect/jvm/internal/a/g$a;

    .line 1042
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/a/g$a;->a:Lkotlin/f/c;

    .line 1043
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/a/g$a;->b:[Ljava/lang/reflect/Method;

    .line 1044
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/a/g$a;->c:Ljava/lang/reflect/Method;

    .line 127
    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1087
    iget v4, v1, Lkotlin/f/a;->a:I

    .line 1092
    iget v1, v1, Lkotlin/f/a;->b:I

    const/4 v5, 0x0

    if-gt v4, v1, :cond_2

    .line 129
    :goto_0
    aget-object v6, v2, v4

    .line 130
    aget-object v7, p1, v4

    if-eqz v6, :cond_1

    if-eqz v7, :cond_0

    new-array v8, v5, [Ljava/lang/Object;

    .line 134
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "method.returnType"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/reflect/Type;

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/aj;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    .line 132
    :cond_1
    :goto_1
    aput-object v7, v3, v4

    if-eq v4, v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_2
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/a/g;->b:Lkotlin/reflect/jvm/internal/a/d;

    invoke-interface {p1, v3}, Lkotlin/reflect/jvm/internal/a/d;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v0

    :cond_4
    :goto_2
    return-object p1
.end method

.method public final a()Ljava/lang/reflect/Member;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a/g;->b:Lkotlin/reflect/jvm/internal/a/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/a/d;->a()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/reflect/Type;
    .locals 1

    .line 36
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a/g;->b:Lkotlin/reflect/jvm/internal/a/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/a/d;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a/g;->b:Lkotlin/reflect/jvm/internal/a/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/a/d;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
