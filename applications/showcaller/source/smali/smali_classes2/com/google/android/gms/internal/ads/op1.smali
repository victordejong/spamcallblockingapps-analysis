.class final synthetic Lcom/google/android/gms/internal/ads/op1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/vp1;

.field private final e:Ljava/lang/Object;

.field private final f:Lcom/google/android/gms/internal/ads/vi0;

.field private final g:Ljava/lang/String;

.field private final h:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vp1;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vi0;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/op1;->d:Lcom/google/android/gms/internal/ads/vp1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/op1;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/op1;->f:Lcom/google/android/gms/internal/ads/vi0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/op1;->g:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/op1;->h:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/op1;->d:Lcom/google/android/gms/internal/ads/vp1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/op1;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/op1;->f:Lcom/google/android/gms/internal/ads/vi0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/op1;->g:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/op1;->h:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/vp1;->p(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vi0;Ljava/lang/String;J)V

    return-void
.end method
