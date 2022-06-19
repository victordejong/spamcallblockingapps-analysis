.class public Loh0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:Lqh0;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    new-instance v0, Lrh0;

    invoke-direct {v0, p1}, Lrh0;-><init>(Ljava/lang/Iterable;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Loh0;-><init>(Lqh0;Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>(Lqh0;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqh0;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Loh0;->a:Ljava/util/Iterator;

    return-void
.end method

.method public static e(Ljava/lang/Iterable;)Loh0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Loh0<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnh0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Loh0;

    invoke-direct {v0, p0}, Loh0;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public a(Lph0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lph0<",
            "-TT;>;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Loh0;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loh0;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lph0;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Loh0;->b:Lqh0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lqh0;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Loh0;->b:Lqh0;

    const/4 v1, 0x0

    iput-object v1, v0, Lqh0;->a:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
