.class public final Lcom/google/android/gms/internal/measurement/ao$c$a;
.super Lcom/google/android/gms/internal/measurement/ed$b;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ao$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed$b",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$c;",
        "Lcom/google/android/gms/internal/measurement/ao$c$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$c;->k()Lcom/google/android/gms/internal/measurement/ao$c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ed$b;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ap;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/measurement/ao$e$a;)Lcom/google/android/gms/internal/measurement/ao$c$a;
    .locals 2

    .prologue
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 20
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Lcom/google/android/gms/internal/measurement/ao$c;ILcom/google/android/gms/internal/measurement/ao$e;)V

    .line 21
    return-object p0
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/ao$e;)Lcom/google/android/gms/internal/measurement/ao$c$a;
    .locals 1

    .prologue
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Lcom/google/android/gms/internal/measurement/ao$c;ILcom/google/android/gms/internal/measurement/ao$e;)V

    .line 13
    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/internal/measurement/ao$c$a;
    .locals 1

    .prologue
    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Lcom/google/android/gms/internal/measurement/ao$c;J)V

    .line 66
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ao$e$a;)Lcom/google/android/gms/internal/measurement/ao$c$a;
    .locals 2

    .prologue
    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Lcom/google/android/gms/internal/measurement/ao$c;Lcom/google/android/gms/internal/measurement/ao$e;)V

    .line 33
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ao$e;)Lcom/google/android/gms/internal/measurement/ao$c$a;
    .locals 1

    .prologue
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Lcom/google/android/gms/internal/measurement/ao$c;Lcom/google/android/gms/internal/measurement/ao$e;)V

    .line 27
    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/internal/measurement/ao$e;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/ao$c$a;"
        }
    .end annotation

    .prologue
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/Iterable;)V

    .line 39
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$c$a;
    .locals 1

    .prologue
    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)V

    .line 58
    return-object p0
.end method

.method public final a(I)Lcom/google/android/gms/internal/measurement/ao$e;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$c;->a(I)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->a()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->b()I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/measurement/ao$c$a;
    .locals 1

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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Lcom/google/android/gms/internal/measurement/ao$c;I)V

    .line 51
    return-object p0
.end method

.method public final b(J)Lcom/google/android/gms/internal/measurement/ao$c$a;
    .locals 1

    .prologue
    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$c;->b(Lcom/google/android/gms/internal/measurement/ao$c;J)V

    .line 73
    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/ao$c$a;
    .locals 1

    .prologue
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Lcom/google/android/gms/internal/measurement/ao$c;)V

    .line 45
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->d()Z

    move-result v0

    return v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->g()J

    move-result-wide v0

    return-wide v0
.end method
