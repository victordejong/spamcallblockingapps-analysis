.class public final Lcom/google/android/gms/internal/ads/cc1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/bc1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cc1;->a:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cc1;->b:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/ads/bc1;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bc1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bc1;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cc1;->a:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v0, Lcom/google/android/gms/internal/ads/wu0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wu0;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cc1;->b:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    new-instance v2, Lcom/google/android/gms/internal/ads/bc1;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/bc1;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)V

    return-object v2
.end method
