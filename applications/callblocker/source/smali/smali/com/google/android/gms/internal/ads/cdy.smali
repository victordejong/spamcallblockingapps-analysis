.class public final Lcom/google/android/gms/internal/ads/cdy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cev;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/aoz",
        "<TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/amh;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cev",
        "<TR;TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cev",
            "<TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/cev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cev",
            "<TR;",
            "Lcom/google/android/gms/internal/ads/cei",
            "<TAdT;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/cjh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cjh",
            "<TAdT;>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/internal/ads/aoz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cev;Lcom/google/android/gms/internal/ads/cev;Lcom/google/android/gms/internal/ads/cjh;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cev",
            "<TR;TAdT;>;",
            "Lcom/google/android/gms/internal/ads/cev",
            "<TR;",
            "Lcom/google/android/gms/internal/ads/cei",
            "<TAdT;>;>;",
            "Lcom/google/android/gms/internal/ads/cjh",
            "<TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdy;->a:Lcom/google/android/gms/internal/ads/cev;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cdy;->b:Lcom/google/android/gms/internal/ads/cev;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cdy;->c:Lcom/google/android/gms/internal/ads/cjh;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cdy;->e:Ljava/util/concurrent/Executor;

    .line 6
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/ciy;Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;",
            "Lcom/google/android/gms/internal/ads/cew;",
            "Lcom/google/android/gms/internal/ads/cex",
            "<TR;>;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TAdT;>;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cew;->b:Lcom/google/android/gms/internal/ads/ceu;

    .line 22
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/cex;->a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v0

    .line 23
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ciy;->c:Lcom/google/android/gms/internal/ads/amh;

    if-eqz v1, :cond_0

    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    .line 25
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ciy;->c:Lcom/google/android/gms/internal/ads/amh;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amh;->l()Lcom/google/android/gms/internal/ads/ces;

    move-result-object v1

    .line 27
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoz;->d()Lcom/google/android/gms/internal/ads/ces;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ces;->a(Lcom/google/android/gms/internal/ads/ces;)V

    .line 28
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ciy;->c:Lcom/google/android/gms/internal/ads/amh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ciy;->b:Lcom/google/android/gms/internal/ads/chd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aoy;->a(Lcom/google/android/gms/internal/ads/chd;)Lcom/google/android/gms/internal/ads/aoy;

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdy;->a:Lcom/google/android/gms/internal/ads/cev;

    new-instance v2, Lcom/google/android/gms/internal/ads/ceb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/ceb;-><init>(Lcom/google/android/gms/internal/ads/aoy;)V

    invoke-interface {v1, p2, v2}, Lcom/google/android/gms/internal/ads/cev;->a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdy;->a:Lcom/google/android/gms/internal/ads/cev;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cev;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdy;->d:Lcom/google/android/gms/internal/ads/aoz;

    move-object v0, v1

    .line 32
    goto :goto_0
.end method

