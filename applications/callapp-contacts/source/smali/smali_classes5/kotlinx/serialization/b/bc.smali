.class public final Lkotlinx/serialization/b/bc;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0008H\u0016J\u0010\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0008H\u0016J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0003H\u0016J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0008H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u0008H\u0016J\u0008\u0010\u001b\u001a\u00020\u0003H\u0016R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;",
        "Lkotlinx/serialization/SerialDescriptor;",
        "serialName",
        "",
        "kind",
        "Lkotlinx/serialization/PrimitiveKind;",
        "(Ljava/lang/String;Lkotlinx/serialization/PrimitiveKind;)V",
        "elementsCount",
        "",
        "getElementsCount",
        "()I",
        "getKind",
        "()Lkotlinx/serialization/PrimitiveKind;",
        "getSerialName",
        "()Ljava/lang/String;",
        "error",
        "",
        "getElementAnnotations",
        "",
        "",
        "index",
        "getElementDescriptor",
        "getElementIndex",
        "name",
        "getElementName",
        "isElementOptional",
        "",
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

.field private final b:Lkotlinx/serialization/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/j;)V
    .locals 1

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/b/bc;->a:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/b/bc;->b:Lkotlinx/serialization/j;

    return-void
.end method

.method private static e()Ljava/lang/Void;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Primitive descriptor does not have elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lkotlinx/serialization/b/bc;->e()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lkotlinx/serialization/b/bc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {}, Lkotlinx/serialization/b/bc;->e()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(I)Lkotlinx/serialization/SerialDescriptor;
    .locals 0

    .line 42
    invoke-static {}, Lkotlinx/serialization/b/bc;->e()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic b()Lkotlinx/serialization/p;
    .locals 1

    .line 1036
    iget-object v0, p0, Lkotlinx/serialization/b/bc;->b:Lkotlinx/serialization/j;

    .line 34
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

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrimitiveDescriptor("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1035
    iget-object v1, p0, Lkotlinx/serialization/b/bc;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
