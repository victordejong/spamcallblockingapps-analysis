.class public final Lcom/google/android/gms/internal/ads/axi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/cmi;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/awm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/awm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axi;->a:Lcom/google/android/gms/internal/ads/awm;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/axi;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/axi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/axi;-><init>(Lcom/google/android/gms/internal/ads/awm;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axi;->a:Lcom/google/android/gms/internal/ads/awm;

    .line 1028
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/awm;->m:Lcom/google/android/gms/internal/ads/cmi;

    return-object v0
.end method
