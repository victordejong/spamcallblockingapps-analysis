.class public final Lcom/google/android/gms/internal/ads/j62;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wa2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wa2<",
        "Lcom/google/android/gms/internal/ads/k62;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/appset/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/appset/a;->a(Landroid/content/Context;)Lcom/google/android/gms/appset/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j62;->a:Lcom/google/android/gms/appset/b;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/k62;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->O1:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j62;->a:Lcom/google/android/gms/appset/b;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/appset/b;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cu2;->a(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/i62;->a:Lcom/google/android/gms/internal/ads/nu2;

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/k62;

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k62;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
