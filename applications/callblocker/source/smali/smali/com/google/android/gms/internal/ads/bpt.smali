.class public final Lcom/google/android/gms/internal/ads/bpt;
.super Lcom/google/android/gms/internal/ads/bpq;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/bpq",
        "<",
        "Lcom/google/android/gms/internal/ads/bdr;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/afh;

.field private final b:Lcom/google/android/gms/internal/ads/apb$a;

.field private final c:Lcom/google/android/gms/internal/ads/atf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afh;Lcom/google/android/gms/internal/ads/apb$a;Lcom/google/android/gms/internal/ads/atf;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bpq;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpt;->a:Lcom/google/android/gms/internal/ads/afh;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpt;->b:Lcom/google/android/gms/internal/ads/apb$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bpt;->c:Lcom/google/android/gms/internal/ads/atf;

    .line 5
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
            "Lcom/google/android/gms/internal/ads/bdr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpt;->a:Lcom/google/android/gms/internal/ads/afh;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->m()Lcom/google/android/gms/internal/ads/bdx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpt;->b:Lcom/google/android/gms/internal/ads/apb$a;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/apb$a;->a(Lcom/google/android/gms/internal/ads/chh;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/apb$a;->a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/apb$a;->a()Lcom/google/android/gms/internal/ads/apb;

    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/bdx;->a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/bdx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpt;->c:Lcom/google/android/gms/internal/ads/atf;

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/bdx;->a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/bdx;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bdx;->a()Lcom/google/android/gms/internal/ads/bdu;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bdu;->c()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ang;->b()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
