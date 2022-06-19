.class public Lcom/google/android/gms/internal/ads/ab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ab;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ab;->b:Ljava/lang/Object;

    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/ab;->c:I

    .line 9
    return-void
.end method

.method public static a(Ljava/lang/String;D)Lcom/google/android/gms/internal/ads/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/ab;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/ae;->c:I

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/ab;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ab;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/ae;->b:I

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/ab;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ab;

    sget v1, Lcom/google/android/gms/internal/ads/ae;->d:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/ab;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ab;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/ae;->a:I

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/ab;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/be;->a()Lcom/google/android/gms/internal/ads/bb;

    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Flag is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aa;->a:[I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ab;->c:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 14
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ab;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ab;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bb;->a(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    .line 15
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ab;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ab;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/bb;->a(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 16
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ab;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ab;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/bb;->a(Ljava/lang/String;D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 17
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ab;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ab;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
