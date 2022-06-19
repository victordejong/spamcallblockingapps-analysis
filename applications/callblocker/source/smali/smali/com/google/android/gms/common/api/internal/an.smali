.class public final Lcom/google/android/gms/common/api/internal/an;
.super Lcom/google/android/gms/b/a/e;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/d$a;
.implements Lcom/google/android/gms/common/api/d$b;


# static fields
.field private static a:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a",
            "<+",
            "Lcom/google/android/gms/b/d;",
            "Lcom/google/android/gms/b/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a",
            "<+",
            "Lcom/google/android/gms/b/d;",
            "Lcom/google/android/gms/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/common/internal/d;

.field private g:Lcom/google/android/gms/b/d;

.field private h:Lcom/google/android/gms/common/api/internal/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lcom/google/android/gms/common/api/internal/an;->a:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/d;)V
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/an;->a:Lcom/google/android/gms/common/api/a$a;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/an;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/a$a;)V

    .line 2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/d;",
            "Lcom/google/android/gms/common/api/a$a",
            "<+",
            "Lcom/google/android/gms/b/d;",
            "Lcom/google/android/gms/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/b/a/e;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/an;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/an;->c:Landroid/os/Handler;

    .line 6
    const-string/jumbo v0, "ClientSettings must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/d;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->f:Lcom/google/android/gms/common/internal/d;

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/d;->d()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->e:Ljava/util/Set;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/an;->d:Lcom/google/android/gms/common/api/a$a;

    .line 9
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/an;)Lcom/google/android/gms/common/api/internal/ao;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->h:Lcom/google/android/gms/common/api/internal/ao;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/an;Lcom/google/android/gms/b/a/l;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/an;->b(Lcom/google/android/gms/b/a/l;)V

    return-void
.end method

.method private final b(Lcom/google/android/gms/b/a/l;)V
    .locals 5

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/b/a/l;->a()Lcom/google/android/gms/common/b;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/b/a/l;->b()Lcom/google/android/gms/common/internal/u;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/u;->b()Lcom/google/android/gms/common/b;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/common/b;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    const-string/jumbo v0, "SignInCoordinator"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->h:Lcom/google/android/gms/common/api/internal/ao;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/ao;->b(Lcom/google/android/gms/common/b;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->g:Lcom/google/android/gms/b/d;

    invoke-interface {v0}, Lcom/google/android/gms/b/d;->e()V

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/an;->h:Lcom/google/android/gms/common/api/internal/ao;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/u;->a()Lcom/google/android/gms/common/internal/l;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/an;->e:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/ao;->a(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->g:Lcom/google/android/gms/b/d;

    invoke-interface {v0}, Lcom/google/android/gms/b/d;->e()V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/an;->h:Lcom/google/android/gms/common/api/internal/ao;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/internal/ao;->b(Lcom/google/android/gms/common/b;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->g:Lcom/google/android/gms/b/d;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->g:Lcom/google/android/gms/b/d;

    invoke-interface {v0}, Lcom/google/android/gms/b/d;->e()V

    .line 25
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->g:Lcom/google/android/gms/b/d;

    invoke-interface {v0}, Lcom/google/android/gms/b/d;->e()V

    .line 29
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->g:Lcom/google/android/gms/b/d;

    invoke-interface {v0, p0}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/b/a/d;)V

    .line 27
    return-void
.end method

.method public final a(Lcom/google/android/gms/b/a/l;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/ap;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/ap;-><init>(Lcom/google/android/gms/common/api/internal/an;Lcom/google/android/gms/b/a/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/ao;)V
    .locals 7

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->g:Lcom/google/android/gms/b/d;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->g:Lcom/google/android/gms/b/d;

    invoke-interface {v0}, Lcom/google/android/gms/b/d;->e()V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->f:Lcom/google/android/gms/common/internal/d;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Integer;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->d:Lcom/google/android/gms/common/api/a$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/an;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/an;->c:Landroid/os/Handler;

    .line 14
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/an;->f:Lcom/google/android/gms/common/internal/d;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/an;->f:Lcom/google/android/gms/common/internal/d;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/d;->h()Lcom/google/android/gms/b/a;

    move-result-object v4

    move-object v5, p0

    move-object v6, p0

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Ljava/lang/Object;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/d;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->g:Lcom/google/android/gms/b/d;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/an;->h:Lcom/google/android/gms/common/api/internal/ao;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->e:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/am;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/am;-><init>(Lcom/google/android/gms/common/api/internal/an;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    :goto_0
    return-void

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->g:Lcom/google/android/gms/b/d;

    invoke-interface {v0}, Lcom/google/android/gms/b/d;->c()V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/common/b;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->h:Lcom/google/android/gms/common/api/internal/ao;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/ao;->b(Lcom/google/android/gms/common/b;)V

    .line 31
    return-void
.end method
