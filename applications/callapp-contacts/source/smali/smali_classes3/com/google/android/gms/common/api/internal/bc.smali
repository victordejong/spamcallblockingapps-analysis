.class public final Lcom/google/android/gms/common/api/internal/bc;
.super Lcom/google/android/gms/signin/internal/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/g$a;
.implements Lcom/google/android/gms/common/api/g$b;


# static fields
.field private static final a:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/google/android/gms/signin/e;",
            "Lcom/google/android/gms/signin/a;",
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
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/google/android/gms/signin/e;",
            "Lcom/google/android/gms/signin/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/common/internal/e;

.field private g:Lcom/google/android/gms/signin/e;

.field private h:Lcom/google/android/gms/common/api/internal/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/signin/d;->c:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lcom/google/android/gms/common/api/internal/bc;->a:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/e;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/bc;->a:Lcom/google/android/gms/common/api/a$a;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bc;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bc;->c:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 2
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/e;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bc;->f:Lcom/google/android/gms/common/internal/e;

    .line 1000
    iget-object p1, p3, Lcom/google/android/gms/common/internal/e;->b:Ljava/util/Set;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bc;->e:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->d:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/bc;)Lcom/google/android/gms/common/api/internal/bb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/bc;->h:Lcom/google/android/gms/common/api/internal/bb;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/bc;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zab()Lcom/google/android/gms/common/internal/zav;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zav;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

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
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bc;->h:Lcom/google/android/gms/common/api/internal/bb;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/bb;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/bc;->g:Lcom/google/android/gms/signin/e;

    invoke-interface {p0}, Lcom/google/android/gms/signin/e;->disconnect()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->h:Lcom/google/android/gms/common/api/internal/bb;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zaa()Lcom/google/android/gms/common/internal/i;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bc;->e:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/bb;->a(Lcom/google/android/gms/common/internal/i;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->g:Lcom/google/android/gms/signin/e;

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/signin/e;->a(Lcom/google/android/gms/signin/internal/e;)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bc;->g:Lcom/google/android/gms/signin/e;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/signin/e;->disconnect()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->h:Lcom/google/android/gms/common/api/internal/bb;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/bb;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/bb;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->g:Lcom/google/android/gms/signin/e;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/signin/e;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->f:Lcom/google/android/gms/common/internal/e;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2000
    iput-object v1, v0, Lcom/google/android/gms/common/internal/e;->h:Ljava/lang/Integer;

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bc;->d:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/bc;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->c:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/bc;->f:Lcom/google/android/gms/common/internal/e;

    .line 3000
    iget-object v6, v5, Lcom/google/android/gms/common/internal/e;->g:Lcom/google/android/gms/signin/a;

    move-object v7, p0

    move-object v8, p0

    .line 5
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/g$a;Lcom/google/android/gms/common/api/g$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->g:Lcom/google/android/gms/signin/e;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bc;->h:Lcom/google/android/gms/common/api/internal/bb;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bc;->e:Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bc;->g:Lcom/google/android/gms/signin/e;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/signin/e;->c()V

    return-void

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bc;->c:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/az;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/az;-><init>(Lcom/google/android/gms/common/api/internal/bc;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/ba;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/ba;-><init>(Lcom/google/android/gms/common/api/internal/bc;Lcom/google/android/gms/signin/internal/zak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->g:Lcom/google/android/gms/signin/e;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/signin/e;->disconnect()V

    :cond_0
    return-void
.end method
