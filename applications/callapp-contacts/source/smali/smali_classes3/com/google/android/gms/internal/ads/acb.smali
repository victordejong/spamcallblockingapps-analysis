.class final synthetic Lcom/google/android/gms/internal/ads/acb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ecd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/abw;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abw;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acb;->a:Lcom/google/android/gms/internal/ads/abw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/acb;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/acb;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ecb;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acb;->a:Lcom/google/android/gms/internal/ads/abw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acb;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/acb;->c:Z

    .line 1248
    new-instance v7, Lcom/google/android/gms/internal/ads/abq;

    if-eqz v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v3, v1

    .line 1251
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    iget v4, v1, Lcom/google/android/gms/internal/ads/aay;->d:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    iget v5, v1, Lcom/google/android/gms/internal/ads/aay;->e:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    iget v6, v1, Lcom/google/android/gms/internal/ads/aay;->h:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/abq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ecp;III)V

    .line 1252
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->m:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v7
.end method
