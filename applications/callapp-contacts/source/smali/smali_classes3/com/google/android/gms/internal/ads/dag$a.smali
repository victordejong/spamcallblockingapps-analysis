.class final Lcom/google/android/gms/internal/ads/dag$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/dag$a;

.field static final b:Lcom/google/android/gms/internal/ads/dag$a;


# instance fields
.field final c:Z

.field final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/dag;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    sput-object v1, Lcom/google/android/gms/internal/ads/dag$a;->b:Lcom/google/android/gms/internal/ads/dag$a;

    .line 7
    sput-object v1, Lcom/google/android/gms/internal/ads/dag$a;->a:Lcom/google/android/gms/internal/ads/dag$a;

    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dag$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/dag$a;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dag$a;->b:Lcom/google/android/gms/internal/ads/dag$a;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/dag$a;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/dag$a;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dag$a;->a:Lcom/google/android/gms/internal/ads/dag$a;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dag$a;->c:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dag$a;->d:Ljava/lang/Throwable;

    return-void
.end method
