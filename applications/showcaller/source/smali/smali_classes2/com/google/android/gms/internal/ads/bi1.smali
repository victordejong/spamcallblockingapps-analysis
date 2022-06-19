.class final synthetic Lcom/google/android/gms/internal/ads/bi1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/mi1;

.field private final b:Lcom/google/android/gms/internal/ads/zzbdl;

.field private final c:Lcom/google/android/gms/internal/ads/ej2;

.field private final d:Lcom/google/android/gms/internal/ads/jj2;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mi1;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bi1;->a:Lcom/google/android/gms/internal/ads/mi1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bi1;->b:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bi1;->c:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bi1;->d:Lcom/google/android/gms/internal/ads/jj2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bi1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bi1;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bi1;->a:Lcom/google/android/gms/internal/ads/mi1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bi1;->b:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bi1;->c:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bi1;->d:Lcom/google/android/gms/internal/ads/jj2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bi1;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bi1;->f:Ljava/lang/String;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mi1;->d(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
