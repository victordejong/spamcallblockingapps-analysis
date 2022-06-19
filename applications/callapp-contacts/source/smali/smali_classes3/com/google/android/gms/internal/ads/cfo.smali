.class final synthetic Lcom/google/android/gms/internal/ads/cfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/daq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/cfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cfo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cfo;->a:Lcom/google/android/gms/internal/ads/daq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
