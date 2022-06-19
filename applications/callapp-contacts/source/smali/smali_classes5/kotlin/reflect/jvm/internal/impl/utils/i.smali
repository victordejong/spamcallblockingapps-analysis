.class public final Lkotlin/reflect/jvm/internal/impl/utils/i;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/utils/i$b;,
        Lkotlin/reflect/jvm/internal/impl/utils/i$c;,
        Lkotlin/reflect/jvm/internal/impl/utils/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/utils/i$b;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/i$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/i;->a:Lkotlin/reflect/jvm/internal/impl/utils/i$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;-><init>()V

    return-void
.end method

.method public static final a()Lkotlin/reflect/jvm/internal/impl/utils/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/impl/utils/i<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/i$b;->a()Lkotlin/reflect/jvm/internal/impl/utils/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 54
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    goto/16 :goto_1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 57
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_5

    .line 61
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 62
    invoke-static {v0, p1}, Lkotlin/a/i;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 63
    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Object;

    array-length v5, v0

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "elements"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1091
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {v3}, Lkotlin/a/ai;->a(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    invoke-static {v4, v0}, Lkotlin/a/i;->b([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 63
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    sub-int/2addr v2, v1

    aput-object p1, v0, v2

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 63
    :goto_0
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    goto :goto_1

    .line 67
    :cond_5
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/ah;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 68
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    .line 72
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result p1

    add-int/2addr p1, v1

    .line 2042
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->c:I

    return v1
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3042
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->c:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 82
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 84
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/a/i;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 85
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Set<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/i$c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/i$c;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/i;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/i$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/i$a;-><init>([Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0

    .line 48
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->b:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/ah;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge size()I
    .locals 1

    .line 4042
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->c:I

    return v0
.end method
