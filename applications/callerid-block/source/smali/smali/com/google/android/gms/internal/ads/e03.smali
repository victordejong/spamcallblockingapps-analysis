.class final Lcom/google/android/gms/internal/ads/e03;
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

.field final synthetic e:Lcom/google/android/gms/internal/ads/k03;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/k03;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e03;->e:Lcom/google/android/gms/internal/ads/k03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/e03;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/e03;->c:Lcom/google/android/gms/internal/ads/zzyx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/e03;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/l03;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e03;->b:Landroid/content/Context;

    const-string v1, "search"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/k03;->j(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/k2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/k2;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e03;->e:Lcom/google/android/gms/internal/ads/k03;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/k03;)Lcom/google/android/gms/internal/ads/oz2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e03;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/e03;->c:Lcom/google/android/gms/internal/ads/zzyx;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/e03;->d:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/oz2;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/h0;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e03;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e03;->c:Lcom/google/android/gms/internal/ads/zzyx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e03;->d:Ljava/lang/String;

    const v3, 0xc91ed10

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/h0;->S1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/w;

    move-result-object p1

    return-object p1
.end method
