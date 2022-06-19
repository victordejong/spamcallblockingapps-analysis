.class public final Lkotlinx/serialization/b/bp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/SerialDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/b/bp;->a(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/SerialDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0003H\u0016J\u0010\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u0003H\u0016J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0003H\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u0003H\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "kotlinx/serialization/internal/UtilKt$defer$1",
        "Lkotlinx/serialization/SerialDescriptor;",
        "elementsCount",
        "",
        "getElementsCount",
        "()I",
        "kind",
        "Lkotlinx/serialization/SerialKind;",
        "getKind",
        "()Lkotlinx/serialization/SerialKind;",
        "original",
        "getOriginal",
        "()Lkotlinx/serialization/SerialDescriptor;",
        "original$delegate",
        "Lkotlin/Lazy;",
        "serialName",
        "",
        "getSerialName",
        "()Ljava/lang/String;",
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
.field final synthetic a:Lkotlin/jvm/functions/Function0;

.field private final b:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lkotlinx/serialization/b/bp$a;->a:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/b/bp$a;->b:Lkotlin/Lazy;

    return-void
.end method

.method private final e()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/b/bp$a;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lkotlinx/serialization/b/bp$a;->e()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/serialization/SerialDescriptor;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 100
    invoke-direct {p0}, Lkotlinx/serialization/b/bp$a;->e()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    .line 106
    invoke-direct {p0}, Lkotlinx/serialization/b/bp$a;->e()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/serialization/SerialDescriptor;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 109
    invoke-direct {p0}, Lkotlinx/serialization/b/bp$a;->e()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/serialization/SerialDescriptor;->b(I)Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lkotlinx/serialization/p;
    .locals 1

    .line 102
    invoke-direct {p0}, Lkotlinx/serialization/b/bp$a;->e()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    .line 104
    invoke-direct {p0}, Lkotlinx/serialization/b/bp$a;->e()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/SerialDescriptor;->d()I

    move-result v0

    return v0
.end method
