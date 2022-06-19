.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/m;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/n;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;-><init>()V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    .line 79
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 216
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 217
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 218
    :cond_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    if-eqz v0, :cond_1

    .line 219
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 221
    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/j;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 2

    .line 186
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1226
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    if-eqz v1, :cond_0

    .line 1227
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_0

    .line 1228
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1229
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v1

    goto :goto_0

    .line 1231
    :cond_1
    move-object v1, v0

    check-cast v1, [B

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a([B)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v1

    :goto_0
    if-eq v1, v0, :cond_2

    .line 189
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->modCount:I

    return-void
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 1

    .line 65
    check-cast p2, Ljava/lang/String;

    .line 3121
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3122
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 138
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    if-eqz v0, :cond_0

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->a()Ljava/util/List;

    move-result-object p2

    .line 140
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 141
    iget p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/n;
    .locals 1

    .line 364
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/v;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/v;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .line 168
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->modCount:I

    return-void
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 5088
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 5089
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5090
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5091
    :cond_0
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    if-eqz v1, :cond_2

    .line 5092
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 5093
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->e()Ljava/lang/String;

    move-result-object v1

    .line 5094
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5095
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    .line 5099
    :cond_2
    check-cast v0, [B

    .line 5100
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/j;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 5101
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/j;->a([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5102
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .line 2161
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 2162
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->modCount:I

    .line 2163
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 65
    check-cast p2, Ljava/lang/String;

    .line 4115
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4116
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 110
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
