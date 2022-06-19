.class final synthetic Lcom/google/android/gms/internal/ads/bcb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aee;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bbv;

.field private final b:Lcom/google/android/gms/internal/ads/act;

.field private final c:Lcom/google/android/gms/internal/ads/yp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bbv;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/yp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcb;->a:Lcom/google/android/gms/internal/ads/bbv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bcb;->b:Lcom/google/android/gms/internal/ads/act;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bcb;->c:Lcom/google/android/gms/internal/ads/yp;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcb;->a:Lcom/google/android/gms/internal/ads/bbv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcb;->b:Lcom/google/android/gms/internal/ads/act;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bcb;->c:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/bbv;->b(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/yp;Z)V

    return-void
.end method
