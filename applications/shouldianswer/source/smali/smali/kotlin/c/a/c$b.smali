.class public final Lkotlin/c/a/c$b;
.super Lkotlin/c/b/a/d;
.source "IntrinsicsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/c/a/c;->a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/c/c;

.field final synthetic b:Lkotlin/c/f;

.field final synthetic c:Lkotlin/e/a/m;

.field final synthetic d:Ljava/lang/Object;

.field private e:I


# direct methods
.method public constructor <init>(Lkotlin/c/c;Lkotlin/c/f;Lkotlin/c/c;Lkotlin/c/f;Lkotlin/e/a/m;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlin/c/a/c$b;->a:Lkotlin/c/c;

    iput-object p2, p0, Lkotlin/c/a/c$b;->b:Lkotlin/c/f;

    iput-object p5, p0, Lkotlin/c/a/c$b;->c:Lkotlin/e/a/m;

    iput-object p6, p0, Lkotlin/c/a/c$b;->d:Ljava/lang/Object;

    .line 180
    invoke-direct {p0, p3, p4}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;Lkotlin/c/f;)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 184
    iget v0, p0, Lkotlin/c/a/c$b;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    .line 191
    iput v1, p0, Lkotlin/c/a/c$b;->e:I

    .line 192
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 186
    :cond_1
    iput v2, p0, Lkotlin/c/a/c$b;->e:I

    .line 187
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 188
    move-object p1, p0

    check-cast p1, Lkotlin/c/c;

    .line 199
    iget-object v0, p0, Lkotlin/c/a/c$b;->c:Lkotlin/e/a/m;

    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Lkotlin/e/b/q;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/e/a/m;

    iget-object v1, p0, Lkotlin/c/a/c$b;->d:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lkotlin/e/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
