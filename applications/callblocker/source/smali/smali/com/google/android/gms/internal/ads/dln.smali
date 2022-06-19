.class public abstract Lcom/google/android/gms/internal/ads/dln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/dln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dlm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dlm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dln;->a:Lcom/google/android/gms/internal/ads/dln;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(ILcom/google/android/gms/internal/ads/dlp;Lcom/google/android/gms/internal/ads/dlo;I)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    .line 7
    invoke-virtual {p0, v1, p3, v1}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlo;Z)Lcom/google/android/gms/internal/ads/dlo;

    .line 8
    if-nez p1, :cond_2

    .line 10
    packed-switch p4, :pswitch_data_0

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dln;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_0

    move v2, v0

    .line 16
    :cond_0
    :goto_0
    if-ne v2, v0, :cond_1

    .line 21
    :goto_1
    return v0

    :pswitch_1
    move v2, v1

    .line 12
    goto :goto_0

    .line 13
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dln;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_0

    move v2, v1

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0, v2, p3, v1}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlo;Z)Lcom/google/android/gms/internal/ads/dlo;

    move v0, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    add-int/lit8 v0, p1, 0x1

    goto :goto_1

    .line 10
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract a(Ljava/lang/Object;)I
.end method

.method public final a(ILcom/google/android/gms/internal/ads/dlo;Z)Lcom/google/android/gms/internal/ads/dlo;
    .locals 6

    .prologue
    .line 3
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlo;ZJ)Lcom/google/android/gms/internal/ads/dlo;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(ILcom/google/android/gms/internal/ads/dlo;ZJ)Lcom/google/android/gms/internal/ads/dlo;
.end method

.method public abstract a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;
.end method

.method public abstract b()I
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dln;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
