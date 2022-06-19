.class public final Lcom/google/android/gms/internal/ads/chv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/chb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/chb<",
        "Lcom/google/android/gms/internal/ads/chs;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/xz;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Landroid/content/pm/PackageInfo;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xz;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/pm/PackageInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/chv;->b:Lcom/google/android/gms/internal/ads/xz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/chv;->c:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/chv;->a:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/chv;->d:Landroid/content/pm/PackageInfo;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/chv;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/chs;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/chv;->b:Lcom/google/android/gms/internal/ads/xz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/chv;->a:Ljava/lang/String;

    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/chu;->a:Lcom/google/android/gms/internal/ads/cxu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/chv;->c:Ljava/util/concurrent/Executor;

    .line 1020
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 10
    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/gms/internal/ads/chy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/chy;-><init>(Lcom/google/android/gms/internal/ads/chv;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/chv;->c:Ljava/util/concurrent/Executor;

    .line 2015
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dac;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
