.class public final Lcom/google/android/gms/common/api/internal/az;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field private final a:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a",
            "<",
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;",
            "Lcom/google/android/gms/common/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a",
            "<",
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/az;->a:Landroidx/b/a;

    invoke-virtual {v0}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;",
            "Lcom/google/android/gms/common/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/az;->a:Landroidx/b/a;

    invoke-virtual {v0, p1, p2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/az;->b:Landroidx/b/a;

    invoke-virtual {v0, p1, p3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget v0, p0, Lcom/google/android/gms/common/api/internal/az;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/az;->d:I

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/az;->e:Z

    .line 18
    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/az;->d:I

    if-nez v0, :cond_1

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/az;->e:Z

    if-eqz v0, :cond_2

    .line 20
    new-instance v0, Lcom/google/android/gms/common/api/AvailabilityException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/az;->a:Landroidx/b/a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/AvailabilityException;-><init>(Landroidx/b/a;)V

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/az;->c:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Exception;)V

    .line 24
    :cond_1
    :goto_0
    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/az;->c:Lcom/google/android/gms/tasks/h;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/az;->b:Landroidx/b/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
