.class public final Lcom/google/android/gms/internal/ads/bzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/bzn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ta;

.field private final b:Lcom/google/android/gms/internal/ads/crs;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ta;Lcom/google/android/gms/internal/ads/crs;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bzm;->a:Lcom/google/android/gms/internal/ads/ta;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bzm;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bzm;->c:Landroid/content/Context;

    .line 5
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bzn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzm;->b:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/bzp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bzp;-><init>(Lcom/google/android/gms/internal/ads/bzm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/bzn;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzm;->a:Lcom/google/android/gms/internal/ads/ta;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bzm;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/bzn;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    :goto_0
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzm;->a:Lcom/google/android/gms/internal/ads/ta;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bzm;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ta;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 10
    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    move-object v6, v0

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzm;->a:Lcom/google/android/gms/internal/ads/ta;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bzm;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ta;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 12
    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzm;->a:Lcom/google/android/gms/internal/ads/ta;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bzm;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ta;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 14
    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzm;->a:Lcom/google/android/gms/internal/ads/ta;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bzm;->c:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/ta;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 16
    if-nez v4, :cond_3

    const-string/jumbo v4, ""

    .line 17
    :cond_3
    const-string/jumbo v0, "TIME_OUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->V:Lcom/google/android/gms/internal/ads/ect;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Long;

    move-object v5, v0

    .line 22
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/bzn;

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_4
    move-object v6, v0

    .line 10
    goto :goto_1

    :cond_5
    move-object v5, v1

    .line 21
    goto :goto_2
.end method
