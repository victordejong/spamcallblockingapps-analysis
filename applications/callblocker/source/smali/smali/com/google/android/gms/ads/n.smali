.class public Lcom/google/android/gms/ads/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/n$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "PG"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/n;->a:Ljava/util/List;

    .line 22
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/ads/n;->b:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/ads/n;->c:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/n;->d:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/ads/n;->e:Ljava/util/List;

    .line 6
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/util/List;Lcom/google/android/gms/ads/t;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/n;-><init>(IILjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/google/android/gms/ads/n;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/ads/n;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/n;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 10
    const-string/jumbo v0, ""

    .line 11
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/n;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/ads/n;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
