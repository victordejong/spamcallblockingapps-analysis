.class public abstract Lcom/google/android/gms/common/api/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/h<",
        "TO;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/android/gms/common/api/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final d:Landroid/os/Looper;

.field public final e:I

.field public final f:Lcom/google/android/gms/common/api/g;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field protected final g:Lcom/google/android/gms/common/api/internal/f;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/gms/common/api/internal/q;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/f$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/f$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null activity is not permitted."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 3
    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/f;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/api/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/f;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/f;->i:Lcom/google/android/gms/common/api/a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    .line 6
    iget-object v2, p4, Lcom/google/android/gms/common/api/f$a;->c:Landroid/os/Looper;

    iput-object v2, p0, Lcom/google/android/gms/common/api/f;->d:Landroid/os/Looper;

    .line 7
    invoke-static {p2, p3, v1}, Lcom/google/android/gms/common/api/internal/b;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/f;->c:Lcom/google/android/gms/common/api/internal/b;

    .line 8
    new-instance p3, Lcom/google/android/gms/common/api/internal/aj;

    invoke-direct {p3, p0}, Lcom/google/android/gms/common/api/internal/aj;-><init>(Lcom/google/android/gms/common/api/f;)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/g;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/f;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/f;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/internal/f;

    .line 10
    iget-object v0, p3, Lcom/google/android/gms/common/api/internal/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1001
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 10
    iput v0, p0, Lcom/google/android/gms/common/api/f;->e:I

    .line 11
    iget-object p4, p4, Lcom/google/android/gms/common/api/f$a;->b:Lcom/google/android/gms/common/api/internal/q;

    iput-object p4, p0, Lcom/google/android/gms/common/api/f;->j:Lcom/google/android/gms/common/api/internal/q;

    .line 12
    instance-of p4, p1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_0

    .line 13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p4, v0, :cond_0

    .line 14
    invoke-static {p1, p3, p2}, Lcom/google/android/gms/common/api/internal/w;->a(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/internal/b;)V

    .line 15
    :cond_0
    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/internal/q;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/f$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/f$a$a;-><init>()V

    .line 16
    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/f$a$a;->a(Lcom/google/android/gms/common/api/internal/q;)Lcom/google/android/gms/common/api/f$a$a;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/f$a$a;->a(Landroid/os/Looper;)Lcom/google/android/gms/common/api/f$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f$a$a;->a()Lcom/google/android/gms/common/api/f$a;

    move-result-object p4

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/f;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/f$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/q;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/f$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/f$a$a;-><init>()V

    .line 18
    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/f$a$a;->a(Landroid/os/Looper;)Lcom/google/android/gms/common/api/f$a$a;

    invoke-virtual {v0, p5}, Lcom/google/android/gms/common/api/f$a$a;->a(Lcom/google/android/gms/common/api/internal/q;)Lcom/google/android/gms/common/api/f$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f$a$a;->a()Lcom/google/android/gms/common/api/f$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/f$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/f$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/f$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 20
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 21
    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/f;->a:Landroid/content/Context;

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/api/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/f;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/f;->i:Lcom/google/android/gms/common/api/a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    .line 24
    iget-object v1, p4, Lcom/google/android/gms/common/api/f$a;->c:Landroid/os/Looper;

    iput-object v1, p0, Lcom/google/android/gms/common/api/f;->d:Landroid/os/Looper;

    .line 25
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/common/api/internal/b;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/f;->c:Lcom/google/android/gms/common/api/internal/b;

    .line 26
    new-instance p1, Lcom/google/android/gms/common/api/internal/aj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/aj;-><init>(Lcom/google/android/gms/common/api/f;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/g;

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/f;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/internal/f;

    .line 28
    iget-object p2, p1, Lcom/google/android/gms/common/api/internal/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2001
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    .line 28
    iput p2, p0, Lcom/google/android/gms/common/api/f;->e:I

    .line 29
    iget-object p2, p4, Lcom/google/android/gms/common/api/f$a;->b:Lcom/google/android/gms/common/api/internal/q;

    iput-object p2, p0, Lcom/google/android/gms/common/api/f;->j:Lcom/google/android/gms/common/api/internal/q;

    .line 30
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/internal/q;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/f$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/f$a$a;-><init>()V

    .line 31
    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/f$a$a;->a(Lcom/google/android/gms/common/api/internal/q;)Lcom/google/android/gms/common/api/f$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f$a$a;->a()Lcom/google/android/gms/common/api/f$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/f$a;)V

    return-void
.end method

.method private final a(ILcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "+",
            "Lcom/google/android/gms/common/api/m;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/internal/f;

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/f;ILcom/google/android/gms/common/api/internal/d$a;)V

    return-object p2
.end method

