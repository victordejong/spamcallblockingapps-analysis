.class public final Lcom/bumptech/glide/load/h;
.super Ljava/lang/Object;
.source "Options.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# instance fields
.field private final b:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a",
            "<",
            "Lcom/bumptech/glide/load/g",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/bumptech/glide/h/b;

    invoke-direct {v0}, Lcom/bumptech/glide/h/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    .line 66
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g",
            "<TT;>;TT;)",
            "Lcom/bumptech/glide/load/h;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, p1, p2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, p1}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/bumptech/glide/load/g;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/h;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    iget-object v1, p1, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, v1}, Landroidx/b/a;->a(Landroidx/b/g;)V

    .line 18
    return-void
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0}, Landroidx/b/a;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, v1}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/g;

    .line 50
    iget-object v2, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v2, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 51
    invoke-static {v0, v2, p1}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Ljava/security/MessageDigest;)V

    .line 48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 34
    instance-of v0, p1, Lcom/bumptech/glide/load/h;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Lcom/bumptech/glide/load/h;

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    iget-object v1, p1, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, v1}, Landroidx/b/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0}, Landroidx/b/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Options{values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
