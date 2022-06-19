.class final Lkotlinx/serialization/b/bl$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/b/bl;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0005\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001\"\u0004\u0008\u0001\u0010\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Tag",
        "invoke",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/serialization/b/bl;

.field final synthetic b:Lkotlinx/serialization/d;


# direct methods
.method constructor <init>(Lkotlinx/serialization/b/bl;Lkotlinx/serialization/d;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/b/bl$b;->a:Lkotlinx/serialization/b/bl;

    iput-object p2, p0, Lkotlinx/serialization/b/bl$b;->b:Lkotlinx/serialization/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lkotlinx/serialization/b/bl$b;->a:Lkotlinx/serialization/b/bl;

    iget-object v1, p0, Lkotlinx/serialization/b/bl$b;->b:Lkotlinx/serialization/d;

    invoke-virtual {v0, v1}, Lkotlinx/serialization/b/bl;->decodeSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
