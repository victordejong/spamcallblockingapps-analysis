.class public final Lcom/google/android/gms/internal/ads/bzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/bze;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crs;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/google/android/gms/internal/ads/bsn;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/chh;

.field private final f:Lcom/google/android/gms/internal/ads/bsl;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crs;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bsn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/bsl;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bzh;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bzh;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bzh;->g:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bzh;->c:Lcom/google/android/gms/internal/ads/bsn;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bzh;->d:Landroid/content/Context;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bzh;->e:Lcom/google/android/gms/internal/ads/chh;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bzh;->f:Lcom/google/android/gms/internal/ads/bsl;

    .line 9
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bze;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aI:Lcom/google/android/gms/internal/ads/ect;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/bzg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bzg;-><init>(Lcom/google/android/gms/internal/ads/bzh;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bzh;->a:Lcom/google/android/gms/internal/ads/crs;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/cqr;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 14
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method final synthetic a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/crt;
    .locals 8

    .prologue
    .line 15
    .line 16
    new-instance v7, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzh;->f:Lcom/google/android/gms/internal/ads/bsl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bsl;->a(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzh;->f:Lcom/google/android/gms/internal/ads/bsl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bsl;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mn;

    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    new-instance v6, Lcom/google/android/gms/internal/ads/bsu;

    invoke-direct {v6, p1, v0, v7}, Lcom/google/android/gms/internal/ads/bsu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/mn;Lcom/google/android/gms/internal/ads/yo;)V

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bzh;->d:Landroid/content/Context;

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bzh;->g:Ljava/lang/String;

    const/4 v3, 0x0

    .line 25
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bzh;->e:Lcom/google/android/gms/internal/ads/chh;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/chh;->e:Lcom/google/android/gms/internal/ads/dyd;

    move-object v3, p3

    .line 26
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mn;->a(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/mo;)V

    .line 28
    return-object v7
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/crt;
    .locals 8

    .prologue
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzh;->c:Lcom/google/android/gms/internal/ads/bsn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bzh;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bzh;->e:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bsn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bzh;->e:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bzh;->e:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 39
    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/ads/bzj;

    invoke-direct {v5, p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/bzj;-><init>(Lcom/google/android/gms/internal/ads/bzh;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzh;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 40
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/cqr;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crb;->c(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aH:Lcom/google/android/gms/internal/ads/ect;

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bzh;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    invoke-virtual {v2, v6, v7, v0, v5}, Lcom/google/android/gms/internal/ads/crb;->a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    const-class v2, Ljava/lang/Throwable;

    new-instance v5, Lcom/google/android/gms/internal/ads/bzi;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/bzi;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bzh;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 46
    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/gms/internal/ads/crb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    .line 47
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/crg;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/crm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bzl;

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/bzl;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bzh;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 51
    return-object v0
.end method
