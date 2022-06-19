.class public final Lcom/google/android/gms/internal/measurement/ao$g$a;
.super Lcom/google/android/gms/internal/measurement/ed$b;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ao$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed$b",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$g;",
        "Lcom/google/android/gms/internal/measurement/ao$g$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$g;->ag()Lcom/google/android/gms/internal/measurement/ao$g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ed$b;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ap;)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 2

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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;I)V

    .line 8
    return-object p0
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/ao$c$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$c;

    .line 20
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;ILcom/google/android/gms/internal/measurement/ao$c;)V

    .line 21
    return-object p0
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/ao$k;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;ILcom/google/android/gms/internal/measurement/ao$k;)V

    .line 56
    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 81
    .line 82
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 86
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ao$c$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 2

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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;Lcom/google/android/gms/internal/measurement/ao$c;)V

    .line 27
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ao$h$b;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 2

    .prologue
    .line 307
    .line 308
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$h;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;Lcom/google/android/gms/internal/measurement/ao$h;)V

    .line 312
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ao$k$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 2

    .prologue
    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$k;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;Lcom/google/android/gms/internal/measurement/ao$k;)V

    .line 68
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ao$k;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;Lcom/google/android/gms/internal/measurement/ao$k;)V

    .line 62
    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/internal/measurement/ao$c;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/ao$g$a;"
        }
    .end annotation

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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/Iterable;)V

    .line 33
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 125
    .line 126
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 130
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 192
    .line 193
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;Z)V

    .line 197
    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->c()Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->d()I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/measurement/ao$c;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->a(I)Lcom/google/android/gms/internal/measurement/ao$c;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 88
    .line 89
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->b(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 93
    return-object p0
.end method

.method public final b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/internal/measurement/ao$k;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/ao$g$a;"
        }
    .end annotation

    .prologue
    .line 69
    .line 70
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->b(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/Iterable;)V

    .line 74
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 131
    .line 132
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->b(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 136
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 235
    .line 236
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->b(Lcom/google/android/gms/internal/measurement/ao$g;Z)V

    .line 240
    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->a(Lcom/google/android/gms/internal/measurement/ao$g;)V

    .line 39
    return-object p0
.end method

.method public final c(I)Lcom/google/android/gms/internal/measurement/ao$g$a;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->b(Lcom/google/android/gms/internal/measurement/ao$g;I)V

    .line 45
    return-object p0
.end method

.method public final c(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 95
    .line 96
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->c(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 100
    return-object p0
.end method

.method public final c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/internal/measurement/ao$a;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/ao$g$a;"
        }
    .end annotation

    .prologue
    .line 241
    .line 242
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->c(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/Iterable;)V

    .line 246
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 137
    .line 138
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->c(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 142
    return-object p0
.end method

.method public final d(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 101
    .line 102
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->d(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 106
    return-object p0
.end method

.method public final d(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/ao$g$a;"
        }
    .end annotation

    .prologue
    .line 313
    .line 314
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->d(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/Iterable;)V

    .line 318
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 143
    .line 144
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->d(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 148
    return-object p0
.end method

.method public final d(I)Lcom/google/android/gms/internal/measurement/ao$k;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->b(I)Lcom/google/android/gms/internal/measurement/ao$k;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->e()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->f()I

    move-result v0

    return v0
.end method

.method public final e(I)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 75
    .line 76
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->c(Lcom/google/android/gms/internal/measurement/ao$g;I)V

    .line 80
    return-object p0
.end method

.method public final e(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 113
    .line 114
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->e(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 118
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 155
    .line 156
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->e(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 160
    return-object p0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(I)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 149
    .line 150
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->d(Lcom/google/android/gms/internal/measurement/ao$g;I)V

    .line 154
    return-object p0
.end method

.method public final f(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 174
    .line 175
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->f(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 179
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 162
    .line 163
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->f(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 167
    return-object p0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(I)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 210
    .line 211
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->e(Lcom/google/android/gms/internal/measurement/ao$g;I)V

    .line 215
    return-object p0
.end method

.method public final g(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 180
    .line 181
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->g(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 185
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 168
    .line 169
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->g(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 173
    return-object p0
.end method

.method public final h()Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 107
    .line 108
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->b(Lcom/google/android/gms/internal/measurement/ao$g;)V

    .line 112
    return-object p0
.end method

.method public final h(I)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 259
    .line 260
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->f(Lcom/google/android/gms/internal/measurement/ao$g;I)V

    .line 264
    return-object p0
.end method

.method public final h(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 204
    .line 205
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->h(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 209
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 186
    .line 187
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->h(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 191
    return-object p0
.end method

.method public final i()Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 119
    .line 120
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->c(Lcom/google/android/gms/internal/measurement/ao$g;)V

    .line 124
    return-object p0
.end method

.method public final i(I)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 295
    .line 296
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->g(Lcom/google/android/gms/internal/measurement/ao$g;I)V

    .line 300
    return-object p0
.end method

.method public final i(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 271
    .line 272
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->i(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 276
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 198
    .line 199
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->i(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 203
    return-object p0
.end method

.method public final j(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 277
    .line 278
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->j(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 282
    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 216
    .line 217
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->j(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 221
    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 222
    .line 223
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->d(Lcom/google/android/gms/internal/measurement/ao$g;)V

    .line 227
    return-object p0
.end method

.method public final k(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 319
    .line 320
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->k(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 324
    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 229
    .line 230
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->k(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 234
    return-object p0
.end method

.method public final l(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 325
    .line 326
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$g;->l(Lcom/google/android/gms/internal/measurement/ao$g;J)V

    .line 330
    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 253
    .line 254
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->l(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 258
    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 247
    .line 248
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->e(Lcom/google/android/gms/internal/measurement/ao$g;)V

    .line 252
    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 265
    .line 266
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->m(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 270
    return-object p0
.end method

.method public final n()Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 289
    .line 290
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->f(Lcom/google/android/gms/internal/measurement/ao$g;)V

    .line 294
    return-object p0
.end method

.method public final n(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 2

    .prologue
    .line 283
    .line 284
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$g;->n(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 288
    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 301
    .line 302
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->o(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 306
    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    .locals 1

    .prologue
    .line 332
    .line 333
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$g$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$g;->p(Lcom/google/android/gms/internal/measurement/ao$g;Ljava/lang/String;)V

    .line 337
    return-object p0
.end method
