.class final Lcom/google/android/gms/internal/ads/wf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/util/zzf;

.field private final b:Lcom/google/android/gms/internal/ads/wo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzf;Lcom/google/android/gms/internal/ads/wo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wf;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wf;->b:Lcom/google/android/gms/internal/ads/wo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aj:Lcom/google/android/gms/internal/ads/af;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->b:Lcom/google/android/gms/internal/ads/wo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wo;->a()Z

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ai:Lcom/google/android/gms/internal/ads/af;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aj:Lcom/google/android/gms/internal/ads/af;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wf;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzdk(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzdk(I)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wf;->a()V

    return-void
.end method
