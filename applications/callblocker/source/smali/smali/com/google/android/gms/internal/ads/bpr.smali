.class public final Lcom/google/android/gms/internal/ads/bpr;
.super Lcom/google/android/gms/internal/ads/bpq;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/bpq",
        "<",
        "Lcom/google/android/gms/internal/ads/avq;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/afh;

.field private final b:Lcom/google/android/gms/internal/ads/apb$a;

.field private final c:Lcom/google/android/gms/internal/ads/bsa;

.field private final d:Lcom/google/android/gms/internal/ads/atf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afh;Lcom/google/android/gms/internal/ads/apb$a;Lcom/google/android/gms/internal/ads/bsa;Lcom/google/android/gms/internal/ads/atf;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bpq;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpr;->a:Lcom/google/android/gms/internal/ads/afh;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpr;->b:Lcom/google/android/gms/internal/ads/apb$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bpr;->c:Lcom/google/android/gms/internal/ads/bsa;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bpr;->d:Lcom/google/android/gms/internal/ads/atf;

    .line 6
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/chh;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chh;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/avq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpr;->a:Lcom/google/android/gms/internal/ads/afh;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->k()Lcom/google/android/gms/internal/ads/awp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpr;->b:Lcom/google/android/gms/internal/ads/apb$a;

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/apb$a;->a(Lcom/google/android/gms/internal/ads/chh;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v1

    .line 10
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/apb$a;->a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/apb$a;->a()Lcom/google/android/gms/internal/ads/apb;

    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/awp;->a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/awp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpr;->d:Lcom/google/android/gms/internal/ads/atf;

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/awp;->a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/awp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpr;->c:Lcom/google/android/gms/internal/ads/bsa;

    .line 14
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/awp;->a(Lcom/google/android/gms/internal/ads/bsa;)Lcom/google/android/gms/internal/ads/awp;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/awp;->a()Lcom/google/android/gms/internal/ads/awq;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/awq;->b()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ang;->b()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
