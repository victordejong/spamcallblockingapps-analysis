.class final synthetic Lcom/google/android/gms/internal/ads/oh1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uy1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ln1;

.field private final b:Lcom/google/android/gms/internal/ads/y40;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qh1;Lcom/google/android/gms/internal/ads/ln1;Lcom/google/android/gms/internal/ads/y40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oh1;->a:Lcom/google/android/gms/internal/ads/ln1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/oh1;->b:Lcom/google/android/gms/internal/ads/y40;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oh1;->a:Lcom/google/android/gms/internal/ads/ln1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oh1;->b:Lcom/google/android/gms/internal/ads/y40;

    check-cast p1, Lcom/google/android/gms/internal/ads/ml1;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/ln1;->b:Lcom/google/android/gms/internal/ads/ml1;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ml1;->b:Lcom/google/android/gms/internal/ads/kl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kl1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/al1;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/al1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "FirstPartyRenderer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/y40;->c(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    :goto_2
    return-object p1
.end method
