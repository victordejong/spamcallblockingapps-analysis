.class public final Lcom/google/android/gms/internal/ads/drc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:I

.field private final b:[I

.field private final c:[Lcom/google/android/gms/internal/ads/dqv;

.field private final d:[I

.field private final e:[[[I

.field private final f:Lcom/google/android/gms/internal/ads/dqv;


# direct methods
.method constructor <init>([I[Lcom/google/android/gms/internal/ads/dqv;[I[[[ILcom/google/android/gms/internal/ads/dqv;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drc;->b:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/drc;->c:[Lcom/google/android/gms/internal/ads/dqv;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/drc;->e:[[[I

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/drc;->d:[I

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/drc;->f:Lcom/google/android/gms/internal/ads/dqv;

    .line 7
    array-length v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/drc;->a:I

    .line 8
    return-void
.end method
