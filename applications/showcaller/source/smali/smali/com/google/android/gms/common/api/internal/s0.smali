.class public final Lcom/google/android/gms/common/api/internal/s0;
.super Lcom/google/android/gms/signin/internal/c;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/d$a;
.implements Lcom/google/android/gms/common/api/d$b;


# static fields
.field private static final d:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lc/c/a/a/c/f;",
            "Lc/c/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lc/c/a/a/c/f;",
            "Lc/c/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/common/internal/e;

.field private j:Lc/c/a/a/c/f;

.field private k:Lcom/google/android/gms/common/api/internal/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/a/c/e;->c:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lcom/google/android/gms/common/api/internal/s0;->d:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/e;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/s0;->d:Lcom/google/android/gms/common/api/a$a;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/s0;->f:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 2
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/e;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->i:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/e;->g()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->h:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->g:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method static synthetic A4(Lcom/google/android/gms/common/api/internal/s0;)Lcom/google/android/gms/common/api/internal/r0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/s0;->k:Lcom/google/android/gms/common/api/internal/r0;

    return-object p0
.end method

.method static synthetic V4(Lcom/google/android/gms/common/api/internal/s0;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->k0()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->o0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->l0()Lcom/google/android/gms/common/internal/zav;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zav;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->l0()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->o0()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x30

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->k:Lcom/google/android/gms/common/api/internal/r0;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/r0;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/s0;->j:Lc/c/a/a/c/f;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/a$f;->a()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->k:Lcom/google/android/gms/common/api/internal/r0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->k0()Lcom/google/android/gms/common/internal/i;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/s0;->h:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/r0;->b(Lcom/google/android/gms/common/internal/i;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public final D0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->k:Lcom/google/android/gms/common/api/internal/r0;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/r0;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final J0(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->j:Lc/c/a/a/c/f;

    .line 1
    invoke-interface {p1, p0}, Lc/c/a/a/c/f;->o(Lcom/google/android/gms/signin/internal/e;)V

    return-void
.end method

.method public final K1(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->f:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/q0;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/q0;-><init>(Lcom/google/android/gms/common/api/internal/s0;Lcom/google/android/gms/signin/internal/zak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a3(Lcom/google/android/gms/common/api/internal/r0;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->j:Lc/c/a/a/c/f;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->i:Lcom/google/android/gms/common/internal/e;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e;->k(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/s0;->g:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/s0;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->f:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/s0;->i:Lcom/google/android/gms/common/internal/e;

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/e;->i()Lc/c/a/a/c/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    .line 5
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->j:Lc/c/a/a/c/f;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->k:Lcom/google/android/gms/common/api/internal/r0;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->h:Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->j:Lc/c/a/a/c/f;

    .line 8
    invoke-interface {p1}, Lc/c/a/a/c/f;->k()V

    return-void

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->f:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/p0;

    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/p0;-><init>(Lcom/google/android/gms/common/api/internal/s0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c0(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->j:Lc/c/a/a/c/f;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->a()V

    return-void
.end method

.method public final y4()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->j:Lc/c/a/a/c/f;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    :cond_0
    return-void
.end method
