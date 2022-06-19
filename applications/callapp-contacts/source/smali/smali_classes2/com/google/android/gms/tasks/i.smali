.class public final Lcom/google/android/gms/tasks/i;
.super Ljava/lang/Object;
.source "SourceFile"


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
.field public final a:Lcom/google/android/gms/tasks/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/ah<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/ah;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/tasks/ah;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tasks/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/tasks/ah;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/tasks/ah;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    new-instance p1, Lcom/google/android/gms/tasks/ae;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/tasks/ae;-><init>(Lcom/google/android/gms/tasks/i;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    return-object v0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/ah;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/ah;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/ah;->b(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/ah;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
