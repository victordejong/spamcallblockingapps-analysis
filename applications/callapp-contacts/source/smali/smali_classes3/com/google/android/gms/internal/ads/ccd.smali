.class final synthetic Lcom/google/android/gms/internal/ads/ccd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/daq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ccd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ccd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ccd;->a:Lcom/google/android/gms/internal/ads/daq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ccg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ccg;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
