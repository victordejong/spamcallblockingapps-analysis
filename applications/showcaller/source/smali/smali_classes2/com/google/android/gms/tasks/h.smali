.class public Lcom/google/android/gms/tasks/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"


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
.field private final a:Lcom/google/android/gms/tasks/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/f0<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/f0;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/tasks/f0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/f0;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/f0;

    return-object v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/f0;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/f0;->v(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/f0;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/f0;->t(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)Z
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/f0;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/f0;->w(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/h;->a:Lcom/google/android/gms/tasks/f0;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/f0;->u(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
