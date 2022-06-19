.class final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$2;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1082
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$2;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->getUnsubstitutedMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;)V

    return-object v0
.end method
