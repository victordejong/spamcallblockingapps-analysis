.class public Lcom/google/android/gms/tasks/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/tasks/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/ab",
            "<TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/ab;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/ab;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/ab;

    .line 3
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/ab;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/ab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/ab;->a(Ljava/lang/Exception;)V

    .line 12
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/ab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/ab;->a(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public b(Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/ab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/ab;->b(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/ab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/ab;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
