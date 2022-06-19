.class final Lcom/google/android/gms/internal/ads/cqf$k;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/cqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cqf$k;


# instance fields
.field volatile b:Ljava/lang/Thread;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field volatile c:Lcom/google/android/gms/internal/ads/cqf$k;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/cqf$k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cqf$k;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cqf$k;->a:Lcom/google/android/gms/internal/ads/cqf$k;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cqf;->f()Lcom/google/android/gms/internal/ads/cqf$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf$k;Ljava/lang/Thread;)V

    .line 4
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/cqf$k;)V
    .locals 1

    .prologue
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/cqf;->f()Lcom/google/android/gms/internal/ads/cqf$a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf$k;Lcom/google/android/gms/internal/ads/cqf$k;)V

    .line 6
    return-void
.end method
