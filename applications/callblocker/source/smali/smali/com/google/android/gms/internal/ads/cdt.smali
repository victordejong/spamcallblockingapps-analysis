.class public final Lcom/google/android/gms/internal/ads/cdt;
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
        "Lcom/google/android/gms/internal/ads/ciy",
        "<TAdT;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/aoz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/crv;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdt;->b:Ljava/util/concurrent/Executor;

    .line 3
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
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;>;"
        }
    .end annotation

    .prologue
    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cew;->b:Lcom/google/android/gms/internal/ads/ceu;

    .line 5
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/cex;->a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/cfc;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/cfc;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aoy;->a(Lcom/google/android/gms/internal/ads/cfc;)Lcom/google/android/gms/internal/ads/aoy;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdt;->a:Lcom/google/android/gms/internal/ads/aoz;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdt;->a:Lcom/google/android/gms/internal/ads/aoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoz;->c()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v1

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/ciy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/ciy;-><init>()V

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cew;->a:Lcom/google/android/gms/internal/ads/pw;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cew;->a:Lcom/google/android/gms/internal/ads/pw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ang;->a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crb;->c(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/cdw;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/android/gms/internal/ads/cdw;-><init>(Lcom/google/android/gms/internal/ads/cdt;Lcom/google/android/gms/internal/ads/ciy;Lcom/google/android/gms/internal/ads/ang;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdt;->b:Ljava/util/concurrent/Executor;

    .line 14
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/crb;->a(Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/cdv;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/cdv;-><init>(Lcom/google/android/gms/internal/ads/ciy;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cdt;->b:Ljava/util/concurrent/Executor;

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crb;->a(Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    .line 16
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ang;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdt;->a:Lcom/google/android/gms/internal/ads/aoz;

    .line 19
    return-object v0
.end method
