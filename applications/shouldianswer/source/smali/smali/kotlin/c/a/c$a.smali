.class public final Lkotlin/c/a/c$a;
.super Lkotlin/c/b/a/j;
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

.field final synthetic b:Lkotlin/e/a/m;

.field final synthetic c:Ljava/lang/Object;

.field private d:I


# direct methods
.method public constructor <init>(Lkotlin/c/c;Lkotlin/c/c;Lkotlin/e/a/m;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlin/c/a/c$a;->a:Lkotlin/c/c;

    iput-object p3, p0, Lkotlin/c/a/c$a;->b:Lkotlin/e/a/m;

    iput-object p4, p0, Lkotlin/c/a/c$a;->c:Ljava/lang/Object;

    .line 162
    invoke-direct {p0, p2}, Lkotlin/c/b/a/j;-><init>(Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 166
    iget v0, p0, Lkotlin/c/a/c$a;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    .line 173
    iput v1, p0, Lkotlin/c/a/c$a;->d:I

    .line 174
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 168
    :cond_1
    iput v2, p0, Lkotlin/c/a/c$a;->d:I

    .line 169
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 170
    move-object p1, p0

    check-cast p1, Lkotlin/c/c;

    .line 199
    iget-object v0, p0, Lkotlin/c/a/c$a;->b:Lkotlin/e/a/m;

    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Lkotlin/e/b/q;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/e/a/m;

    iget-object v1, p0, Lkotlin/c/a/c$a;->c:Ljava/lang/Object;

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
