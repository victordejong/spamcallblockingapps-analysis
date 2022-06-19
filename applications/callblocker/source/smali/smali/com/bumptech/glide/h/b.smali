.class public final Lcom/bumptech/glide/h/b;
.super Landroidx/b/a;
.source "CachedHashCodeArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/b/a",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroidx/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/h/b;->i:I

    .line 28
    invoke-super {p0, p1, p2}, Landroidx/b/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroidx/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/g",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/h/b;->i:I

    .line 40
    invoke-super {p0, p1}, Landroidx/b/a;->a(Landroidx/b/g;)V

    .line 41
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/h/b;->i:I

    .line 22
    invoke-super {p0}, Landroidx/b/a;->clear()V

    .line 23
    return-void
.end method

.method public d(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/h/b;->i:I

    .line 46
    invoke-super {p0, p1}, Landroidx/b/a;->d(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/bumptech/glide/h/b;->i:I

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0}, Landroidx/b/a;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/h/b;->i:I

    .line 54
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/h/b;->i:I

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/h/b;->i:I

    .line 34
    invoke-super {p0, p1, p2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
