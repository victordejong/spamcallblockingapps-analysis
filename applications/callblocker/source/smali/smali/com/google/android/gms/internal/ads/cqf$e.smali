.class final Lcom/google/android/gms/internal/ads/cqf$e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/cqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/cqf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cqf",
            "<TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/crt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cqf",
            "<TV;>;",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqf$e;->a:Lcom/google/android/gms/internal/ads/cqf;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cqf$e;->b:Lcom/google/android/gms/internal/ads/crt;

    .line 4
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf$e;->a:Lcom/google/android/gms/internal/ads/cqf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/cqf;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 10
    :cond_0
    :goto_0
    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf$e;->b:Lcom/google/android/gms/internal/ads/crt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cqf;->b(Lcom/google/android/gms/internal/ads/crt;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/cqf;->f()Lcom/google/android/gms/internal/ads/cqf$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqf$e;->a:Lcom/google/android/gms/internal/ads/cqf;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf$e;->a:Lcom/google/android/gms/internal/ads/cqf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cqf;->b(Lcom/google/android/gms/internal/ads/cqf;)V

    goto :goto_0
.end method
