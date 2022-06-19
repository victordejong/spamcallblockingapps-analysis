.class final Lcom/google/android/gms/internal/ads/f03;
.super Lcom/google/android/gms/internal/ads/l03;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/l03<",
        "Lcom/google/android/gms/internal/ads/w;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzyx;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/google/android/gms/internal/ads/he;

.field final synthetic f:Lcom/google/android/gms/internal/ads/k03;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/k03;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f03;->f:Lcom/google/android/gms/internal/ads/k03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f03;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/f03;->c:Lcom/google/android/gms/internal/ads/zzyx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/f03;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/f03;->e:Lcom/google/android/gms/internal/ads/he;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/l03;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f03;->b:Landroid/content/Context;

    const-string v1, "interstitial"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/k03;->j(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/k2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/k2;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f03;->f:Lcom/google/android/gms/internal/ads/k03;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/k03;)Lcom/google/android/gms/internal/ads/oz2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f03;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/f03;->c:Lcom/google/android/gms/internal/ads/zzyx;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/f03;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/f03;->e:Lcom/google/android/gms/internal/ads/he;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/oz2;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/h0;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f03;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/f03;->c:Lcom/google/android/gms/internal/ads/zzyx;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/f03;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/f03;->e:Lcom/google/android/gms/internal/ads/he;

    const v6, 0xc91ed10

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/h0;->P5(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/w;

    move-result-object p1

    return-object p1
.end method
