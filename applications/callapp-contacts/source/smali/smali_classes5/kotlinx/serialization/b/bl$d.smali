.class final Lkotlinx/serialization/b/bl$d;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/b/bl;->updateSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
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

.field final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlinx/serialization/b/bl;Lkotlinx/serialization/d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/b/bl$d;->a:Lkotlinx/serialization/b/bl;

    iput-object p2, p0, Lkotlinx/serialization/b/bl$d;->b:Lkotlinx/serialization/d;

    iput-object p3, p0, Lkotlinx/serialization/b/bl$d;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lkotlinx/serialization/b/bl$d;->a:Lkotlinx/serialization/b/bl;

    iget-object v1, p0, Lkotlinx/serialization/b/bl$d;->b:Lkotlinx/serialization/d;

    iget-object v2, p0, Lkotlinx/serialization/b/bl$d;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/b/bl;->updateSerializableValue(Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
