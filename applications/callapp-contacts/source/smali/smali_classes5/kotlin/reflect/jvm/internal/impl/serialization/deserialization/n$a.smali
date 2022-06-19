.class final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/b/a$l;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/c/a;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/at;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 41
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/c/a;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const-string v0, "NO_SOURCE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    return-object p1
.end method
