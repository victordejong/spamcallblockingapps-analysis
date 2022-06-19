.class final synthetic Lcom/google/android/gms/internal/ads/yg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/yd;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/yd;

    .line 1102
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yd;->c:Landroid/content/Context;

    .line 1103
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tm;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1104
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yd;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
