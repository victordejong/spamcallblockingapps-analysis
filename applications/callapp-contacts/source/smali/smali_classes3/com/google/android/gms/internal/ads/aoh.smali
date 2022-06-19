.class public final Lcom/google/android/gms/internal/ads/aoh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aof;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/aof;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aoh;->a:Lcom/google/android/gms/internal/ads/aof;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aof;)Lcom/google/android/gms/internal/ads/aoh;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/aoh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aoh;-><init>(Lcom/google/android/gms/internal/ads/aof;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/aof;)Ljava/lang/String;
    .locals 0

    .line 1010
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/aof;->c:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aoh;->a:Lcom/google/android/gms/internal/ads/aof;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aoh;->b(Lcom/google/android/gms/internal/ads/aof;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
