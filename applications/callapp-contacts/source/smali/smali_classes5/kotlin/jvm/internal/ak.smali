.class public final Lkotlin/jvm/internal/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KType;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0017\u001a\u00020\u0013H\u0002J\u0013\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0013H\u0016J\u000c\u0010\u0017\u001a\u00020\u0013*\u00020\u0006H\u0002R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0011R\u001c\u0010\u0012\u001a\u00020\u0013*\u0006\u0012\u0002\u0008\u00030\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlin/jvm/internal/TypeReference;",
        "Lkotlin/reflect/KType;",
        "classifier",
        "Lkotlin/reflect/KClassifier;",
        "arguments",
        "",
        "Lkotlin/reflect/KTypeProjection;",
        "isMarkedNullable",
        "",
        "(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V",
        "annotations",
        "",
        "getAnnotations",
        "()Ljava/util/List;",
        "getArguments",
        "getClassifier",
        "()Lkotlin/reflect/KClassifier;",
        "()Z",
        "arrayClassName",
        "",
        "Ljava/lang/Class;",
        "getArrayClassName",
        "(Ljava/lang/Class;)Ljava/lang/String;",
        "asString",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/d;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/q;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/d;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/d;",
            "Ljava/util/List<",
            "Lkotlin/reflect/q;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/ak;->a:Lkotlin/reflect/d;

    iput-object p2, p0, Lkotlin/jvm/internal/ak;->b:Ljava/util/List;

    iput-boolean p3, p0, Lkotlin/jvm/internal/ak;->c:Z

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 46
    const-class v0, [Z

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "kotlin.BooleanArray"

    return-object p0

    .line 47
    :cond_0
    const-class v0, [C

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "kotlin.CharArray"

    return-object p0

    .line 48
    :cond_1
    const-class v0, [B

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "kotlin.ByteArray"

    return-object p0

    .line 49
    :cond_2
    const-class v0, [S

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "kotlin.ShortArray"

    return-object p0

    .line 50
    :cond_3
    const-class v0, [I

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "kotlin.IntArray"

    return-object p0

    .line 51
    :cond_4
    const-class v0, [F

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "kotlin.FloatArray"

    return-object p0

    .line 52
    :cond_5
    const-class v0, [J

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "kotlin.LongArray"

    return-object p0

    .line 53
    :cond_6
    const-class v0, [D

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "kotlin.DoubleArray"

    return-object p0

    :cond_7
    const-string p0, "kotlin.Array"

    return-object p0
.end method

.method public static final synthetic a(Lkotlin/reflect/q;)Ljava/lang/String;
    .locals 2

    .line 10027
    iget-object v0, p0, Lkotlin/reflect/q;->a:Lkotlin/reflect/s;

    if-nez v0, :cond_0

    const-string p0, "*"

    return-object p0

    .line 10031
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/q;->b:Lkotlin/reflect/KType;

    .line 9062
    instance-of v1, v0, Lkotlin/jvm/internal/ak;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lkotlin/jvm/internal/ak;

    if-eqz v0, :cond_2

    invoke-direct {v0}, Lkotlin/jvm/internal/ak;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 11031
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/q;->b:Lkotlin/reflect/KType;

    .line 9062
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12027
    :cond_3
    iget-object p0, p0, Lkotlin/reflect/q;->a:Lkotlin/reflect/s;

    if-eqz p0, :cond_6

    .line 9063
    sget-object v1, Lkotlin/jvm/internal/al;->a:[I

    invoke-virtual {p0}, Lkotlin/reflect/s;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-ne p0, v1, :cond_6

    .line 9066
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "out "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9065
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "in "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0

    .line 9066
    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private final c()Ljava/lang/String;
    .locals 11

    .line 7012
    iget-object v0, p0, Lkotlin/jvm/internal/ak;->a:Lkotlin/reflect/d;

    .line 30
    instance-of v1, v0, Lkotlin/reflect/c;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlin/reflect/c;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/a;->a(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    .line 8012
    iget-object v0, p0, Lkotlin/jvm/internal/ak;->a:Lkotlin/reflect/d;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/ak;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 8013
    :goto_0
    iget-object v1, p0, Lkotlin/jvm/internal/ak;->b:Ljava/util/List;

    .line 37
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_1

    .line 9013
    :cond_4
    iget-object v1, p0, Lkotlin/jvm/internal/ak;->b:Ljava/util/List;

    .line 38
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    const-string v1, ", "

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const-string v1, "<"

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const-string v1, ">"

    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v1, Lkotlin/jvm/internal/ak$a;

    invoke-direct {v1, p0}, Lkotlin/jvm/internal/ak$a;-><init>(Lkotlin/jvm/internal/ak;)V

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x18

    invoke-static/range {v3 .. v10}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    .line 9014
    :goto_1
    iget-boolean v3, p0, Lkotlin/jvm/internal/ak;->c:Z

    if-eqz v3, :cond_5

    const-string v2, "?"

    .line 41
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lkotlin/reflect/d;
    .locals 1

    .line 12
    iget-object v0, p0, Lkotlin/jvm/internal/ak;->a:Lkotlin/reflect/d;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/q;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lkotlin/jvm/internal/ak;->b:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 20
    instance-of v0, p1, Lkotlin/jvm/internal/ak;

    if-eqz v0, :cond_0

    .line 2012
    iget-object v0, p0, Lkotlin/jvm/internal/ak;->a:Lkotlin/reflect/d;

    .line 20
    check-cast p1, Lkotlin/jvm/internal/ak;

    .line 3012
    iget-object v1, p1, Lkotlin/jvm/internal/ak;->a:Lkotlin/reflect/d;

    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3013
    iget-object v0, p0, Lkotlin/jvm/internal/ak;->b:Ljava/util/List;

    .line 4013
    iget-object v1, p1, Lkotlin/jvm/internal/ak;->b:Ljava/util/List;

    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4014
    iget-boolean v0, p0, Lkotlin/jvm/internal/ak;->c:Z

    .line 5014
    iget-boolean p1, p1, Lkotlin/jvm/internal/ak;->c:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 1071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 6012
    iget-object v0, p0, Lkotlin/jvm/internal/ak;->a:Lkotlin/reflect/d;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 6013
    iget-object v1, p0, Lkotlin/jvm/internal/ak;->b:Ljava/util/List;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6014
    iget-boolean v1, p0, Lkotlin/jvm/internal/ak;->c:Z

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lkotlin/jvm/internal/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
