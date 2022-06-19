.class public final Lcom/google/android/gms/internal/ads/drk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:[B

.field private final b:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drk;->a:[B

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/drk;->b:I

    .line 4
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/drk;->b:I

    add-int/2addr v0, p1

    return v0
.end method
