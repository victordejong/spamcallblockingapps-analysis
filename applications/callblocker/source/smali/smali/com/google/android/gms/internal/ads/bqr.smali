.class final synthetic Lcom/google/android/gms/internal/ads/bqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bqn;

.field private final b:Lcom/google/android/gms/internal/ads/act;

.field private final c:Lcom/google/android/gms/internal/ads/cgr;

.field private final d:Lcom/google/android/gms/internal/ads/bdt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bqn;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bdt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqr;->a:Lcom/google/android/gms/internal/ads/bqn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqr;->b:Lcom/google/android/gms/internal/ads/act;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bqr;->c:Lcom/google/android/gms/internal/ads/cgr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bqr;->d:Lcom/google/android/gms/internal/ads/bdt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqr;->b:Lcom/google/android/gms/internal/ads/act;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqr;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bqr;->d:Lcom/google/android/gms/internal/ads/bdt;

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cgr;->E:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->J()V

    .line 5
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->p()V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ah:Lcom/google/android/gms/internal/ads/ect;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vj;->a(Lcom/google/android/gms/internal/ads/act;)Z

    .line 10
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bdt;->h()Lcom/google/android/gms/internal/ads/bdr;

    move-result-object v0

    .line 11
    return-object v0
.end method
