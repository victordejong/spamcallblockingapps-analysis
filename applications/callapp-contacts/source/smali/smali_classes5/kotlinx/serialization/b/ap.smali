.class public abstract Lkotlinx/serialization/b/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/SerialDescriptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\u0016\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u0008H\u0016J\u0010\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u0008H\u0016J\u0010\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0008H\u0016J\u0008\u0010 \u001a\u00020\u0008H\u0016J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0008H\u0016R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\u0082\u0001\u0003\"#$\u00a8\u0006%"
    }
    d2 = {
        "Lkotlinx/serialization/internal/MapLikeDescriptor;",
        "Lkotlinx/serialization/SerialDescriptor;",
        "serialName",
        "",
        "keyDescriptor",
        "valueDescriptor",
        "(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;Lkotlinx/serialization/SerialDescriptor;)V",
        "elementsCount",
        "",
        "getElementsCount",
        "()I",
        "getKeyDescriptor",
        "()Lkotlinx/serialization/SerialDescriptor;",
        "kind",
        "Lkotlinx/serialization/SerialKind;",
        "getKind",
        "()Lkotlinx/serialization/SerialKind;",
        "getSerialName",
        "()Ljava/lang/String;",
        "getValueDescriptor",
        "equals",
        "",
        "other",
        "",
        "getElementAnnotations",
        "",
        "",
        "index",
        "getElementDescriptor",
        "getElementIndex",
        "name",
        "getElementName",
        "hashCode",
        "isElementOptional",
        "Lkotlinx/serialization/internal/NamedMapClassDescriptor;",
        "Lkotlinx/serialization/internal/LinkedHashMapClassDesc;",
        "Lkotlinx/serialization/internal/HashMapClassDesc;",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lkotlinx/serialization/SerialDescriptor;

.field private final d:Lkotlinx/serialization/SerialDescriptor;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/b/ap;->b:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/b/ap;->c:Lkotlinx/serialization/SerialDescriptor;

    iput-object p3, p0, Lkotlinx/serialization/b/ap;->d:Lkotlinx/serialization/SerialDescriptor;

    const/4 p1, 0x2

    .line 50
    iput p1, p0, Lkotlinx/serialization/b/ap;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;Lkotlinx/serialization/SerialDescriptor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/serialization/b/ap;-><init>(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;Lkotlinx/serialization/SerialDescriptor;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lkotlin/h/p;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid map index"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lkotlinx/serialization/b/ap;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Lkotlinx/serialization/SerialDescriptor;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 67
    iget-object p1, p0, Lkotlinx/serialization/b/ap;->d:Lkotlinx/serialization/SerialDescriptor;

    return-object p1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Map descriptor has only one child element, index: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 66
    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/b/ap;->c:Lkotlinx/serialization/SerialDescriptor;

    return-object p1
.end method

.method public final b()Lkotlinx/serialization/p;
    .locals 1

    .line 49
    sget-object v0, Lkotlinx/serialization/t$c;->a:Lkotlinx/serialization/t$c;

    check-cast v0, Lkotlinx/serialization/p;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    .line 50
    iget v0, p0, Lkotlinx/serialization/b/ap;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 72
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/b/ap;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 73
    :cond_0
    instance-of v0, p1, Lkotlinx/serialization/b/ap;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1045
    :cond_1
    iget-object v0, p0, Lkotlinx/serialization/b/ap;->b:Ljava/lang/String;

    .line 75
    check-cast p1, Lkotlinx/serialization/b/ap;

    .line 2045
    iget-object v3, p1, Lkotlinx/serialization/b/ap;->b:Ljava/lang/String;

    .line 75
    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    return v2

    .line 76
    :cond_2
    iget-object v0, p0, Lkotlinx/serialization/b/ap;->c:Lkotlinx/serialization/SerialDescriptor;

    iget-object v3, p1, Lkotlinx/serialization/b/ap;->c:Lkotlinx/serialization/SerialDescriptor;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v2

    .line 77
    :cond_3
    iget-object v0, p0, Lkotlinx/serialization/b/ap;->d:Lkotlinx/serialization/SerialDescriptor;

    iget-object p1, p1, Lkotlinx/serialization/b/ap;->d:Lkotlinx/serialization/SerialDescriptor;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 3045
    iget-object v0, p0, Lkotlinx/serialization/b/ap;->b:Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget-object v1, p0, Lkotlinx/serialization/b/ap;->c:Lkotlinx/serialization/SerialDescriptor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v1, p0, Lkotlinx/serialization/b/ap;->d:Lkotlinx/serialization/SerialDescriptor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
