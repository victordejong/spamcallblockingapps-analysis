.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a$b;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1225
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a$b;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/load/java/s;

    move-result-object v0

    return-object v0
.end method
