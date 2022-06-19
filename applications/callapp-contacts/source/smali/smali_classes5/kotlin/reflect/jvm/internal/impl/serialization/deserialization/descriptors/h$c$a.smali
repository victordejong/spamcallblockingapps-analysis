.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "TM;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "TM;>;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/io/ByteArrayInputStream;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Ljava/io/ByteArrayInputStream;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "TM;>;",
            "Ljava/io/ByteArrayInputStream;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a;->b:Ljava/io/ByteArrayInputStream;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1291
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a;->b:Ljava/io/ByteArrayInputStream;

    check-cast v1, Ljava/io/InputStream;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 2042
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 2078
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 3053
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->p:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    .line 1291
    invoke-interface {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    return-object v0
.end method
