.class final synthetic Lcom/google/android/gms/internal/ads/bin;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bij;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/gms/internal/ads/yo;

.field private final d:Ljava/lang/String;

.field private final e:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bij;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/yo;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bin;->a:Lcom/google/android/gms/internal/ads/bij;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bin;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bin;->c:Lcom/google/android/gms/internal/ads/yo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bin;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/bin;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bin;->a:Lcom/google/android/gms/internal/ads/bij;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bin;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bin;->c:Lcom/google/android/gms/internal/ads/yo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bin;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/bin;->e:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bij;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/yo;Ljava/lang/String;J)V

    return-void
.end method
