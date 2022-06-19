.class public final Lkotlinx/serialization/i;
.super Lkotlinx/serialization/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/serialization/b/b<",
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
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/serialization/PolymorphicSerializer;",
        "T",
        "",
        "Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;",
        "baseClass",
        "Lkotlin/reflect/KClass;",
        "(Lkotlin/reflect/KClass;)V",
        "getBaseClass",
        "()Lkotlin/reflect/KClass;",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/SerialDescriptor;",
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
.field final a:Lkotlin/reflect/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lkotlinx/serialization/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlin/reflect/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lkotlinx/serialization/b/b;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/i;->a:Lkotlin/reflect/c;

    .line 78
    sget-object p1, Lkotlinx/serialization/h$a;->a:Lkotlinx/serialization/h$a;

    check-cast p1, Lkotlinx/serialization/p;

    new-instance v0, Lkotlinx/serialization/i$a;

    invoke-direct {v0, p0}, Lkotlinx/serialization/i$a;-><init>(Lkotlinx/serialization/i;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "kotlinx.serialization.Polymorphic"

    invoke-static {v1, p1, v0}, Lkotlinx/serialization/m;->a(Ljava/lang/String;Lkotlinx/serialization/p;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/i;->b:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/c<",
            "TT;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lkotlinx/serialization/i;->a:Lkotlin/reflect/c;

    return-object v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 77
    iget-object v0, p0, Lkotlinx/serialization/i;->b:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method
