.class public Lcom/google/android/gms/internal/ads/afp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/afp$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/zzbar;

.field final b:Landroid/content/Context;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/afp$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/afp$a;->a:Lcom/google/android/gms/internal/ads/zzbar;

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afp;->a:Lcom/google/android/gms/internal/ads/zzbar;

    .line 1009
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/afp$a;->b:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afp;->b:Landroid/content/Context;

    .line 1010
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/afp$a;->c:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/afp;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/afp$a;Lcom/google/android/gms/internal/ads/afr;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/afp;-><init>(Lcom/google/android/gms/internal/ads/afp$a;)V

    return-void
.end method
