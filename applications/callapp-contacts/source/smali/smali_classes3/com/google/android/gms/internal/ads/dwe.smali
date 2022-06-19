.class public abstract Lcom/google/android/gms/internal/ads/dwe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/dwe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dwd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwe;->a:Lcom/google/android/gms/internal/ads/dwe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(ILcom/google/android/gms/internal/ads/dwg;Lcom/google/android/gms/internal/ads/dwf;I)I
    .locals 2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    .line 1003
    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwf;)Lcom/google/android/gms/internal/ads/dwf;

    const/4 p2, 0x1

    if-nez p1, :cond_5

    const/4 p1, -0x1

    if-eqz p4, :cond_2

    if-eq p4, p2, :cond_1

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwe;->a()I

    move-result p4

    sub-int/2addr p4, p2

    if-nez p4, :cond_3

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwe;->a()I

    move-result p4

    sub-int/2addr p4, p2

    if-nez p4, :cond_3

    const/4 p2, -0x1

    :cond_3
    :goto_1
    if-ne p2, p1, :cond_4

    return p1

    .line 2003
    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwf;)Lcom/google/android/gms/internal/ads/dwf;

    return v0

    :cond_5
    add-int/2addr p1, p2

    return p1
.end method

.method public abstract a(Ljava/lang/Object;)I
.end method

.method public abstract a(ILcom/google/android/gms/internal/ads/dwf;)Lcom/google/android/gms/internal/ads/dwf;
.end method

.method public abstract a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;
.end method

.method public abstract b()I
.end method

.method public final c()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwe;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
