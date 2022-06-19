.class final Lkotlin/reflect/jvm/internal/impl/descriptors/a/k$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/c/b;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/b;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k$a;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 109
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k$a;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object p1

    return-object p1
.end method
