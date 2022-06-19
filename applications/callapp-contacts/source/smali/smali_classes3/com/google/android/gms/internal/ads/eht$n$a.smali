.class public final Lcom/google/android/gms/internal/ads/eht$n$a;
.super Lcom/google/android/gms/internal/ads/dnh$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/eht$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh$b<",
        "Lcom/google/android/gms/internal/ads/eht$n;",
        "Lcom/google/android/gms/internal/ads/eht$n$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$n;->b()Lcom/google/android/gms/internal/ads/eht$n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dnh$b;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ehv;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eht$n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eht$a$b;)Lcom/google/android/gms/internal/ads/eht$n$a;
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->f()Lcom/google/android/gms/internal/ads/dot;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/eht$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$n;->a(Lcom/google/android/gms/internal/ads/eht$n;Lcom/google/android/gms/internal/ads/eht$a;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eht$f;)Lcom/google/android/gms/internal/ads/eht$n$a;
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$n;->a(Lcom/google/android/gms/internal/ads/eht$n;Lcom/google/android/gms/internal/ads/eht$f;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eht$g;)Lcom/google/android/gms/internal/ads/eht$n$a;
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$n;->a(Lcom/google/android/gms/internal/ads/eht$n;Lcom/google/android/gms/internal/ads/eht$g;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eht$l$a;)Lcom/google/android/gms/internal/ads/eht$n$a;
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->f()Lcom/google/android/gms/internal/ads/dot;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/eht$l;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$n;->a(Lcom/google/android/gms/internal/ads/eht$n;Lcom/google/android/gms/internal/ads/eht$l;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eht$t;)Lcom/google/android/gms/internal/ads/eht$n$a;
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$n;->a(Lcom/google/android/gms/internal/ads/eht$n;Lcom/google/android/gms/internal/ads/eht$t;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/eht$n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/eht$n$a;"
        }
    .end annotation

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$n;->a(Lcom/google/android/gms/internal/ads/eht$n;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eht$n$a;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$n;->a(Lcom/google/android/gms/internal/ads/eht$n;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n;

    .line 1006
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eht$n;->zzccq:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/eht$n$a;
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eht$n;->a(Lcom/google/android/gms/internal/ads/eht$n;)V

    return-object p0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/eht$l;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n;

    .line 1025
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eht$n;->zzccv:Lcom/google/android/gms/internal/ads/eht$l;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$l;->a()Lcom/google/android/gms/internal/ads/eht$l;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eht$n;->zzccv:Lcom/google/android/gms/internal/ads/eht$l;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/eht$a;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n;

    .line 1030
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eht$n;->zzccy:Lcom/google/android/gms/internal/ads/eht$a;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$a;->a()Lcom/google/android/gms/internal/ads/eht$a;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eht$n;->zzccy:Lcom/google/android/gms/internal/ads/eht$a;

    return-object v0
.end method
