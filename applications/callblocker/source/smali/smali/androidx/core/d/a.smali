.class public final Landroidx/core/d/a;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# direct methods
.method public static a(Landroid/net/ConnectivityManager;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 100
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    .line 123
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 102
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 109
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 120
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
