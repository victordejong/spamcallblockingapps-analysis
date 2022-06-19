.class public abstract Lz2$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lz2$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lz2$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public a:Lz2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:Lz2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2$c;Lz2$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2$c<",
            "TK;TV;>;",
            "Lz2$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2$e;->a:Lz2$c;

    iput-object p1, p0, Lz2$e;->b:Lz2$c;

    return-void
.end method


# virtual methods
.method public a(Lz2$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2$e;->a:Lz2$c;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lz2$e;->b:Lz2$c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lz2$e;->b:Lz2$c;

    iput-object v0, p0, Lz2$e;->a:Lz2$c;

    :cond_0
    iget-object v0, p0, Lz2$e;->a:Lz2$c;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lz2$e;->b(Lz2$c;)Lz2$c;

    move-result-object v0

    iput-object v0, p0, Lz2$e;->a:Lz2$c;

    :cond_1
    iget-object v0, p0, Lz2$e;->b:Lz2$c;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lz2$e;->e()Lz2$c;

    move-result-object p1

    iput-object p1, p0, Lz2$e;->b:Lz2$c;

    :cond_2
    return-void
.end method

.method public abstract b(Lz2$c;)Lz2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2$c<",
            "TK;TV;>;)",
            "Lz2$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract c(Lz2$c;)Lz2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2$c<",
            "TK;TV;>;)",
            "Lz2$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public d()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2$e;->b:Lz2$c;

    invoke-virtual {p0}, Lz2$e;->e()Lz2$c;

    move-result-object v1

    iput-object v1, p0, Lz2$e;->b:Lz2$c;

    return-object v0
.end method

.method public final e()Lz2$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2$e;->b:Lz2$c;

    iget-object v1, p0, Lz2$e;->a:Lz2$c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lz2$e;->c(Lz2$c;)Lz2$c;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lz2$e;->b:Lz2$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz2$e;->d()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
