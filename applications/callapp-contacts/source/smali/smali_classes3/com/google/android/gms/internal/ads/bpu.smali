.class final synthetic Lcom/google/android/gms/internal/ads/bpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bpk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bpk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpu;->a:Lcom/google/android/gms/internal/ads/bpk;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 4

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 1001
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 1002
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 1003
    aget-object v0, v0, v2

    .line 1004
    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v3, Lcom/google/android/gms/internal/ads/cqf;

    invoke-direct {v3, p1, v0}, Lcom/google/android/gms/internal/ads/cqf;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
