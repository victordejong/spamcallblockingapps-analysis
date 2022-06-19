.class final synthetic Lcom/google/android/gms/internal/ads/biy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bix;

.field private final b:Lcom/google/android/gms/internal/ads/pw;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bix;Lcom/google/android/gms/internal/ads/pw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/biy;->a:Lcom/google/android/gms/internal/ads/bix;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/biy;->b:Lcom/google/android/gms/internal/ads/pw;

    iput p3, p0, Lcom/google/android/gms/internal/ads/biy;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/biy;->a:Lcom/google/android/gms/internal/ads/bix;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/biy;->b:Lcom/google/android/gms/internal/ads/pw;

    iget v2, p0, Lcom/google/android/gms/internal/ads/biy;->c:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzclc;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/bix;->a(Lcom/google/android/gms/internal/ads/pw;ILcom/google/android/gms/internal/ads/zzclc;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
