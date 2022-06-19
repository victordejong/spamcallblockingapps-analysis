.class public abstract Lb9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lz8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz8/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lz8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz8/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/c;->f()Ljava/lang/Class;

    move-result-object p1

    .line 4
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/config/e;->b:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/config/b;

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lb9/b;->b()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 7
    throw p1
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Lc9/f;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lc9/f;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Object;)Lw8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lw8/l;"
        }
    .end annotation
.end method

.method public abstract d(Lc9/g;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/g;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract e()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation
.end method
