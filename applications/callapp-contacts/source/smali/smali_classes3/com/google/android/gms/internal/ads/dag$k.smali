.class final Lcom/google/android/gms/internal/ads/dag$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/dag$k;


# instance fields
.field volatile b:Ljava/lang/Thread;

.field volatile c:Lcom/google/android/gms/internal/ads/dag$k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/dag$k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dag$k;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dag$k;->a:Lcom/google/android/gms/internal/ads/dag$k;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dag;->f()Lcom/google/android/gms/internal/ads/dag$b;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/dag$b;->a(Lcom/google/android/gms/internal/ads/dag$k;Ljava/lang/Thread;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/dag$k;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/dag;->f()Lcom/google/android/gms/internal/ads/dag$b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dag$b;->a(Lcom/google/android/gms/internal/ads/dag$k;Lcom/google/android/gms/internal/ads/dag$k;)V

    return-void
.end method
