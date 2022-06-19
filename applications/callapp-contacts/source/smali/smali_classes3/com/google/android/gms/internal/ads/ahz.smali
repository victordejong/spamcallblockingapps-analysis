.class public final Lcom/google/android/gms/internal/ads/ahz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/rg;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ahv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ahv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahz;->a:Lcom/google/android/gms/internal/ads/ahv;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahz;->a:Lcom/google/android/gms/internal/ads/ahv;

    .line 1014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ahv;->a:Lcom/google/android/gms/internal/ads/ahv$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahv$a;->e()Lcom/google/android/gms/internal/ads/rg;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/rg;

    return-object v0
.end method
