.class final Lcom/google/android/gms/internal/ads/ddr$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/ddr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ddd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddd<",
            "Lcom/google/android/gms/internal/ads/dcn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ddd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ddd<",
            "Lcom/google/android/gms/internal/ads/dcn;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ddr$a;->a:Lcom/google/android/gms/internal/ads/ddd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ddd;Lcom/google/android/gms/internal/ads/ddt;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ddr$a;-><init>(Lcom/google/android/gms/internal/ads/ddd;)V

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ddr$a;->a:Lcom/google/android/gms/internal/ads/ddd;

    .line 1001
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ddd;->b:Lcom/google/android/gms/internal/ads/ddf;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ddf;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ddr$a;->a:Lcom/google/android/gms/internal/ads/ddd;

    .line 2001
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ddd;->b:Lcom/google/android/gms/internal/ads/ddf;

    .line 2008
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ddf;->a:Ljava/lang/Object;

    .line 6
    check-cast v1, Lcom/google/android/gms/internal/ads/dcn;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/dcn;->a([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/djs;->a([[B)[B

    move-result-object p1

    return-object p1
.end method
