.class public final Lkotlin/c/f$a;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlin/c/f;Lkotlin/c/f;)Lkotlin/c/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lkotlin/c/g;->a:Lkotlin/c/g;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    sget-object v0, Lkotlin/c/f$a$a;->a:Lkotlin/c/f$a$a;

    check-cast v0, Lkotlin/e/a/m;

    invoke-interface {p1, p0, v0}, Lkotlin/c/f;->fold(Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/c/f;

    :goto_0
    return-object p0
.end method
