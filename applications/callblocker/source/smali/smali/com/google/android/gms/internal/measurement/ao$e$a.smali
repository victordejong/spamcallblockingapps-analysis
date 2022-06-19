.class public final Lcom/google/android/gms/internal/measurement/ao$e$a;
.super Lcom/google/android/gms/internal/measurement/ed$b;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ao$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed$b",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$e;",
        "Lcom/google/android/gms/internal/measurement/ao$e$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->l()Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ed$b;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ap;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/ao$e$a;
    .locals 1

    .prologue
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->a(Lcom/google/android/gms/internal/measurement/ao$e;)V

    .line 20
    return-object p0
.end method

.method public final a(D)Lcom/google/android/gms/internal/measurement/ao$e$a;
    .locals 1

    .prologue
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$e;->a(Lcom/google/android/gms/internal/measurement/ao$e;D)V

    .line 38
    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/internal/measurement/ao$e$a;
    .locals 1

    .prologue
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$e;->a(Lcom/google/android/gms/internal/measurement/ao$e;J)V

    .line 26
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ao$e$a;)Lcom/google/android/gms/internal/measurement/ao$e$a;
    .locals 2

    .prologue
    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$e;->a(Lcom/google/android/gms/internal/measurement/ao$e;Lcom/google/android/gms/internal/measurement/ao$e;)V

    .line 51
    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/internal/measurement/ao$e;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/ao$e$a;"
        }
    .end annotation

    .prologue
    .line 52
    .line 53
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$e;->a(Lcom/google/android/gms/internal/measurement/ao$e;Ljava/lang/Iterable;)V

    .line 57
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;
    .locals 1

    .prologue
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$e;->a(Lcom/google/android/gms/internal/measurement/ao$e;Ljava/lang/String;)V

    .line 8
    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/ao$e$a;
    .locals 1

    .prologue
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->b(Lcom/google/android/gms/internal/measurement/ao$e;)V

    .line 32
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;
    .locals 1

    .prologue
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$e;->b(Lcom/google/android/gms/internal/measurement/ao$e;Ljava/lang/String;)V

    .line 14
    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/ao$e$a;
    .locals 1

    .prologue
    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->c(Lcom/google/android/gms/internal/measurement/ao$e;)V

    .line 44
    return-object p0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->j()I

    move-result v0

    return v0
.end method

.method public final e()Lcom/google/android/gms/internal/measurement/ao$e$a;
    .locals 1

    .prologue
    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->d(Lcom/google/android/gms/internal/measurement/ao$e;)V

    .line 63
    return-object p0
.end method
