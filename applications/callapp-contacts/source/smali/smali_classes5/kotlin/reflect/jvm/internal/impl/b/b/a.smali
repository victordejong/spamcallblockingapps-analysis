.class public abstract Lkotlin/reflect/jvm/internal/impl/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/b/a$a;
    }
.end annotation


# static fields
.field public static final d:Lkotlin/reflect/jvm/internal/impl/b/b/a$a;


# instance fields
.field private final a:[I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->d:Lkotlin/reflect/jvm/internal/impl/b/b/a$a;

    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 2

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->a:[I

    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0}, Lkotlin/a/i;->a([II)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    const/4 v0, 0x1

    .line 19
    invoke-static {p1, v0}, Lkotlin/a/i;->a([II)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    const/4 v0, 0x2

    .line 20
    invoke-static {p1, v0}, Lkotlin/a/i;->a([II)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->g:I

    .line 21
    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    const-string v0, "$this$asList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1168
    new-instance v0, Lkotlin/a/l$a;

    invoke-direct {v0, p1}, Lkotlin/a/l$a;-><init>([I)V

    check-cast v0, Ljava/util/List;

    .line 21
    array-length p1, p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 2071
    :cond_3
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 21
    :goto_3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(III)Z
    .locals 3

    .line 42
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    const/4 v1, 0x1

    if-le v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-ge v0, p1, :cond_1

    return v2

    .line 45
    :cond_1
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    if-le p1, p2, :cond_2

    return v1

    :cond_2
    if-ge p1, p2, :cond_3

    return v2

    .line 48
    :cond_3
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->g:I

    if-lt p1, p3, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method protected final a(Lkotlin/reflect/jvm/internal/impl/b/b/a;)Z
    .locals 4

    const-string v0, "ourVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    if-nez v0, :cond_0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 35
    :cond_1
    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    if-gt v0, p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/b/a;

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->g:I

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/b/b/a;->g:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->b:Ljava/util/List;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/b/b/a;->b:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 75
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    mul-int/lit8 v1, v0, 0x1f

    .line 76
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    .line 77
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->g:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    .line 78
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 3025
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->a:[I

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 66
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unknown"

    return-object v0

    :cond_2
    check-cast v1, Ljava/lang/Iterable;

    const-string v0, "."

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    invoke-static/range {v1 .. v8}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
