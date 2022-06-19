.class final synthetic Lcom/google/android/gms/internal/ads/bfu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfu;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfu;->a:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/de;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/bft;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/bft;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/de;)V

    return-object v1
.end method
