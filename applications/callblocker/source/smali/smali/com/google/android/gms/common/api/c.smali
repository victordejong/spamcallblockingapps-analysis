.class public Lcom/google/android/gms/common/api/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/common/api/internal/f;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/common/api/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/b",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Looper;

.field private final g:I

.field private final h:Lcom/google/android/gms/common/api/d;

.field private final i:Lcom/google/android/gms/common/api/internal/n;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;",
            "Lcom/google/android/gms/common/api/c$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string/jumbo v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string/jumbo v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->b:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/google/android/gms/common/api/c;->c:Lcom/google/android/gms/common/api/a;

    .line 23
    iput-object p3, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    .line 24
    iget-object v0, p4, Lcom/google/android/gms/common/api/c$a;->c:Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->f:Landroid/os/Looper;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->c:Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/b;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->e:Lcom/google/android/gms/common/api/internal/b;

    .line 26
    new-instance v0, Lcom/google/android/gms/common/api/internal/ad;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/ad;-><init>(Lcom/google/android/gms/common/api/c;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->h:Lcom/google/android/gms/common/api/d;

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/f;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/f;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/c;->g:I

    .line 29
    iget-object v0, p4, Lcom/google/android/gms/common/api/c$a;->b:Lcom/google/android/gms/common/api/internal/n;

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->i:Lcom/google/android/gms/common/api/internal/n;

    .line 30
    instance-of v0, p1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->a:Lcom/google/android/gms/common/api/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->e:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/u;->a(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/internal/b;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/c;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;",
            "Lcom/google/android/gms/common/api/internal/n;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/gms/common/api/c$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/c$a$a;-><init>()V

    .line 50
    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/c$a$a;->a(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/c$a$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c$a$a;->a(Landroid/os/Looper;)Lcom/google/android/gms/common/api/c$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c$a$a;->a()Lcom/google/android/gms/common/api/c$a;

    move-result-object v0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;",
            "Lcom/google/android/gms/common/api/c$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/google/android/gms/common/api/c;->c:Lcom/google/android/gms/common/api/a;

    .line 40
    iput-object p3, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    .line 41
    iget-object v0, p4, Lcom/google/android/gms/common/api/c$a;->c:Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->f:Landroid/os/Looper;

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->c:Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/b;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->e:Lcom/google/android/gms/common/api/internal/b;

    .line 43
    new-instance v0, Lcom/google/android/gms/common/api/internal/ad;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/ad;-><init>(Lcom/google/android/gms/common/api/c;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->h:Lcom/google/android/gms/common/api/d;

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/f;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/f;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/c;->g:I

    .line 46
    iget-object v0, p4, Lcom/google/android/gms/common/api/c$a;->b:Lcom/google/android/gms/common/api/internal/n;

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->i:Lcom/google/android/gms/common/api/internal/n;

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/c;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;",
            "Lcom/google/android/gms/common/api/internal/n;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/gms/common/api/c$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/c$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/c$a$a;->a(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/c$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c$a$a;->a()Lcom/google/android/gms/common/api/c$a;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V

    .line 54
    return-void
.end method

.method private final a(ILcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/d$a",
            "<+",
            "Lcom/google/android/gms/common/api/h;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c()V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/c;ILcom/google/android/gms/common/api/internal/d$a;)V

    .line 57
    return-object p2
.end method

.method private final a(ILcom/google/android/gms/common/api/internal/p;)Lcom/google/android/gms/tasks/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(I",
            "Lcom/google/android/gms/common/api/internal/p",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v4, Lcom/google/android/gms/tasks/h;

    invoke-direct {v4}, Lcom/google/android/gms/tasks/h;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->a:Lcom/google/android/gms/common/api/internal/f;

    iget-object v5, p0, Lcom/google/android/gms/common/api/c;->i:Lcom/google/android/gms/common/api/internal/n;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/c;ILcom/google/android/gms/common/api/internal/p;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/common/api/internal/n;)V

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/f$a;)Lcom/google/android/gms/common/api/a$f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/f$a",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->j()Lcom/google/android/gms/common/internal/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->a()Lcom/google/android/gms/common/internal/d;

    move-result-object v3

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p2

    .line 93
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Ljava/lang/Object;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/an;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/google/android/gms/common/api/internal/an;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->j()Lcom/google/android/gms/common/internal/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/d$a;->a()Lcom/google/android/gms/common/internal/d;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/an;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/d;)V

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/d$a",
            "<+",
            "Lcom/google/android/gms/common/api/h;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/c;->a(ILcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/internal/p;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/p",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/c;->a(ILcom/google/android/gms/common/api/internal/p;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/gms/common/api/a$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    return-object v0
.end method

.method public e()Lcom/google/android/gms/common/api/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/b",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->e:Lcom/google/android/gms/common/api/internal/b;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/gms/common/api/c;->g:I

    return v0
.end method

.method public g()Lcom/google/android/gms/common/api/d;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->h:Lcom/google/android/gms/common/api/d;

    return-object v0
.end method

.method public h()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->f:Landroid/os/Looper;

    return-object v0
.end method

.method public i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected j()Lcom/google/android/gms/common/internal/d$a;
    .locals 2

    .prologue
    .line 102
    new-instance v1, Lcom/google/android/gms/common/internal/d$a;

    invoke-direct {v1}, Lcom/google/android/gms/common/internal/d$a;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    instance-of v0, v0, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    check-cast v0, Lcom/google/android/gms/common/api/a$d$b;

    .line 106
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d()Landroid/accounts/Account;

    move-result-object v0

    .line 112
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/d$a;->a(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/d$a;

    move-result-object v1

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    instance-of v0, v0, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    check-cast v0, Lcom/google/android/gms/common/api/a$d$b;

    .line 116
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->k()Ljava/util/Set;

    move-result-object v0

    .line 120
    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/d$a;->a(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->b:Landroid/content/Context;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/d$a;->b(Ljava/lang/String;)Lcom/google/android/gms/common/internal/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->b:Landroid/content/Context;

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/d$a;->a(Ljava/lang/String;)Lcom/google/android/gms/common/internal/d$a;

    move-result-object v0

    .line 123
    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    instance-of v0, v0, Lcom/google/android/gms/common/api/a$d$a;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    check-cast v0, Lcom/google/android/gms/common/api/a$d$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$d$a;->a()Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method
