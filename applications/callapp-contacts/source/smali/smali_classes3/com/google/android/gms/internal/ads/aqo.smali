.class final Lcom/google/android/gms/internal/ads/aqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/aqm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aqm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqo;->a:Lcom/google/android/gms/internal/ads/aqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aqo;->a:Lcom/google/android/gms/internal/ads/aqm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aqm;->a(Lcom/google/android/gms/internal/ads/aqm;)Lcom/google/android/gms/internal/ads/asc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/asc;->a()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
