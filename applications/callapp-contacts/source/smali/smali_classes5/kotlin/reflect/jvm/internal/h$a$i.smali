.class final Lkotlin/reflect/jvm/internal/h$a$i;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/h$a;-><init>(Lkotlin/reflect/jvm/internal/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;",
        "kotlin.jvm.PlatformType",
        "T",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/h$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/h$a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/h$a$i;->a:Lkotlin/reflect/jvm/internal/h$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1049
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h$a$i;->a:Lkotlin/reflect/jvm/internal/h$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h$a;->h:Lkotlin/reflect/jvm/internal/h;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/h;->a(Lkotlin/reflect/jvm/internal/h;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    .line 1050
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/h$a$i;->a:Lkotlin/reflect/jvm/internal/h$a;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/h$a;->h:Lkotlin/reflect/jvm/internal/h;

    .line 1180
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/h;->a:Lkotlin/reflect/jvm/internal/ad$b;

    .line 1050
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/ad$b;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/h$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/h$a;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;

    move-result-object v1

    .line 2070
    iget-boolean v2, v0, Lkotlin/reflect/jvm/internal/impl/c/a;->a:Z

    if-eqz v2, :cond_0

    .line 3049
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 1053
    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    goto :goto_0

    .line 3052
    :cond_0
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 4039
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 1054
    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/v;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 1056
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h$a$i;->a:Lkotlin/reflect/jvm/internal/h$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h$a;->h:Lkotlin/reflect/jvm/internal/h;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/h;->b(Lkotlin/reflect/jvm/internal/h;)Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method
