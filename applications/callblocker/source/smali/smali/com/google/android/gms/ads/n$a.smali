.class public Lcom/google/android/gms/ads/n$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput v0, p0, Lcom/google/android/gms/ads/n$a;->a:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/ads/n$a;->b:I

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/n$a;->c:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/n$a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/n;
    .locals 6

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/ads/n;

    iget v1, p0, Lcom/google/android/gms/ads/n$a;->a:I

    iget v2, p0, Lcom/google/android/gms/ads/n$a;->b:I

    iget-object v3, p0, Lcom/google/android/gms/ads/n$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/n$a;->d:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/n;-><init>(IILjava/lang/String;Ljava/util/List;Lcom/google/android/gms/ads/t;)V

    return-object v0
.end method
