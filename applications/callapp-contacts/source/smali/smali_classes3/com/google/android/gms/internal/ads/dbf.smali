.class public Lcom/google/android/gms/internal/ads/dbf;
.super Lcom/google/android/gms/internal/ads/dbg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dbg<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/dbt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbg;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dbt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dbf;->a:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbg;->c()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Ljava/util/concurrent/Future;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbg;->c()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Lcom/google/android/gms/internal/ads/dbt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbf;->a:Lcom/google/android/gms/internal/ads/dbt;

    return-object v0
.end method
