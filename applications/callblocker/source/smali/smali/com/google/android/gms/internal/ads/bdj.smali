.class public final Lcom/google/android/gms/internal/ads/bdj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/ads/bcy;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/a;

.field private final b:Lcom/google/android/gms/internal/ads/adb;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/google/android/gms/internal/ads/ctl;

.field private final f:Lcom/google/android/gms/internal/ads/yd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/adb;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdj;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdj;->d:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bdj;->e:Lcom/google/android/gms/internal/ads/ctl;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bdj;->f:Lcom/google/android/gms/internal/ads/yd;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bdj;->a:Lcom/google/android/gms/ads/internal/a;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bdj;->b:Lcom/google/android/gms/internal/ads/adb;

    .line 8
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bdj;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdj;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/bdj;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdj;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/bdj;)Lcom/google/android/gms/internal/ads/ctl;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdj;->e:Lcom/google/android/gms/internal/ads/ctl;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/bdj;)Lcom/google/android/gms/internal/ads/yd;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdj;->f:Lcom/google/android/gms/internal/ads/yd;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/bdj;)Lcom/google/android/gms/ads/internal/a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdj;->a:Lcom/google/android/gms/ads/internal/a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/bdj;)Lcom/google/android/gms/internal/ads/adb;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdj;->b:Lcom/google/android/gms/internal/ads/adb;

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/bcy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bcy;-><init>(Lcom/google/android/gms/internal/ads/bdj;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcy;->a()V

    .line 13
    return-object v0
.end method
