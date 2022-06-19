.class public Lcom/google/android/gms/internal/ads/amh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/chd;

.field protected final b:Lcom/google/android/gms/internal/ads/cgr;

.field private final c:Lcom/google/android/gms/internal/ads/aqk;

.field private final d:Lcom/google/android/gms/internal/ads/arb;

.field private final e:Lcom/google/android/gms/internal/ads/ces;

.field private final f:Lcom/google/android/gms/internal/ads/apk;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/amk;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/amk;->a(Lcom/google/android/gms/internal/ads/amk;)Lcom/google/android/gms/internal/ads/chd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amh;->a:Lcom/google/android/gms/internal/ads/chd;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/amk;->b(Lcom/google/android/gms/internal/ads/amk;)Lcom/google/android/gms/internal/ads/cgr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amh;->b:Lcom/google/android/gms/internal/ads/cgr;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/amk;->c(Lcom/google/android/gms/internal/ads/amk;)Lcom/google/android/gms/internal/ads/aqk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amh;->c:Lcom/google/android/gms/internal/ads/aqk;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/amk;->d(Lcom/google/android/gms/internal/ads/amk;)Lcom/google/android/gms/internal/ads/arb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amh;->d:Lcom/google/android/gms/internal/ads/arb;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/amk;->e(Lcom/google/android/gms/internal/ads/amk;)Lcom/google/android/gms/internal/ads/ces;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amh;->e:Lcom/google/android/gms/internal/ads/ces;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/amk;->f(Lcom/google/android/gms/internal/ads/amk;)Lcom/google/android/gms/internal/ads/apk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amh;->f:Lcom/google/android/gms/internal/ads/apk;

    .line 8
    return-void
.end method


# virtual methods
.method public g_()V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amh;->d:Lcom/google/android/gms/internal/ads/arb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/arb;->a()V

    .line 11
    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/ads/aqk;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amh;->c:Lcom/google/android/gms/internal/ads/aqk;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/apk;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amh;->f:Lcom/google/android/gms/internal/ads/apk;

    return-object v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amh;->c:Lcom/google/android/gms/internal/ads/aqk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aqk;->c(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public final l()Lcom/google/android/gms/internal/ads/ces;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amh;->e:Lcom/google/android/gms/internal/ads/ces;

    return-object v0
.end method
