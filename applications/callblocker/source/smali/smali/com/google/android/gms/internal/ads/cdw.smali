.class final synthetic Lcom/google/android/gms/internal/ads/cdw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cdt;

.field private final b:Lcom/google/android/gms/internal/ads/ciy;

.field private final c:Lcom/google/android/gms/internal/ads/ang;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cdt;Lcom/google/android/gms/internal/ads/ciy;Lcom/google/android/gms/internal/ads/ang;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdw;->a:Lcom/google/android/gms/internal/ads/cdt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cdw;->b:Lcom/google/android/gms/internal/ads/ciy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cdw;->c:Lcom/google/android/gms/internal/ads/ang;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdw;->a:Lcom/google/android/gms/internal/ads/cdt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdw;->b:Lcom/google/android/gms/internal/ads/ciy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cdw;->c:Lcom/google/android/gms/internal/ads/ang;

    check-cast p1, Lcom/google/android/gms/internal/ads/chd;

    .line 2
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/ciy;->b:Lcom/google/android/gms/internal/ads/chd;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cha;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cgr;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v0, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    const/4 v1, 0x1

    .line 9
    const-string/jumbo v6, "FirstPartyRenderer"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 15
    :goto_2
    if-nez v2, :cond_3

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 18
    :goto_3
    return-object v0

    :cond_0
    move v0, v1

    .line 12
    goto :goto_1

    :cond_1
    move v1, v0

    .line 13
    goto :goto_0

    :cond_2
    move v2, v1

    .line 14
    goto :goto_2

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ang;->a(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_3
.end method
