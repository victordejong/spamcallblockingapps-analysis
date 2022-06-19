.class public abstract Lkotlin/c/b/a/k;
.super Lkotlin/c/b/a/d;
.source "ContinuationImpl.kt"

# interfaces
.implements Lkotlin/e/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/d;",
        "Lkotlin/e/b/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(ILkotlin/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/c/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p2}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;)V

    iput p1, p0, Lkotlin/c/b/a/k;->a:I

    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    .line 157
    iget v0, p0, Lkotlin/c/b/a/k;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 163
    invoke-virtual {p0}, Lkotlin/c/b/a/k;->e()Lkotlin/c/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    move-object v0, p0

    check-cast v0, Lkotlin/e/b/f;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Lkotlin/e/b/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reflection.renderLambdaToString(this)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-super {p0}, Lkotlin/c/b/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
