.class public abstract Lcom/google/android/gms/common/internal/h;
.super Lcom/google/android/gms/common/internal/c;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/a$f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/c",
        "<TT;>;",
        "Lcom/google/android/gms/common/api/a$f;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/common/internal/d;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/k;)V

    .line 14
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/k;)V
    .locals 9

    .prologue
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/i;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/i;

    move-result-object v3

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/e;->a()Lcom/google/android/gms/common/e;

    move-result-object v4

    .line 9
    invoke-static {p5}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/internal/e;

    .line 10
    invoke-static {p6}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/k;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/e;ILcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/k;)V

    .line 12
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/e;ILcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/k;)V
    .locals 9

    .prologue
    .line 20
    .line 21
    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/common/internal/h;->a(Lcom/google/android/gms/common/api/internal/e;)Lcom/google/android/gms/common/internal/c$a;

    move-result-object v6

    .line 22
    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/common/internal/h;->a(Lcom/google/android/gms/common/api/internal/k;)Lcom/google/android/gms/common/internal/c$b;

    move-result-object v7

    .line 23
    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/d;->g()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 24
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/f;ILcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;Ljava/lang/String;)V

    .line 25
    iput-object p6, p0, Lcom/google/android/gms/common/internal/h;->e:Lcom/google/android/gms/common/internal/d;

    .line 26
    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/d;->b()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/h;->g:Landroid/accounts/Account;

    .line 27
    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/d;->e()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/h;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/h;->f:Ljava/util/Set;

    .line 28
    return-void
.end method

.method private static a(Lcom/google/android/gms/common/api/internal/e;)Lcom/google/android/gms/common/internal/c$a;
    .locals 1

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/z;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/z;-><init>(Lcom/google/android/gms/common/api/internal/e;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/common/api/internal/k;)Lcom/google/android/gms/common/internal/c$b;
    .locals 1

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/aa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/aa;-><init>(Lcom/google/android/gms/common/api/internal/k;)V

    goto :goto_0
.end method

.method private final b(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/h;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    .line 43
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected final A()Lcom/google/android/gms/common/internal/d;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->e:Lcom/google/android/gms/common/internal/d;

    return-object v0
.end method

.method protected a(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    return-object p1
.end method

.method public d()I
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->d()I

    move-result v0

    return v0
.end method

.method public l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->f:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->g:Landroid/accounts/Account;

    return-object v0
.end method

.method protected final y()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->f:Ljava/util/Set;

    return-object v0
.end method
