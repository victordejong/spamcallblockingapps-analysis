.class public abstract Lkotlin/e/b/k;
.super Lkotlin/e/b/j;
.source "PropertyReference1.java"

# interfaces
.implements Lkotlin/g/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lkotlin/e/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lkotlin/e/b/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected a()Lkotlin/g/a;
    .locals 1

    .line 24
    invoke-static {p0}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v0

    return-object v0
.end method

.method public i()Lkotlin/g/f$a;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lkotlin/e/b/k;->h()Lkotlin/g/e;

    move-result-object v0

    check-cast v0, Lkotlin/g/f;

    invoke-interface {v0}, Lkotlin/g/f;->i()Lkotlin/g/f$a;

    move-result-object v0

    return-object v0
.end method
