.class public Lcom/google/android/gms/internal/ads/anp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ata;

.field protected final h:Lcom/google/android/gms/internal/ads/cpk;

.field protected final i:Lcom/google/android/gms/internal/ads/cov;

.field final j:Lcom/google/android/gms/internal/ads/asj;

.field final k:Lcom/google/android/gms/internal/ads/cmi;

.field final l:Lcom/google/android/gms/internal/ads/arf;

.field final m:Lcom/google/android/gms/internal/ads/aue;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/ans;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ans;->a:Lcom/google/android/gms/internal/ads/cpk;

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anp;->h:Lcom/google/android/gms/internal/ads/cpk;

    .line 1011
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ans;->b:Lcom/google/android/gms/internal/ads/cov;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anp;->i:Lcom/google/android/gms/internal/ads/cov;

    .line 1012
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ans;->c:Lcom/google/android/gms/internal/ads/asj;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anp;->j:Lcom/google/android/gms/internal/ads/asj;

    .line 1013
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ans;->d:Lcom/google/android/gms/internal/ads/ata;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anp;->a:Lcom/google/android/gms/internal/ads/ata;

    .line 1014
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ans;->e:Lcom/google/android/gms/internal/ads/cmi;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anp;->k:Lcom/google/android/gms/internal/ads/cmi;

    .line 1015
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ans;->f:Lcom/google/android/gms/internal/ads/arf;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;

    .line 1016
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ans;->g:Lcom/google/android/gms/internal/ads/aue;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/anp;->m:Lcom/google/android/gms/internal/ads/aue;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anp;->j:Lcom/google/android/gms/internal/ads/asj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/asj;->c(Landroid/content/Context;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anp;->a:Lcom/google/android/gms/internal/ads/ata;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ata;->a()V

    return-void
.end method
