.class public final Lcom/google/android/gms/internal/ads/bt3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/w2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/w2<",
            "Lcom/google/android/gms/internal/ads/bt3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field private final c:[Lcom/google/android/gms/internal/ads/u4;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/bs3;->a:Lcom/google/android/gms/internal/ads/w2;

    sput-object v0, Lcom/google/android/gms/internal/ads/bt3;->a:Lcom/google/android/gms/internal/ads/w2;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/u4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bt3;->c:[Lcom/google/android/gms/internal/ads/u4;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/bt3;->b:I

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/u4;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bt3;->c(Ljava/lang/String;)Ljava/lang/String;

    aget-object p1, p1, v0

    .line 2
    iget p1, p1, Lcom/google/android/gms/internal/ads/u4;->g:I

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "und"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/u4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bt3;->c:[Lcom/google/android/gms/internal/ads/u4;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/u4;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bt3;->c:[Lcom/google/android/gms/internal/ads/u4;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/bt3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/bt3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bt3;->c:[Lcom/google/android/gms/internal/ads/u4;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bt3;->c:[Lcom/google/android/gms/internal/ads/u4;

    .line 2
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/bt3;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bt3;->c:[Lcom/google/android/gms/internal/ads/u4;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lcom/google/android/gms/internal/ads/bt3;->d:I

    :cond_0
    return v0
.end method
