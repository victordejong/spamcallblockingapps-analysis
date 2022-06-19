.class public final Lcom/google/android/gms/internal/ads/bpp;
.super Lcom/google/android/gms/internal/ads/bpq;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/bpq",
        "<",
        "Lcom/google/android/gms/internal/ads/akk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/afh;

.field private final b:Lcom/google/android/gms/internal/ads/apb$a;

.field private final c:Lcom/google/android/gms/internal/ads/bsa;

.field private final d:Lcom/google/android/gms/internal/ads/atf;

.field private final e:Lcom/google/android/gms/internal/ads/axk;

.field private final f:Lcom/google/android/gms/internal/ads/arz;

.field private final g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afh;Lcom/google/android/gms/internal/ads/apb$a;Lcom/google/android/gms/internal/ads/bsa;Lcom/google/android/gms/internal/ads/atf;Lcom/google/android/gms/internal/ads/axk;Lcom/google/android/gms/internal/ads/arz;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bpq;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpp;->a:Lcom/google/android/gms/internal/ads/afh;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpp;->b:Lcom/google/android/gms/internal/ads/apb$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bpp;->c:Lcom/google/android/gms/internal/ads/bsa;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bpp;->d:Lcom/google/android/gms/internal/ads/atf;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bpp;->e:Lcom/google/android/gms/internal/ads/axk;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bpp;->f:Lcom/google/android/gms/internal/ads/arz;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bpp;->g:Landroid/view/ViewGroup;

    .line 9
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/chh;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chh;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/akk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpp;->a:Lcom/google/android/gms/internal/ads/afh;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->h()Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpp;->b:Lcom/google/android/gms/internal/ads/apb$a;

    .line 12
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/apb$a;->a(Lcom/google/android/gms/internal/ads/chh;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/apb$a;->a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/apb$a;->a()Lcom/google/android/gms/internal/ads/apb;

    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpp;->d:Lcom/google/android/gms/internal/ads/atf;

    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpp;->c:Lcom/google/android/gms/internal/ads/bsa;

    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/bsa;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpp;->e:Lcom/google/android/gms/internal/ads/axk;

    .line 18
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/axk;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ame;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpp;->f:Lcom/google/android/gms/internal/ads/arz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ame;-><init>(Lcom/google/android/gms/internal/ads/arz;)V

    .line 19
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/ame;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/akf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpp;->g:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/akf;-><init>(Landroid/view/ViewGroup;)V

    .line 20
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/akf;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/alg;->a()Lcom/google/android/gms/internal/ads/alh;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/alh;->b()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ang;->b()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
