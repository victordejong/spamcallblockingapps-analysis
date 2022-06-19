.class public final Lkotlinx/serialization/b/bg;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0013\u0010\u001a\u001a\u00020\u000e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\u0011\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\u0011\u0010 \u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0096\u0001J\u0011\u0010!\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\u000f\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0097\u0001J\u0008\u0010#\u001a\u00020\nH\u0016J\u0011\u0010$\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\u0008\u0010%\u001a\u00020\u0015H\u0016R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0012\u0010\t\u001a\u00020\nX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/serialization/internal/SerialDescriptorForNullable;",
        "Lkotlinx/serialization/SerialDescriptor;",
        "original",
        "(Lkotlinx/serialization/SerialDescriptor;)V",
        "annotations",
        "",
        "",
        "getAnnotations",
        "()Ljava/util/List;",
        "elementsCount",
        "",
        "getElementsCount",
        "()I",
        "isNullable",
        "",
        "()Z",
        "kind",
        "Lkotlinx/serialization/SerialKind;",
        "getKind",
        "()Lkotlinx/serialization/SerialKind;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "serialName",
        "getSerialName",
        "equals",
        "other",
        "",
        "getElementAnnotations",
        "index",
        "getElementDescriptor",
        "getElementIndex",
        "getElementName",
        "getEntityAnnotations",
        "hashCode",
        "isElementOptional",
        "toString",
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
.field private final a:Ljava/lang/String;

.field private final b:Lkotlinx/serialization/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 1

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/b/bg;->b:Lkotlinx/serialization/SerialDescriptor;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/b/bg;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/b/bg;->b:Lkotlinx/serialization/SerialDescriptor;

    invoke-interface {v0, p1}, Lkotlinx/serialization/SerialDescriptor;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lkotlinx/serialization/b/bg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/b/bg;->b:Lkotlinx/serialization/SerialDescriptor;

    invoke-interface {v0, p1}, Lkotlinx/serialization/SerialDescriptor;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/b/bg;->b:Lkotlinx/serialization/SerialDescriptor;

    invoke-interface {v0, p1}, Lkotlinx/serialization/SerialDescriptor;->b(I)Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lkotlinx/serialization/p;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/b/bg;->b:Lkotlinx/serialization/SerialDescriptor;

    invoke-interface {v0}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/b/bg;->b:Lkotlinx/serialization/SerialDescriptor;

    invoke-interface {v0}, Lkotlinx/serialization/SerialDescriptor;->d()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 68
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/b/bg;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 69
    :cond_0
    instance-of v0, p1, Lkotlinx/serialization/b/bg;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 70
    :cond_1
    iget-object v0, p0, Lkotlinx/serialization/b/bg;->b:Lkotlinx/serialization/SerialDescriptor;

    check-cast p1, Lkotlinx/serialization/b/bg;

    iget-object p1, p1, Lkotlinx/serialization/b/bg;->b:Lkotlinx/serialization/SerialDescriptor;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 79
    iget-object v0, p0, Lkotlinx/serialization/b/bg;->b:Lkotlinx/serialization/SerialDescriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/serialization/b/bg;->b:Lkotlinx/serialization/SerialDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
