.class public final Lcom/google/android/gms/common/api/internal/ay;
.super Lcom/google/android/gms/common/api/internal/aw;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/aw",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/common/api/internal/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/j$a",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/j$a;Lcom/google/android/gms/tasks/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/j$a",
            "<*>;",
            "Lcom/google/android/gms/tasks/h",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/aw;-><init>(ILcom/google/android/gms/tasks/h;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ay;->b:Lcom/google/android/gms/common/api/internal/j$a;

    .line 3
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/aw;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/common/api/internal/bg;Z)V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/RuntimeException;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/aw;->a(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/f$a;)[Lcom/google/android/gms/common/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f$a",
            "<*>;)[",
            "Lcom/google/android/gms/common/d;"
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/f$a;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ay;->b:Lcom/google/android/gms/common/api/internal/j$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/ai;

    .line 11
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ai;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/l;->b()[Lcom/google/android/gms/common/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/f$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f$a",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/f$a;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ay;->b:Lcom/google/android/gms/common/api/internal/j$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/ai;

    .line 13
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ai;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Lcom/google/android/gms/common/api/internal/f$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f$a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/f$a;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ay;->b:Lcom/google/android/gms/common/api/internal/j$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/ai;

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/ai;->b:Lcom/google/android/gms/common/api/internal/r;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/f$a;->b()Lcom/google/android/gms/common/api/a$f;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/ay;->a:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/r;->a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/h;)V

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ai;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/l;->a()V

    .line 9
    :goto_0
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ay;->a:Lcom/google/android/gms/tasks/h;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Object;)Z

    goto :goto_0
.end method
