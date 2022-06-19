.class final synthetic Lcom/google/android/gms/internal/ads/brk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ckj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/brh;

.field private final b:Lcom/google/android/gms/internal/ads/chd;

.field private final c:Lcom/google/android/gms/internal/ads/cgr;

.field private final d:Lcom/google/android/gms/internal/ads/bmx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/brh;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brk;->a:Lcom/google/android/gms/internal/ads/brh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/brk;->b:Lcom/google/android/gms/internal/ads/chd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/brk;->c:Lcom/google/android/gms/internal/ads/cgr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/brk;->d:Lcom/google/android/gms/internal/ads/bmx;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brk;->a:Lcom/google/android/gms/internal/ads/brh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/brk;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/brk;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/brk;->d:Lcom/google/android/gms/internal/ads/bmx;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/brh;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V

    return-void
.end method
