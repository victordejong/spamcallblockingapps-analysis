.class public final Lcom/google/android/gms/internal/ads/op2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/op2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/op2;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/op2;
    .locals 1

    const-string v0, "Name is null or empty"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/oq2;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version is null or empty"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/oq2;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/op2;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/op2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/op2;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/op2;->b:Ljava/lang/String;

    return-object v0
.end method
