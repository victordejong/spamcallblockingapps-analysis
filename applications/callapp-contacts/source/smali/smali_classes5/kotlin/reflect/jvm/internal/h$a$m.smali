.class final Lkotlin/reflect/jvm/internal/h$a$m;
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
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;"
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

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/h$a$m;->a:Lkotlin/reflect/jvm/internal/h$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h$a$m;->a:Lkotlin/reflect/jvm/internal/h$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/h$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    .line 112
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isCompanionObject()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/b;->a:Lkotlin/reflect/jvm/internal/impl/builtins/b;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->a(Lkotlin/reflect/jvm/internal/impl/builtins/b;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/h$a$m;->a:Lkotlin/reflect/jvm/internal/h$a;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/h$a;->h:Lkotlin/reflect/jvm/internal/h;

    .line 1045
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 113
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h$a$m;->a:Lkotlin/reflect/jvm/internal/h$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h$a;->h:Lkotlin/reflect/jvm/internal/h;

    .line 2045
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    const-string v1, "INSTANCE"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 117
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type T"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
