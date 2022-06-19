.class final synthetic Lcom/google/android/gms/internal/ads/da0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s01;

.field private final b:Lcom/google/android/gms/internal/ads/dk3;

.field private final c:Lcom/google/android/gms/internal/ads/jk3;

.field private final d:Ljava/io/IOException;

.field private final e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s01;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/da0;->a:Lcom/google/android/gms/internal/ads/s01;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/da0;->b:Lcom/google/android/gms/internal/ads/dk3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/da0;->c:Lcom/google/android/gms/internal/ads/jk3;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/da0;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/da0;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/da0;->a:Lcom/google/android/gms/internal/ads/s01;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/da0;->b:Lcom/google/android/gms/internal/ads/dk3;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/da0;->c:Lcom/google/android/gms/internal/ads/jk3;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/da0;->d:Ljava/io/IOException;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/da0;->e:Z

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/u11;

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/u11;->g(Lcom/google/android/gms/internal/ads/s01;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V

    return-void
.end method
