.class public final Lcom/google/android/gms/internal/ads/fo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/sl1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oh2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/sl1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fo0;->a:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/sl1;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/bo0;->a(Lcom/google/android/gms/internal/ads/sl1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fo0;->a:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v0, Lcom/google/android/gms/internal/ads/i70;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/i70;->a()Lcom/google/android/gms/internal/ads/sl1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bo0;->a(Lcom/google/android/gms/internal/ads/sl1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
