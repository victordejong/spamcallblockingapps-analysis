.class final Lcom/google/android/gms/internal/ads/bck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eeg;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bcf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcf;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bck;->b:Lcom/google/android/gms/internal/ads/bcf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bck;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eeh;)V
    .locals 4

    .line 2
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/eeh;->j:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bck;->b:Lcom/google/android/gms/internal/ads/bcf;

    .line 1261
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bcf;->r:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->a:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bck;->b:Lcom/google/android/gms/internal/ads/bcf;

    .line 1262
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/bcf;->p:Lcom/google/android/gms/internal/ads/ben;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ben;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bck;->b:Lcom/google/android/gms/internal/ads/bcf;

    .line 2262
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcf;->p:Lcom/google/android/gms/internal/ads/ben;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ben;->e()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bck;->b:Lcom/google/android/gms/internal/ads/bcf;

    .line 3262
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bcf;->p:Lcom/google/android/gms/internal/ads/ben;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ben;->f()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    .line 8
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bcf;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method
