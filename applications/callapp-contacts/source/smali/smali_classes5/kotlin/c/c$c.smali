.class final Lkotlin/c/c$c;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/c/c;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/v;",
        "Lkotlin/c/f$b;",
        "Lkotlin/v;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "element",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "invoke",
        "(Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext$Element;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:[Lkotlin/c/f;

.field final synthetic b:Lkotlin/jvm/internal/ab$c;


# direct methods
.method constructor <init>([Lkotlin/c/f;Lkotlin/jvm/internal/ab$c;)V
    .locals 0

    iput-object p1, p0, Lkotlin/c/c$c;->a:[Lkotlin/c/f;

    iput-object p2, p0, Lkotlin/c/c$c;->b:Lkotlin/jvm/internal/ab$c;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 112
    check-cast p1, Lkotlin/v;

    check-cast p2, Lkotlin/c/f$b;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    iget-object p1, p0, Lkotlin/c/c$c;->a:[Lkotlin/c/f;

    iget-object v0, p0, Lkotlin/c/c$c;->b:Lkotlin/jvm/internal/ab$c;

    iget v1, v0, Lkotlin/jvm/internal/ab$c;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lkotlin/jvm/internal/ab$c;->a:I

    check-cast p2, Lkotlin/c/f;

    aput-object p2, p1, v1

    .line 112
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
