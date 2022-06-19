.class final Lkotlin/reflect/jvm/internal/h$a$k;
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
        "Ljava/util/Collection<",
        "+",
        "Lkotlin/reflect/jvm/internal/f<",
        "*>;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u001e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0002 \u0003*\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0002\u0018\u00010\u00010\u0001\"\u0008\u0008\u0000\u0010\u0004*\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/reflect/jvm/internal/KCallableImpl;",
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

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/h$a$k;->a:Lkotlin/reflect/jvm/internal/h$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1168
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h$a$k;->a:Lkotlin/reflect/jvm/internal/h$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h$a;->h:Lkotlin/reflect/jvm/internal/h;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/h$a$k;->a:Lkotlin/reflect/jvm/internal/h$a;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/h$a;->h:Lkotlin/reflect/jvm/internal/h;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/h;->h()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/k$c;->INHERITED:Lkotlin/reflect/jvm/internal/k$c;

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/h;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Lkotlin/reflect/jvm/internal/k$c;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
