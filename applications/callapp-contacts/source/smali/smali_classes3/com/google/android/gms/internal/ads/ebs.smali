.class public final Lcom/google/android/gms/internal/ads/ebs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[I

.field private final c:[Lcom/google/android/gms/internal/ads/ebi;

.field private final d:[I

.field private final e:[[[I

.field private final f:Lcom/google/android/gms/internal/ads/ebi;


# direct methods
.method constructor <init>([I[Lcom/google/android/gms/internal/ads/ebi;[I[[[ILcom/google/android/gms/internal/ads/ebi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebs;->b:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ebs;->c:[Lcom/google/android/gms/internal/ads/ebi;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ebs;->e:[[[I

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ebs;->d:[I

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ebs;->f:Lcom/google/android/gms/internal/ads/ebi;

    .line 7
    array-length p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/ebs;->a:I

    return-void
.end method
