.class final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/r;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/c/b;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ae;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 34
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;

    .line 1036
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;->d()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;)V

    .line 1035
    :goto_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    return-object p1
.end method
