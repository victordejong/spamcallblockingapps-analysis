.class public final Lcom/google/android/gms/internal/ads/bgj;
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
        "Lcom/google/android/gms/internal/ads/bgu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/bgj;
    .locals 1

    .prologue
    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/bgm;->a()Lcom/google/android/gms/internal/ads/bgj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/bgu;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->x:Lcom/google/android/gms/internal/ads/dwk$a$a;

    sget-object v2, Lcom/google/android/gms/internal/ads/dwk$a$a;->y:Lcom/google/android/gms/internal/ads/dwk$a$a;

    sget-object v3, Lcom/google/android/gms/internal/ads/dwk$a$a;->z:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bgu;-><init>(Lcom/google/android/gms/internal/ads/dwk$a$a;Lcom/google/android/gms/internal/ads/dwk$a$a;Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 4
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bgu;

    .line 5
    return-object v0
.end method
