.class final Lcom/google/android/gms/internal/ads/dag$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
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
.field final a:Lcom/google/android/gms/internal/ads/dag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dag<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dag;Lcom/google/android/gms/internal/ads/dbt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dag<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dag$g;->a:Lcom/google/android/gms/internal/ads/dag;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dag$g;->b:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dag$g;->a:Lcom/google/android/gms/internal/ads/dag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dag;->a(Lcom/google/android/gms/internal/ads/dag;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dag$g;->b:Lcom/google/android/gms/internal/ads/dbt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dag;->b(Lcom/google/android/gms/internal/ads/dbt;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/dag;->f()Lcom/google/android/gms/internal/ads/dag$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dag$g;->a:Lcom/google/android/gms/internal/ads/dag;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/dag$b;->a(Lcom/google/android/gms/internal/ads/dag;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dag$g;->a:Lcom/google/android/gms/internal/ads/dag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dag;->b(Lcom/google/android/gms/internal/ads/dag;)V

    :cond_1
    return-void
.end method
