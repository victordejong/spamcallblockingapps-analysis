.class public Lcom/google/android/gms/auth/api/signin/internal/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# static fields
.field private static a:I


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x1f

    sput v0, Lcom/google/android/gms/auth/api/signin/internal/b;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->b:I

    .line 3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->b:I

    return v0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/b;
    .locals 2

    .prologue
    .line 4
    sget v0, Lcom/google/android/gms/auth/api/signin/internal/b;->a:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->b:I

    mul-int/2addr v1, v0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->b:I

    .line 5
    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/api/signin/internal/b;
    .locals 2

    .prologue
    .line 6
    sget v0, Lcom/google/android/gms/auth/api/signin/internal/b;->a:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->b:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->b:I

    .line 7
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
