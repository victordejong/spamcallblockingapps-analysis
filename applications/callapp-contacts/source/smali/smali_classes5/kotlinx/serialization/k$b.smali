.class final Lkotlinx/serialization/k$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/k;-><init>(Ljava/lang/String;Lkotlin/reflect/c;[Lkotlin/reflect/c;[Lkotlinx/serialization/KSerializer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlinx/serialization/l;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "Lkotlinx/serialization/SerialDescriptorBuilder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/serialization/k;

.field final synthetic b:[Lkotlinx/serialization/KSerializer;


# direct methods
.method constructor <init>(Lkotlinx/serialization/k;[Lkotlinx/serialization/KSerializer;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/k$b;->a:Lkotlinx/serialization/k;

    iput-object p2, p0, Lkotlinx/serialization/k$b;->b:[Lkotlinx/serialization/KSerializer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 68
    check-cast p1, Lkotlinx/serialization/l;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    sget-object v0, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    invoke-static {v0}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/ag;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    const-string v1, "type"

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/l;->a(Lkotlinx/serialization/l;Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)V

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kotlinx.serialization.Sealed<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/serialization/k$b;->a:Lkotlinx/serialization/k;

    .line 2070
    iget-object v1, v1, Lkotlinx/serialization/k;->a:Lkotlin/reflect/c;

    .line 1078
    invoke-interface {v1}, Lkotlin/reflect/c;->an_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/u$a;->b:Lkotlinx/serialization/u$a;

    check-cast v1, Lkotlinx/serialization/p;

    new-instance v2, Lkotlinx/serialization/k$b$a;

    invoke-direct {v2, p0}, Lkotlinx/serialization/k$b$a;-><init>(Lkotlinx/serialization/k$b;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lkotlinx/serialization/m;->a(Ljava/lang/String;Lkotlinx/serialization/p;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    const-string v1, "value"

    .line 1084
    invoke-static {p1, v1, v0}, Lkotlinx/serialization/l;->a(Lkotlinx/serialization/l;Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)V

    .line 68
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
