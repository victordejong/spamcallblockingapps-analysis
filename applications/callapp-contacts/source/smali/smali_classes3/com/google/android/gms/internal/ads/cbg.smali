.class final synthetic Lcom/google/android/gms/internal/ads/cbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/caw;

.field private final b:[Lcom/google/android/gms/internal/ads/bgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/caw;[Lcom/google/android/gms/internal/ads/bgy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbg;->a:Lcom/google/android/gms/internal/ads/caw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cbg;->b:[Lcom/google/android/gms/internal/ads/bgy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbg;->a:Lcom/google/android/gms/internal/ads/caw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cbg;->b:[Lcom/google/android/gms/internal/ads/bgy;

    const/4 v2, 0x0

    .line 1162
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 1163
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/caw;->c:Lcom/google/android/gms/internal/ads/cqd;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cqd;->a(Lcom/google/android/gms/internal/ads/dbt;)V

    :cond_0
    return-void
.end method
