.class public final Lcom/google/android/gms/internal/ads/cee;
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
        "<TR;",
        "Lcom/google/android/gms/internal/ads/cei",
        "<TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cir;

.field private final b:Ljava/util/concurrent/Executor;

.field private c:Lcom/google/android/gms/internal/ads/crh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crh",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cir;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cej;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cej;-><init>(Lcom/google/android/gms/internal/ads/cee;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cee;->c:Lcom/google/android/gms/internal/ads/crh;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cee;->a:Lcom/google/android/gms/internal/ads/cir;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cee;->b:Ljava/util/concurrent/Executor;

    .line 5
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cew;",
            "Lcom/google/android/gms/internal/ads/cex",
            "<TR;>;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cei",
            "<TAdT;>;>;"
        }
    .end annotation

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/cep;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cee;->a:Lcom/google/android/gms/internal/ads/cir;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cew;->b:Lcom/google/android/gms/internal/ads/ceu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cee;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/google/android/gms/internal/ads/cep;-><init>(Lcom/google/android/gms/internal/ads/cir;Lcom/google/android/gms/internal/ads/ceu;Lcom/google/android/gms/internal/ads/cex;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cep;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crb;->c(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ceh;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ceh;-><init>(Lcom/google/android/gms/internal/ads/cee;Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cee;->b:Ljava/util/concurrent/Executor;

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crb;->a(Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    new-instance v2, Lcom/google/android/gms/internal/ads/ceg;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ceg;-><init>(Lcom/google/android/gms/internal/ads/cee;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cee;->b:Ljava/util/concurrent/Executor;

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    .line 11
    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;Lcom/google/android/gms/internal/ads/cet;)Lcom/google/android/gms/internal/ads/crt;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 13
    iget-object v3, p3, Lcom/google/android/gms/internal/ads/cet;->b:Lcom/google/android/gms/internal/ads/cjb;

    iget-object v4, p3, Lcom/google/android/gms/internal/ads/cet;->a:Lcom/google/android/gms/internal/ads/pw;

    .line 15
    if-eqz v3, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cee;->a:Lcom/google/android/gms/internal/ads/cir;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/cir;->a(Lcom/google/android/gms/internal/ads/cjb;)Lcom/google/android/gms/internal/ads/ciy;

    move-result-object v0

    move-object v1, v0

    .line 19
    :goto_0
    if-nez v3, :cond_1

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 29
    :goto_1
    return-object v0

    :cond_0
    move-object v1, v2

    .line 17
    goto :goto_0

    .line 21
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 22
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cew;->b:Lcom/google/android/gms/internal/ads/ceu;

    .line 23
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/cex;->a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoz;->c()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/ang;->c(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cee;->c:Lcom/google/android/gms/internal/ads/crh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cee;->b:Ljava/util/concurrent/Executor;

    .line 27
    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 28
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/cei;

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/cei;-><init>(Lcom/google/android/gms/internal/ads/cjb;Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/ciy;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_1
.end method

.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method