.method private final declared-synchronized b()Lcom/google/android/gms/internal/ads/aoz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 7
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdy;->d:Lcom/google/android/gms/internal/ads/aoz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cec;Lcom/google/android/gms/internal/ads/cex;Lcom/google/android/gms/internal/ads/cei;)Lcom/google/android/gms/internal/ads/crt;
    .locals 8

    .prologue
    .line 45
    .line 46
    if-eqz p4, :cond_2

    .line 47
    iget-object v7, p4, Lcom/google/android/gms/internal/ads/cei;->a:Lcom/google/android/gms/internal/ads/cjb;

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/cec;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cec;->a:Lcom/google/android/gms/internal/ads/cex;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/cec;->b:Lcom/google/android/gms/internal/ads/cew;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/cec;->c:Lcom/google/android/gms/internal/ads/dya;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/cec;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/cec;->e:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/cec;->f:Lcom/google/android/gms/internal/ads/dyk;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/cec;-><init>(Lcom/google/android/gms/internal/ads/cex;Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/dyk;Lcom/google/android/gms/internal/ads/cjb;)V

    .line 50
    iget-object v1, p4, Lcom/google/android/gms/internal/ads/cei;->c:Lcom/google/android/gms/internal/ads/ciy;

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cdy;->d:Lcom/google/android/gms/internal/ads/aoz;

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdy;->c:Lcom/google/android/gms/internal/ads/cjh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/cjh;->a(Lcom/google/android/gms/internal/ads/cjn;)V

    .line 53
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/cei;->c:Lcom/google/android/gms/internal/ads/ciy;

    invoke-direct {p0, v0, p1, p3}, Lcom/google/android/gms/internal/ads/cdy;->a(Lcom/google/android/gms/internal/ads/ciy;Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdy;->c:Lcom/google/android/gms/internal/ads/cjh;

    .line 55
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/cjh;->b(Lcom/google/android/gms/internal/ads/cjn;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cew;->b:Lcom/google/android/gms/internal/ads/ceu;

    .line 58
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/cex;->a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdy;->d:Lcom/google/android/gms/internal/ads/aoz;

    .line 61
    new-instance v0, Lcom/google/android/gms/internal/ads/cdz;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/ads/cdz;-><init>(Lcom/google/android/gms/internal/ads/cdy;Lcom/google/android/gms/internal/ads/cex;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cdy;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdy;->c:Lcom/google/android/gms/internal/ads/cjh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/cjh;->a(Lcom/google/android/gms/internal/ads/cjn;)V

    .line 64
    new-instance v0, Lcom/google/android/gms/internal/ads/cew;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cew;->b:Lcom/google/android/gms/internal/ads/ceu;

    iget-object v2, p4, Lcom/google/android/gms/internal/ads/cei;->b:Lcom/google/android/gms/internal/ads/pw;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cew;-><init>(Lcom/google/android/gms/internal/ads/ceu;Lcom/google/android/gms/internal/ads/pw;)V

    move-object p1, v0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdy;->a:Lcom/google/android/gms/internal/ads/cev;

    .line 66
    invoke-interface {v0, p1, p3}, Lcom/google/android/gms/internal/ads/cev;->a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdy;->a:Lcom/google/android/gms/internal/ads/cev;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cev;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdy;->d:Lcom/google/android/gms/internal/ads/aoz;

    move-object v0, v1

    .line 68
    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cew;",
            "Lcom/google/android/gms/internal/ads/cex",
            "<TR;>;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TAdT;>;"
        }
    .end annotation

    .prologue
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cew;->b:Lcom/google/android/gms/internal/ads/ceu;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/cex;->a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoz;->a()Lcom/google/android/gms/internal/ads/chh;

    move-result-object v0

    .line 11
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    .line 12
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    .line 13
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/chh;->j:Lcom/google/android/gms/internal/ads/dyk;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/cec;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cdy;->e:Ljava/util/concurrent/Executor;

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/cec;-><init>(Lcom/google/android/gms/internal/ads/cex;Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/dyk;Lcom/google/android/gms/internal/ads/cjb;)V

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdy;->b:Lcom/google/android/gms/internal/ads/cev;

    .line 17
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/cev;->a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crb;->c(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/cdx;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/cdx;-><init>(Lcom/google/android/gms/internal/ads/cdy;Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cec;Lcom/google/android/gms/internal/ads/cex;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdy;->e:Ljava/util/concurrent/Executor;

    .line 19
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/crb;->a(Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 20
    monitor-exit p0

    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/cex;Lcom/google/android/gms/internal/ads/cjl;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    .prologue
    .line 34
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cjl;->a:Lcom/google/android/gms/internal/ads/ciy;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cjl;->b:Lcom/google/android/gms/internal/ads/cjn;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cjl;->b:Lcom/google/android/gms/internal/ads/cjn;

    check-cast v0, Lcom/google/android/gms/internal/ads/cec;

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g;->a()Lcom/google/android/gms/internal/ads/dwv$g$c;

    move-result-object v1

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g$a;->a()Lcom/google/android/gms/internal/ads/dwv$g$a$a;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/dwv$g$b;->a:Lcom/google/android/gms/internal/ads/dwv$g$b;

    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/dwv$g$a$a;->a(Lcom/google/android/gms/internal/ads/dwv$g$b;)Lcom/google/android/gms/internal/ads/dwv$g$a$a;

    move-result-object v2

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g$d;->a()Lcom/google/android/gms/internal/ads/dwv$g$d$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/dwv$g$a$a;->a(Lcom/google/android/gms/internal/ads/dwv$g$d$a;)Lcom/google/android/gms/internal/ads/dwv$g$a$a;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dwv$g$c;->a(Lcom/google/android/gms/internal/ads/dwv$g$a$a;)Lcom/google/android/gms/internal/ads/dwv$g$c;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v1, Lcom/google/android/gms/internal/ads/dwv$g;

    .line 42
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/cjl;->a:Lcom/google/android/gms/internal/ads/ciy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ciy;->a:Lcom/google/android/gms/internal/ads/ang;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ang;->c()Lcom/google/android/gms/internal/ads/ass;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ass;->c(Lcom/google/android/gms/internal/ads/dwv$g;)V

    .line 43
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cjl;->a:Lcom/google/android/gms/internal/ads/ciy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cec;->b:Lcom/google/android/gms/internal/ads/cew;

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/cdy;->a(Lcom/google/android/gms/internal/ads/ciy;Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclp;

    const-string/jumbo v1, "Empty prefetch"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cdy;->b()Lcom/google/android/gms/internal/ads/aoz;

    move-result-object v0

    return-object v0
.end method
