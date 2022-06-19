.class public abstract Lcom/google/android/gms/internal/ads/cxp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)Lcom/google/android/gms/internal/ads/cxp;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/cxr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cxr;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "index"

    .line 5
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/cyg;->a(IILjava/lang/String;)I

    :goto_0
    if-ge p2, v0, :cond_1

    .line 7
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/cxp;->b(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract b(C)Z
.end method
