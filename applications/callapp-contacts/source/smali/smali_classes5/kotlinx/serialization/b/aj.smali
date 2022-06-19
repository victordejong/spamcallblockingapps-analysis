.class public abstract Lkotlinx/serialization/b/aj;
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
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0010\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0008\u0010\u001b\u001a\u00020\u0007H\u0016J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0007H\u0016R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u0082\u0001\u0006\u001d\u001e\u001f !\"\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/serialization/internal/ListLikeDescriptor;",
        "Lkotlinx/serialization/SerialDescriptor;",
        "elementDesc",
        "(Lkotlinx/serialization/SerialDescriptor;)V",
        "getElementDesc",
        "()Lkotlinx/serialization/SerialDescriptor;",
        "elementsCount",
        "",
        "getElementsCount",
        "()I",
        "kind",
        "Lkotlinx/serialization/SerialKind;",
        "getKind",
        "()Lkotlinx/serialization/SerialKind;",
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
        "",
        "getElementName",
        "hashCode",
        "isElementOptional",
        "Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;",
        "Lkotlinx/serialization/internal/ArrayClassDesc;",
        "Lkotlinx/serialization/internal/ArrayListClassDesc;",
        "Lkotlinx/serialization/internal/NamedListClassDescriptor;",
        "Lkotlinx/serialization/internal/LinkedHashSetClassDesc;",
        "Lkotlinx/serialization/internal/HashSetClassDesc;",
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

.field private final b:Lkotlinx/serialization/SerialDescriptor;


# direct methods
.method private constructor <init>(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/b/aj;->b:Lkotlinx/serialization/SerialDescriptor;

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lkotlinx/serialization/b/aj;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/SerialDescriptor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lkotlinx/serialization/b/aj;-><init>(Lkotlinx/serialization/SerialDescriptor;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
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

    const-string p1, " is not a valid list index"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Lkotlinx/serialization/SerialDescriptor;
    .locals 2

    if-nez p1, :cond_0

    .line 29
    iget-object p1, p0, Lkotlinx/serialization/b/aj;->b:Lkotlinx/serialization/SerialDescriptor;

    return-object p1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "List descriptor has only one child element, index: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final b()Lkotlinx/serialization/p;
    .locals 1

    .line 10
    sget-object v0, Lkotlinx/serialization/t$b;->a:Lkotlinx/serialization/t$b;

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

    .line 11
    iget v0, p0, Lkotlinx/serialization/b/aj;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 33
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/b/aj;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 34
    :cond_0
    instance-of v0, p1, Lkotlinx/serialization/b/aj;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 35
    :cond_1
    iget-object v0, p0, Lkotlinx/serialization/b/aj;->b:Lkotlinx/serialization/SerialDescriptor;

    check-cast p1, Lkotlinx/serialization/b/aj;

    iget-object v3, p1, Lkotlinx/serialization/b/aj;->b:Lkotlinx/serialization/SerialDescriptor;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/b/aj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/serialization/b/aj;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 40
    iget-object v0, p0, Lkotlinx/serialization/b/aj;->b:Lkotlinx/serialization/SerialDescriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlinx/serialization/b/aj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
