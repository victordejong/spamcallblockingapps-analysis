.class public final Lcom/google/android/gms/internal/ads/apg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dht",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/apb;

.field private final b:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/ant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/apb;Lcom/google/android/gms/internal/ads/dig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/apb;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/ant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/apg;->a:Lcom/google/android/gms/internal/ads/apb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/apg;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/apb;Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/apg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/apb;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/ant;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/apg;"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/apg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/apg;-><init>(Lcom/google/android/gms/internal/ads/apb;Lcom/google/android/gms/internal/ads/dig;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/apb;Lcom/google/android/gms/internal/ads/ant;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ant;->i()Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apg;->a:Lcom/google/android/gms/internal/ads/apb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apg;->b:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ant;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/apg;->a(Lcom/google/android/gms/internal/ads/apb;Lcom/google/android/gms/internal/ads/ant;)Ljava/lang/String;

    move-result-object v0

    .line 11
    return-object v0
.end method
