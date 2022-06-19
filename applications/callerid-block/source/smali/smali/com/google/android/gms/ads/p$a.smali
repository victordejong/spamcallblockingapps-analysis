.class public Lcom/google/android/gms/ads/p$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/p$a;->a:I

    iput v0, p0, Lcom/google/android/gms/ads/p$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/p$a;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/p$a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/p;
    .locals 7
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v6, Lcom/google/android/gms/ads/p;

    iget v1, p0, Lcom/google/android/gms/ads/p$a;->a:I

    iget v2, p0, Lcom/google/android/gms/ads/p$a;->b:I

    iget-object v3, p0, Lcom/google/android/gms/ads/p$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/p$a;->d:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/p;-><init>(IILjava/lang/String;Ljava/util/List;Lcom/google/android/gms/ads/c0;)V

    return-object v6
.end method