.method private final a(ILcom/google/android/gms/common/api/internal/s;)Lcom/google/android/gms/tasks/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(I",
            "Lcom/google/android/gms/common/api/internal/s<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/tasks/i;

    invoke-direct {v6}, Lcom/google/android/gms/tasks/i;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/internal/f;

    iget-object v5, p0, Lcom/google/android/gms/common/api/f;->j:Lcom/google/android/gms/common/api/internal/q;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/f;ILcom/google/android/gms/common/api/internal/s;Lcom/google/android/gms/tasks/i;Lcom/google/android/gms/common/api/internal/q;)V

    .line 15000
    iget-object p1, v6, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    return-object p1
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/n;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v1, "getAttributionTag"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/af;)Lcom/google/android/gms/common/api/a$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/af<",
            "TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/f;->g()Lcom/google/android/gms/common/internal/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/e$a;->a()Lcom/google/android/gms/common/internal/e;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->i:Lcom/google/android/gms/common/api/a;

    .line 16000
    iget-object v0, v0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/a$a;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/api/a$a;

    iget-object v2, p0, Lcom/google/android/gms/common/api/f;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    .line 3
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/g$a;Lcom/google/android/gms/common/api/g$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    .line 17000
    iget-object p2, p0, Lcom/google/android/gms/common/api/f;->h:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/common/internal/d;

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/d;->setAttributionTag(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/k;

    if-eqz v0, :cond_1

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/internal/k;

    .line 18000
    iput-object p2, v0, Lcom/google/android/gms/common/api/internal/k;->d:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "+",
            "Lcom/google/android/gms/common/api/m;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/f;->a(ILcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/i$a;)Lcom/google/android/gms/tasks/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "*>;)",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener key cannot be null."

    .line 9002
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/internal/f;

    .line 10001
    new-instance v1, Lcom/google/android/gms/tasks/i;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/i;-><init>()V

    const/4 v2, 0x0

    .line 10002
    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/tasks/i;ILcom/google/android/gms/common/api/f;)V

    new-instance v2, Lcom/google/android/gms/common/api/internal/bp;

    .line 10003
    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/common/api/internal/bp;-><init>(Lcom/google/android/gms/common/api/internal/i$a;Lcom/google/android/gms/tasks/i;)V

    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/common/api/internal/ar;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10004
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v3, v2, v0, p0}, Lcom/google/android/gms/common/api/internal/ar;-><init>(Lcom/google/android/gms/common/api/internal/bq;ILcom/google/android/gms/common/api/f;)V

    const/16 v0, 0xd

    .line 10005
    invoke-virtual {p1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 10006
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11000
    iget-object p1, v1, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/u;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/n<",
            "TA;*>;U:",
            "Lcom/google/android/gms/common/api/internal/u<",
            "TA;*>;>(TT;TU;)",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/i$a;

    const-string v1, "Listener has already been released."

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5000
    iget-object v0, p2, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/i$a;

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/i$a;

    .line 7000
    iget-object v1, p2, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/i$a;

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/internal/f;

    sget-object v1, Lcom/google/android/gms/common/api/s;->a:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/u;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/o;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/o<",
            "TA;*>;)",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/n;

    .line 12
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 8000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/i$a;

    const-string v1, "Listener has already been released."

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/o;->b:Lcom/google/android/gms/common/api/internal/u;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/i$a;

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/internal/f;

    .line 14
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/n;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/o;->b:Lcom/google/android/gms/common/api/internal/u;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/o;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/u;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/s;)Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/s<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/f;->a(ILcom/google/android/gms/common/api/internal/s;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "+",
            "Lcom/google/android/gms/common/api/m;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/f;->a(ILcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/s;)Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/s<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/f;->a(ILcom/google/android/gms/common/api/internal/s;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lcom/google/android/gms/common/api/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/b<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->c:Lcom/google/android/gms/common/api/internal/b;

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/google/android/gms/common/internal/e$a;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/e$a;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/e$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    .line 2
    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    .line 5
    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$a;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/google/android/gms/common/api/a$d$a;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$a;->a()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 12000
    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/common/internal/e$a;->a:Landroid/accounts/Account;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    .line 9
    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_3

    .line 10
    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-nez v1, :cond_2

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getRequestedScopes()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 15
    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/common/internal/e$a;->b:Landroidx/b/b;

    if-nez v2, :cond_4

    .line 12001
    new-instance v2, Landroidx/b/b;

    invoke-direct {v2}, Landroidx/b/b;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/common/internal/e$a;->b:Landroidx/b/b;

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/common/internal/e$a;->b:Landroidx/b/b;

    .line 12002
    invoke-virtual {v2, v1}, Landroidx/b/b;->addAll(Ljava/util/Collection;)Z

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 13000
    iput-object v1, v0, Lcom/google/android/gms/common/internal/e$a;->d:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->a:Landroid/content/Context;

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 14000
    iput-object v1, v0, Lcom/google/android/gms/common/internal/e$a;->c:Ljava/lang/String;

    return-object v0
.end method
