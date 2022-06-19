.class public abstract Lcom/google/android/gms/internal/ads/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/bc;

.field public static final b:Lcom/google/android/gms/internal/ads/bc;

.field public static final c:Lcom/google/android/gms/internal/ads/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/bb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bc;->a:Lcom/google/android/gms/internal/ads/bc;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/be;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/be;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bc;->b:Lcom/google/android/gms/internal/ads/bc;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/bd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bc;->c:Lcom/google/android/gms/internal/ads/bc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
