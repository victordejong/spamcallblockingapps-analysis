.class final Lcom/google/android/gms/internal/ads/cep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/aoz",
        "<+",
        "Lcom/google/android/gms/internal/ads/amh;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cir;

.field private final b:Lcom/google/android/gms/internal/ads/ceu;

.field private final c:Lcom/google/android/gms/internal/ads/cex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cex",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/Executor;

.field private e:Lcom/google/android/gms/internal/ads/cet;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cir;Lcom/google/android/gms/internal/ads/ceu;Lcom/google/android/gms/internal/ads/cex;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cir;",
            "Lcom/google/android/gms/internal/ads/ceu;",
            "Lcom/google/android/gms/internal/ads/cex",
            "<TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cep;->a:Lcom/google/android/gms/internal/ads/cir;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cep;->b:Lcom/google/android/gms/internal/ads/ceu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cep;->c:Lcom/google/android/gms/internal/ads/cex;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cep;->d:Ljava/util/concurrent/Executor;

    .line 6
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cep;Lcom/google/android/gms/internal/ads/cet;)Lcom/google/android/gms/internal/ads/cet;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cep;->e:Lcom/google/android/gms/internal/ads/cet;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cep;)Lcom/google/android/gms/internal/ads/cjb;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cep;->b()Lcom/google/android/gms/internal/ads/cjb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cep;)Lcom/google/android/gms/internal/ads/cet;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cep;->e:Lcom/google/android/gms/internal/ads/cet;

    return-object v0
.end method

.method private final b()Lcom/google/android/gms/internal/ads/cjb;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cep;->c:Lcom/google/android/gms/internal/ads/cex;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cep;->b:Lcom/google/android/gms/internal/ads/ceu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cex;->a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoz;->a()Lcom/google/android/gms/internal/ads/chh;

    move-result-object v0

    .line 26
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    .line 27
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    .line 28
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->j:Lcom/google/android/gms/internal/ads/dyk;

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cep;->a:Lcom/google/android/gms/internal/ads/cir;

    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/cir;->a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dyk;)Lcom/google/android/gms/internal/ads/cjb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cep;->e:Lcom/google/android/gms/internal/ads/cet;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cep;->e:Lcom/google/android/gms/internal/ads/cet;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ar;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/cet;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cep;->b()Lcom/google/android/gms/internal/ads/cjb;

    move-result-object v1

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/cet;-><init>(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/cjb;Lcom/google/android/gms/internal/ads/cer;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cep;->e:Lcom/google/android/gms/internal/ads/cet;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cep;->e:Lcom/google/android/gms/internal/ads/cet;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 23
    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/ceo;->a:Lcom/google/android/gms/internal/ads/coe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cep;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cep;->c:Lcom/google/android/gms/internal/ads/cex;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cep;->b:Lcom/google/android/gms/internal/ads/ceu;

    .line 14
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cex;->a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/cef;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cep;->a:Lcom/google/android/gms/internal/ads/cir;

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/cir;->a()Lcom/google/android/gms/internal/ads/ciu;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ciu;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/cef;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aoy;->a(Lcom/google/android/gms/internal/ads/cef;)Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoz;->c()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cep;->a:Lcom/google/android/gms/internal/ads/cir;

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cir;->a()Lcom/google/android/gms/internal/ads/ciu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ang;->a(Lcom/google/android/gms/internal/ads/ciu;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crb;->c(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ceq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ceq;-><init>(Lcom/google/android/gms/internal/ads/cep;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cep;->d:Ljava/util/concurrent/Executor;

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crb;->a(Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/ads/zzclc;

    new-instance v2, Lcom/google/android/gms/internal/ads/cer;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/cer;-><init>(Lcom/google/android/gms/internal/ads/cep;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cep;->d:Ljava/util/concurrent/Executor;

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    goto :goto_1
.end method
