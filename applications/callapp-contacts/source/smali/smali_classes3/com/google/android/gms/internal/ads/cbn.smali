.class public final Lcom/google/android/gms/internal/ads/cbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/eht$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cbj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cbj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbn;->a:Lcom/google/android/gms/internal/ads/cbj;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbn;->a:Lcom/google/android/gms/internal/ads/cbj;

    .line 1008
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cbj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "REWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "INTERSTITIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "NATIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1013
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$a$a;->zzbzl:Lcom/google/android/gms/internal/ads/eht$a$a;

    goto :goto_1

    .line 1009
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$a$a;->zzbzm:Lcom/google/android/gms/internal/ads/eht$a$a;

    goto :goto_1

    .line 1012
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$a$a;->zzbzs:Lcom/google/android/gms/internal/ads/eht$a$a;

    goto :goto_1

    .line 1010
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$a$a;->zzbzo:Lcom/google/android/gms/internal/ads/eht$a$a;

    goto :goto_1

    .line 1011
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$a$a;->zzbzr:Lcom/google/android/gms/internal/ads/eht$a$a;

    .line 6
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$a$a;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_3
        -0x51d5b0d4 -> :sswitch_2
        0x205e3c0e -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
