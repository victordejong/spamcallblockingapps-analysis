.class public final Lcom/esotericsoftware/kryo/c/m$a;
.super Lcom/esotericsoftware/kryo/c/m$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/c/m$c<",
        "TK;TV;",
        "Lcom/esotericsoftware/kryo/c/m$b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/esotericsoftware/kryo/c/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/c/m$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/c/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c/m<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 510
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/m$c;-><init>(Lcom/esotericsoftware/kryo/c/m;)V

    .line 507
    new-instance p1, Lcom/esotericsoftware/kryo/c/m$b;

    invoke-direct {p1}, Lcom/esotericsoftware/kryo/c/m$b;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/m$a;->a:Lcom/esotericsoftware/kryo/c/m$b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .line 506
    invoke-super {p0}, Lcom/esotericsoftware/kryo/c/m$c;->a()V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c/m$a;->b:Z

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .line 2515
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c/m$a;->b:Z

    if-eqz v0, :cond_0

    .line 2516
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/m$a;->c:Lcom/esotericsoftware/kryo/c/m;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    .line 2517
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/m$a;->a:Lcom/esotericsoftware/kryo/c/m$b;

    iget v2, p0, Lcom/esotericsoftware/kryo/c/m$a;->d:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/esotericsoftware/kryo/c/m$b;->a:Ljava/lang/Object;

    .line 2518
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/m$a;->a:Lcom/esotericsoftware/kryo/c/m$b;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/m$a;->c:Lcom/esotericsoftware/kryo/c/m;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    iget v2, p0, Lcom/esotericsoftware/kryo/c/m$a;->d:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/esotericsoftware/kryo/c/m$b;->b:Ljava/lang/Object;

    .line 2519
    iget v0, p0, Lcom/esotericsoftware/kryo/c/m$a;->d:I

    iput v0, p0, Lcom/esotericsoftware/kryo/c/m$a;->e:I

    .line 2520
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c/m$a;->b()V

    .line 2521
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/m$a;->a:Lcom/esotericsoftware/kryo/c/m$b;

    return-object v0

    .line 2515
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic remove()V
    .locals 0

    .line 506
    invoke-super {p0}, Lcom/esotericsoftware/kryo/c/m$c;->remove()V

    return-void
.end method
