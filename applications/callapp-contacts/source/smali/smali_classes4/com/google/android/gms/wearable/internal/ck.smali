.class public final Lcom/google/android/gms/wearable/internal/ck;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    packed-switch p0, :pswitch_data_0

    .line 1008
    invoke-static {p0}, Lcom/google/android/gms/common/api/e;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    const-string v1, "ASSET_UNAVAILABLE"

    goto :goto_0

    :pswitch_1
    const-string v1, "INVALID_TARGET_NODE"

    goto :goto_0

    :pswitch_2
    const-string v1, "DATA_ITEM_TOO_LARGE"

    goto :goto_0

    :pswitch_3
    const-string v1, "UNKNOWN_LISTENER"

    goto :goto_0

    :pswitch_4
    const-string v1, "DUPLICATE_LISTENER"

    goto :goto_0

    :pswitch_5
    const-string v1, "TARGET_NODE_NOT_CONNECTED"

    .line 1
    :goto_0
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
