.class public final Lcom/google/android/gms/internal/ads/baz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/eki;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bba;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bba;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/bba;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/bba;

    .line 1006
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bba;->b:Lcom/google/android/gms/internal/ads/eki;

    return-object v0
.end method
