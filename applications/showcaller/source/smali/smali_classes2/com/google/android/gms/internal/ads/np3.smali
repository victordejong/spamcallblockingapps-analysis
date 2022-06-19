.class final synthetic Lcom/google/android/gms/internal/ads/np3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/tp3;

.field private final e:J

.field private final f:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tp3;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/np3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/np3;->e:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/np3;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/np3;->e:J

    iget v3, p0, Lcom/google/android/gms/internal/ads/np3;->f:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/tp3;->p(JI)V

    return-void
.end method
