.class final Lcom/google/android/gms/internal/ads/cqf$c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/cqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cqf$c;

.field static final b:Lcom/google/android/gms/internal/ads/cqf$c;


# instance fields
.field final c:Z

.field final d:Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/cqf;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sput-object v2, Lcom/google/android/gms/internal/ads/cqf$c;->b:Lcom/google/android/gms/internal/ads/cqf$c;

    .line 7
    sput-object v2, Lcom/google/android/gms/internal/ads/cqf$c;->a:Lcom/google/android/gms/internal/ads/cqf$c;

    .line 10
    :goto_0
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cqf$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cqf$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cqf$c;->b:Lcom/google/android/gms/internal/ads/cqf$c;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/cqf$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cqf$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cqf$c;->a:Lcom/google/android/gms/internal/ads/cqf$c;

    goto :goto_0
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/cqf$c;->c:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cqf$c;->d:Ljava/lang/Throwable;

    .line 4
    return-void
.end method
