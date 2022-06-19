.class public final Lcom/google/android/gms/internal/ads/eht$t$c;
.super Lcom/google/android/gms/internal/ads/dnh$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/eht$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh$b<",
        "Lcom/google/android/gms/internal/ads/eht$t;",
        "Lcom/google/android/gms/internal/ads/eht$t$c;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$t;->b()Lcom/google/android/gms/internal/ads/eht$t;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dnh$b;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ehv;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eht$t$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/eht$t$c;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$t$c;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$t;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$t;->a(Lcom/google/android/gms/internal/ads/eht$t;I)V

    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/internal/ads/eht$t$c;
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$t$c;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$t;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/eht$t;->a(Lcom/google/android/gms/internal/ads/eht$t;J)V

    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/eht$t$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/eht$t$a;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/eht$t$c;"
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$t$c;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$t;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$t;->a(Lcom/google/android/gms/internal/ads/eht$t;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eht$t$c;
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$t$c;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$t;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$t;->a(Lcom/google/android/gms/internal/ads/eht$t;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/eht$t$c;
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$t$c;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$t;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$t;->b(Lcom/google/android/gms/internal/ads/eht$t;I)V

    return-object p0
.end method

.method public final b(J)Lcom/google/android/gms/internal/ads/eht$t$c;
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$t$c;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$t;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/eht$t;->b(Lcom/google/android/gms/internal/ads/eht$t;J)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eht$t$c;
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$t$c;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$t;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$t;->b(Lcom/google/android/gms/internal/ads/eht$t;Ljava/lang/String;)V

    return-object p0
.end method
