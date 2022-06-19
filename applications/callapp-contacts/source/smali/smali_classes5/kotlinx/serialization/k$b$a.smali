.class final Lkotlinx/serialization/k$b$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/k$b;
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
.field final synthetic a:Lkotlinx/serialization/k$b;


# direct methods
.method constructor <init>(Lkotlinx/serialization/k$b;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/k$b$a;->a:Lkotlinx/serialization/k$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 68
    check-cast p1, Lkotlinx/serialization/l;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lkotlinx/serialization/k$b$a;->a:Lkotlinx/serialization/k$b;

    iget-object v0, v0, Lkotlinx/serialization/k$b;->b:[Lkotlinx/serialization/KSerializer;

    .line 1120
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1080
    invoke-interface {v3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v3

    .line 1081
    invoke-interface {v3}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v3}, Lkotlinx/serialization/l;->a(Lkotlinx/serialization/l;Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
