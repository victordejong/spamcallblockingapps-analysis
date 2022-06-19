.class public final Lcom/google/android/gms/internal/ads/cn3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[I

.field private final c:[Lcom/google/android/gms/internal/ads/dv3;

.field private final d:[I

.field private final e:[[[I

.field private final f:Lcom/google/android/gms/internal/ads/dv3;


# direct methods
.method constructor <init>([Ljava/lang/String;[I[Lcom/google/android/gms/internal/ads/dv3;[I[[[ILcom/google/android/gms/internal/ads/dv3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cn3;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cn3;->b:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cn3;->c:[Lcom/google/android/gms/internal/ads/dv3;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cn3;->e:[[[I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cn3;->d:[I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cn3;->f:Lcom/google/android/gms/internal/ads/dv3;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn3;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/dv3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn3;->c:[Lcom/google/android/gms/internal/ads/dv3;

    aget-object p1, v0, p1

    return-object p1
.end method
