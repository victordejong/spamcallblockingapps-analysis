.class public final Lcom/google/android/gms/internal/ads/dwv$n$a;
.super Lcom/google/android/gms/internal/ads/dcw$a;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dwv$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw$a",
        "<",
        "Lcom/google/android/gms/internal/ads/dwv$n;",
        "Lcom/google/android/gms/internal/ads/dwv$n$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$n;->e()Lcom/google/android/gms/internal/ads/dwv$n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dcw$a;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dwu;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dwv$n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dwv$a$b;)Lcom/google/android/gms/internal/ads/dwv$n$a;
    .locals 2

    .prologue
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$n$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v1, Lcom/google/android/gms/internal/ads/dwv$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$n;->a(Lcom/google/android/gms/internal/ads/dwv$n;Lcom/google/android/gms/internal/ads/dwv$a;)V

    .line 35
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dwv$f;)Lcom/google/android/gms/internal/ads/dwv$n$a;
    .locals 1

    .prologue
    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$n$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dwv$n;->a(Lcom/google/android/gms/internal/ads/dwv$n;Lcom/google/android/gms/internal/ads/dwv$f;)V

    .line 47
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dwv$g;)Lcom/google/android/gms/internal/ads/dwv$n$a;
    .locals 1

    .prologue
    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$n$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dwv$n;->a(Lcom/google/android/gms/internal/ads/dwv$n;Lcom/google/android/gms/internal/ads/dwv$g;)V

    .line 53
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dwv$l$a;)Lcom/google/android/gms/internal/ads/dwv$n$a;
    .locals 2

    .prologue
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$n$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v1, Lcom/google/android/gms/internal/ads/dwv$l;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$n;->a(Lcom/google/android/gms/internal/ads/dwv$n;Lcom/google/android/gms/internal/ads/dwv$l;)V

    .line 28
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dwv$t;)Lcom/google/android/gms/internal/ads/dwv$n$a;
    .locals 1

    .prologue
    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$n$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dwv$n;->a(Lcom/google/android/gms/internal/ads/dwv$n;Lcom/google/android/gms/internal/ads/dwv$t;)V

    .line 41
    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dwv$n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/dwv$n$a;"
        }
    .end annotation

    .prologue
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$n$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dwv$n;->a(Lcom/google/android/gms/internal/ads/dwv$n;Ljava/lang/Iterable;)V

    .line 15
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dwv$n$a;
    .locals 1

    .prologue
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$n$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dwv$n;->a(Lcom/google/android/gms/internal/ads/dwv$n;Ljava/lang/String;)V

    .line 9
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$n$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwv$n;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/dwv$n$a;
    .locals 1

    .prologue
    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$n$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dwv$n;->a(Lcom/google/android/gms/internal/ads/dwv$n;)V

    .line 21
    return-object p0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/dwv$l;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$n$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwv$n;->b()Lcom/google/android/gms/internal/ads/dwv$l;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/dwv$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$n$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwv$n;->c()Lcom/google/android/gms/internal/ads/dwv$a;

    move-result-object v0

    return-object v0
.end method
