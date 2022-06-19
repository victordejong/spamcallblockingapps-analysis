.class public Lkotlinx/serialization/b/ay;
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
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\r\u0008\u0017\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00032\u0008\u0008\u0002\u0010-\u001a\u00020.J\u0014\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0016H\u0002J\u0013\u00100\u001a\u00020.2\u0008\u00101\u001a\u0004\u0018\u000102H\u0096\u0002J\u0016\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u00104\u001a\u00020\u0007H\u0016J\u0010\u00105\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0007H\u0016J\u0010\u00106\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0003H\u0016J\u0010\u00107\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0007H\u0016J\u0008\u00108\u001a\u00020\u0007H\u0016J\u0010\u00109\u001a\u00020.2\u0006\u00104\u001a\u00020\u0007H\u0016J\u000e\u0010:\u001a\u00020+2\u0006\u0010;\u001a\u00020\u000cJ\u000e\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u00020\u000cJ\u0008\u0010>\u001a\u00020\u0003H\u0016R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030 X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00030#8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u001e\u0010&\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u00100 X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\'R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)\u00a8\u0006?"
    }
    d2 = {
        "Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;",
        "Lkotlinx/serialization/SerialDescriptor;",
        "serialName",
        "",
        "generatedSerializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "elementsCount",
        "",
        "(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V",
        "added",
        "annotations",
        "",
        "",
        "getAnnotations",
        "()Ljava/util/List;",
        "classAnnotations",
        "",
        "getElementsCount",
        "()I",
        "flags",
        "",
        "indices",
        "",
        "getIndices",
        "()Ljava/util/Map;",
        "indices$delegate",
        "Lkotlin/Lazy;",
        "kind",
        "Lkotlinx/serialization/SerialKind;",
        "getKind",
        "()Lkotlinx/serialization/SerialKind;",
        "names",
        "",
        "[Ljava/lang/String;",
        "namesSet",
        "",
        "getNamesSet$kotlinx_serialization_runtime",
        "()Ljava/util/Set;",
        "propertiesAnnotations",
        "[Ljava/util/List;",
        "getSerialName",
        "()Ljava/lang/String;",
        "addElement",
        "",
        "name",
        "isOptional",
        "",
        "buildIndices",
        "equals",
        "other",
        "",
        "getElementAnnotations",
        "index",
        "getElementDescriptor",
        "getElementIndex",
        "getElementName",
        "hashCode",
        "isElementOptional",
        "pushAnnotation",
        "annotation",
        "pushClassAnnotation",
        "a",
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
.field final a:[Ljava/lang/String;

.field private b:I

.field private final c:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Z

.field private final e:Lkotlin/Lazy;

.field private final f:Ljava/lang/String;

.field private final g:Lkotlinx/serialization/b/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/b/w<",
            "*>;"
        }
    .end annotation
.end field

.field private final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/b/w;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/b/w<",
            "*>;I)V"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/b/ay;->f:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/b/ay;->g:Lkotlinx/serialization/b/w;

    iput p3, p0, Lkotlinx/serialization/b/ay;->h:I

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lkotlinx/serialization/b/ay;->b:I

    .line 25
    new-array p1, p3, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    const-string v0, "[UNINITIALIZED]"

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lkotlinx/serialization/b/ay;->a:[Ljava/lang/String;

    .line 26
    iget p1, p0, Lkotlinx/serialization/b/ay;->h:I

    new-array p2, p1, [Ljava/util/List;

    iput-object p2, p0, Lkotlinx/serialization/b/ay;->c:[Ljava/util/List;

    .line 29
    new-array p1, p1, [Z

    iput-object p1, p0, Lkotlinx/serialization/b/ay;->d:[Z

    .line 32
    new-instance p1, Lkotlinx/serialization/b/ay$a;

    invoke-direct {p1, p0}, Lkotlinx/serialization/b/ay$a;-><init>(Lkotlinx/serialization/b/ay;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/b/ay;->e:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlinx/serialization/b/w;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/serialization/b/ay;-><init>(Ljava/lang/String;Lkotlinx/serialization/b/w;I)V

    return-void
.end method

.method public static final synthetic a(Lkotlinx/serialization/b/ay;)Ljava/util/Map;
    .locals 6

    .line 4071
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4072
    iget-object v1, p0, Lkotlinx/serialization/b/ay;->a:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4073
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget-object v4, p0, Lkotlinx/serialization/b/ay;->a:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4075
    :cond_0
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lkotlinx/serialization/b/ay;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x3

    return p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lkotlinx/serialization/b/ay;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lkotlinx/serialization/b/ay;->a:[Ljava/lang/String;

    .line 102
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lkotlinx/serialization/b/ay;->a:[Ljava/lang/String;

    iget v1, p0, Lkotlinx/serialization/b/ay;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlinx/serialization/b/ay;->b:I

    aput-object p1, v0, v1

    .line 36
    iget-object p1, p0, Lkotlinx/serialization/b/ay;->d:[Z

    aput-boolean p2, p1, v1

    .line 37
    iget-object p1, p0, Lkotlinx/serialization/b/ay;->c:[Ljava/util/List;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    return-void
.end method

.method public b(I)Lkotlinx/serialization/SerialDescriptor;
    .locals 3

    .line 61
    iget-object v0, p0, Lkotlinx/serialization/b/ay;->g:Lkotlinx/serialization/b/w;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/serialization/b/w;->childSerializers()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1017
    iget-object v2, p0, Lkotlinx/serialization/b/ay;->f:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " descriptor has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlinx/serialization/b/ay;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " elements, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public b()Lkotlinx/serialization/p;
    .locals 1

    .line 21
    sget-object v0, Lkotlinx/serialization/t$a;->a:Lkotlinx/serialization/t$a;

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

    .line 19
    iget v0, p0, Lkotlinx/serialization/b/ay;->h:I

    return v0
.end method

.method final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/serialization/b/ay;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 79
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/b/ay;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 81
    :cond_0
    instance-of v0, p1, Lkotlinx/serialization/SerialDescriptor;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2017
    :cond_1
    iget-object v0, p0, Lkotlinx/serialization/b/ay;->f:Ljava/lang/String;

    .line 82
    check-cast p1, Lkotlinx/serialization/SerialDescriptor;

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    return v2

    .line 84
    :cond_2
    invoke-static {p0}, Lkotlinx/serialization/o;->a(Lkotlinx/serialization/SerialDescriptor;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lkotlinx/serialization/o;->a(Lkotlinx/serialization/SerialDescriptor;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 3017
    iget-object v0, p0, Lkotlinx/serialization/b/ay;->f:Ljava/lang/String;

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 91
    invoke-static {p0}, Lkotlinx/serialization/o;->a(Lkotlinx/serialization/SerialDescriptor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 96
    invoke-virtual {p0}, Lkotlinx/serialization/b/ay;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4017
    iget-object v3, p0, Lkotlinx/serialization/b/ay;->f:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v0, ")"

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v0, Lkotlinx/serialization/b/ay$b;

    invoke-direct {v0, p0}, Lkotlinx/serialization/b/ay$b;-><init>(Lkotlinx/serialization/b/ay;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x18

    invoke-static/range {v1 .. v8}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
