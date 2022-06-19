.class final Lkotlin/c/f$a$a;
.super Lkotlin/e/b/i;
.source "CoroutineContext.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/c/f$a;->a(Lkotlin/c/f;Lkotlin/c/f;)Lkotlin/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/m<",
        "Lkotlin/c/f;",
        "Lkotlin/c/f$b;",
        "Lkotlin/c/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/c/f$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/c/f$a$a;

    invoke-direct {v0}, Lkotlin/c/f$a$a;-><init>()V

    sput-object v0, Lkotlin/c/f$a$a;->a:Lkotlin/c/f$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lkotlin/c/f;

    check-cast p2, Lkotlin/c/f$b;

    invoke-virtual {p0, p1, p2}, Lkotlin/c/f$a$a;->a(Lkotlin/c/f;Lkotlin/c/f$b;)Lkotlin/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/c/f;Lkotlin/c/f$b;)Lkotlin/c/f;
    .locals 3

    const-string v0, "acc"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p2}, Lkotlin/c/f$b;->getKey()Lkotlin/c/f$c;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/c/f;->minusKey(Lkotlin/c/f$c;)Lkotlin/c/f;

    move-result-object p1

    .line 34
    sget-object v0, Lkotlin/c/g;->a:Lkotlin/c/g;

    if-ne p1, v0, :cond_0

    check-cast p2, Lkotlin/c/f;

    goto :goto_1

    .line 36
    :cond_0
    sget-object v0, Lkotlin/c/d;->a:Lkotlin/c/d$b;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p1, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    check-cast v0, Lkotlin/c/d;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lkotlin/c/b;

    invoke-direct {v0, p1, p2}, Lkotlin/c/b;-><init>(Lkotlin/c/f;Lkotlin/c/f$b;)V

    move-object p1, v0

    goto :goto_0

    .line 38
    :cond_1
    sget-object v1, Lkotlin/c/d;->a:Lkotlin/c/d$b;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {p1, v1}, Lkotlin/c/f;->minusKey(Lkotlin/c/f$c;)Lkotlin/c/f;

    move-result-object p1

    .line 39
    sget-object v1, Lkotlin/c/g;->a:Lkotlin/c/g;

    if-ne p1, v1, :cond_2

    new-instance p1, Lkotlin/c/b;

    check-cast p2, Lkotlin/c/f;

    check-cast v0, Lkotlin/c/f$b;

    invoke-direct {p1, p2, v0}, Lkotlin/c/b;-><init>(Lkotlin/c/f;Lkotlin/c/f$b;)V

    goto :goto_0

    .line 40
    :cond_2
    new-instance v1, Lkotlin/c/b;

    new-instance v2, Lkotlin/c/b;

    invoke-direct {v2, p1, p2}, Lkotlin/c/b;-><init>(Lkotlin/c/f;Lkotlin/c/f$b;)V

    check-cast v2, Lkotlin/c/f;

    check-cast v0, Lkotlin/c/f$b;

    invoke-direct {v1, v2, v0}, Lkotlin/c/b;-><init>(Lkotlin/c/f;Lkotlin/c/f$b;)V

    move-object p1, v1

    .line 37
    :goto_0
    move-object p2, p1

    check-cast p2, Lkotlin/c/f;

    :goto_1
    return-object p2
.end method
