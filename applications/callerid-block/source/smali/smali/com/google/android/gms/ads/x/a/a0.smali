.class public final Lcom/google/android/gms/ads/x/a/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/x/a/x;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/x/a/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/x/a/a0;->a:Lcom/google/android/gms/ads/x/a/x;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/x/a/a0;->a:Lcom/google/android/gms/ads/x/a/x;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/x/a/x;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
