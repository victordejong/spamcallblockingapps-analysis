.class abstract Lcom/google/firebase/components/a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-components@@16.0.0"

# interfaces
.implements Lcom/google/firebase/components/e;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/google/firebase/components/a;->c(Ljava/lang/Class;)Lcom/google/firebase/c/a;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/firebase/c/a;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/firebase/components/a;->d(Ljava/lang/Class;)Lcom/google/firebase/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/c/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
