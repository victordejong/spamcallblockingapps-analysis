.class public final Lcom/google/android/gms/internal/ads/dc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y6;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ni;

.field private b:Lcom/google/android/gms/internal/ads/ol;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/ni;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ni;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dc;->a:Lcom/google/android/gms/internal/ads/ni;

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/gms/internal/ads/dc;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dc;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dc;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/dc;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/dc;->d:I

    return-object p0
.end method

.method public final c(I)Lcom/google/android/gms/internal/ads/dc;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/dc;->e:I

    return-object p0
.end method

.method public final d(Z)Lcom/google/android/gms/internal/ads/dc;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dc;->f:Z

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/ol;)Lcom/google/android/gms/internal/ads/dc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dc;->b:Lcom/google/android/gms/internal/ads/ol;

    return-object p0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zd;
    .locals 10

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/ads/zd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dc;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/ads/dc;->d:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dc;->e:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/dc;->f:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dc;->a:Lcom/google/android/gms/internal/ads/ni;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zd;-><init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/ni;Lcom/google/android/gms/internal/ads/yu2;ZLcom/google/android/gms/internal/ads/ad;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dc;->b:Lcom/google/android/gms/internal/ads/ol;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/y4;->f(Lcom/google/android/gms/internal/ads/ol;)V

    :cond_0
    return-object v9
.end method

.method public final bridge synthetic zza()Lcom/google/android/gms/internal/ads/w7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dc;->f()Lcom/google/android/gms/internal/ads/zd;

    move-result-object v0

    return-object v0
.end method
