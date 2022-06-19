.class public final Lkotlinx/serialization/b/s;
.super Lkotlinx/serialization/b/bf;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0005H\u0016J\u0008\u0010\u0018\u001a\u00020\u0005H\u0016J\u0008\u0010\u0019\u001a\u00020\u0003H\u0016R!\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/serialization/internal/EnumDescriptor;",
        "Lkotlinx/serialization/internal/SerialClassDescImpl;",
        "name",
        "",
        "elementsCount",
        "",
        "(Ljava/lang/String;I)V",
        "elementDescriptors",
        "",
        "Lkotlinx/serialization/SerialDescriptor;",
        "getElementDescriptors",
        "()[Lkotlinx/serialization/SerialDescriptor;",
        "elementDescriptors$delegate",
        "Lkotlin/Lazy;",
        "kind",
        "Lkotlinx/serialization/SerialKind;",
        "getKind",
        "()Lkotlinx/serialization/SerialKind;",
        "equals",
        "",
        "other",
        "",
        "getElementDescriptor",
        "index",
        "hashCode",
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
.field private final b:Lkotlinx/serialization/p;

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    .line 18
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/b/bf;-><init>(Ljava/lang/String;Lkotlinx/serialization/b/w;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    sget-object v0, Lkotlinx/serialization/u$c;->b:Lkotlinx/serialization/u$c;

    check-cast v0, Lkotlinx/serialization/p;

    iput-object v0, p0, Lkotlinx/serialization/b/s;->b:Lkotlinx/serialization/p;

    .line 21
    new-instance v0, Lkotlinx/serialization/b/s$a;

    invoke-direct {v0, p0, p2, p1}, Lkotlinx/serialization/b/s$a;-><init>(Lkotlinx/serialization/b/s;ILjava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/b/s;->c:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final b(I)Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 1000
    iget-object v0, p0, Lkotlinx/serialization/b/s;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/SerialDescriptor;

    .line 82
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b()Lkotlinx/serialization/p;
    .locals 1

    .line 20
    iget-object v0, p0, Lkotlinx/serialization/b/s;->b:Lkotlinx/serialization/p;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 28
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/b/s;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 30
    :cond_1
    instance-of v2, p1, Lkotlinx/serialization/SerialDescriptor;

    if-nez v2, :cond_2

    return v0

    .line 31
    :cond_2
    check-cast p1, Lkotlinx/serialization/SerialDescriptor;

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v2

    sget-object v3, Lkotlinx/serialization/u$c;->b:Lkotlinx/serialization/u$c;

    if-eq v2, v3, :cond_3

    return v0

    .line 32
    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/b/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_4

    return v0

    .line 33
    :cond_4
    invoke-static {p0}, Lkotlinx/serialization/o;->b(Lkotlinx/serialization/SerialDescriptor;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lkotlinx/serialization/o;->b(Lkotlinx/serialization/SerialDescriptor;)Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 42
    invoke-virtual {p0}, Lkotlinx/serialization/b/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    invoke-static {p0}, Lkotlinx/serialization/o;->b(Lkotlinx/serialization/SerialDescriptor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 38
    invoke-static {p0}, Lkotlinx/serialization/o;->b(Lkotlinx/serialization/SerialDescriptor;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/serialization/b/s;->a()Ljava/lang/String;

    move-result-object v3

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

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    invoke-static/range {v1 .. v8}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
