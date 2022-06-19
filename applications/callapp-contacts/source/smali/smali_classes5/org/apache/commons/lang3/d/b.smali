.class public abstract Lorg/apache/commons/lang3/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/d/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/d/b<",
        "T",
        "L;",
        "TR;>;>;",
        "Ljava/util/Map$Entry<",
        "T",
        "L;",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final d:[Lorg/apache/commons/lang3/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/lang3/d/b<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/lang3/d/b$a;

    .line 75
    sput-object v0, Lorg/apache/commons/lang3/d/b;->d:[Lorg/apache/commons/lang3/d/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/d/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lorg/apache/commons/lang3/d/b<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 104
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/d/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/apache/commons/lang3/d/b;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/d/b<",
            "T",
            "L;",
            "TR;>;)I"
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/apache/commons/lang3/builder/a;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/a;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/d/b;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/d/b;->a()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 1378
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/lang3/builder/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/a;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/lang3/d/b;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/d/b;->b()Ljava/lang/Object;

    move-result-object p1

    .line 2378
    invoke-virtual {v0, v1, p1, v3}, Lorg/apache/commons/lang3/builder/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/a;

    move-result-object p1

    .line 3016
    iget p1, p1, Lorg/apache/commons/lang3/builder/a;->a:I

    return p1
.end method

.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lorg/apache/commons/lang3/d/b;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/d/b;->a(Lorg/apache/commons/lang3/d/b;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 148
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 149
    check-cast p1, Ljava/util/Map$Entry;

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/lang3/d/b;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/lang3/d/b;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/lang3/d/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lorg/apache/commons/lang3/d/b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/lang3/d/b;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/d/b;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/d/b;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/d/b;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
