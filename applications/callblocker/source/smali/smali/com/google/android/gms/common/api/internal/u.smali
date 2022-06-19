.class public Lcom/google/android/gms/common/api/internal/u;
.super Lcom/google/android/gms/common/api/internal/ba;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field private final e:Landroidx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/b",
            "<",
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/common/api/internal/f;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/i;)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/ba;-><init>(Lcom/google/android/gms/common/api/internal/i;)V

    .line 13
    new-instance v0, Landroidx/b/b;

    invoke-direct {v0}, Landroidx/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Landroidx/b/b;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/i;

    const-string/jumbo v1, "ConnectionlessLifecycleHelper"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/common/api/internal/i;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    .line 15
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/internal/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/internal/f;",
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/u;->a(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/i;

    move-result-object v1

    .line 2
    const-string/jumbo v0, "ConnectionlessLifecycleHelper"

    const-class v2, Lcom/google/android/gms/common/api/internal/u;

    .line 3
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/i;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    .line 4
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/internal/u;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/u;-><init>(Lcom/google/android/gms/common/api/internal/i;)V

    .line 6
    :cond_0
    iput-object p1, v0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/internal/f;

    .line 8
    const-string/jumbo v1, "ApiKey cannot be null"

    invoke-static {p2, v1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/u;->e:Landroidx/b/b;

    invoke-virtual {v1, p2}, Landroidx/b/b;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/internal/u;)V

    .line 11
    return-void
.end method

.method private final i()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Landroidx/b/b;

    invoke-virtual {v0}, Landroidx/b/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/internal/u;)V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/b;I)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/f;->b(Lcom/google/android/gms/common/b;I)V

    .line 26
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/ba;->b()V

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/u;->i()V

    .line 18
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/ba;->c()V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/u;->i()V

    .line 21
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/ba;->d()V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/f;->b(Lcom/google/android/gms/common/api/internal/u;)V

    .line 24
    return-void
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/f;->c()V

    .line 28
    return-void
.end method

.method final g()Landroidx/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/b",
            "<",
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Landroidx/b/b;

    return-object v0
.end method
