.class final Lcom/google/android/gms/internal/ads/cpn;
.super Lcom/google/android/gms/internal/ads/cpc;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cpc",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cpc",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient b:[Ljava/lang/Object;

.field private final transient c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/cpn;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cpn;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cpn;->a:Lcom/google/android/gms/internal/ads/cpc;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cpc;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cpn;->b:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/cpn;->c:I

    .line 4
    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 3

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpn;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/cpn;->c:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpn;->c:I

    add-int/2addr v0, p2

    return v0
.end method

.method final b()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpn;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpn;->c:I

    return v0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpn;->c:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cor;->a(II)I

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpn;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpn;->c:I

    return v0
.end method
