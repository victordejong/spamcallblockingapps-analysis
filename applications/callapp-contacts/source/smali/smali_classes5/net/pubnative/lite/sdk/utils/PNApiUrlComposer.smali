.class public final Lnet/pubnative/lite/sdk/utils/PNApiUrlComposer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUrl(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdRequest;)Ljava/lang/String;
    .locals 2

    .line 37
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "api"

    .line 38
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "v3"

    .line 39
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "native"

    .line 40
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 43
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->apptoken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->apptoken:Ljava/lang/String;

    const-string v1, "apptoken"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    :cond_0
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->os:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->os:Ljava/lang/String;

    const-string v1, "os"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    :cond_1
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->osver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->osver:Ljava/lang/String;

    const-string v1, "osver"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 55
    :cond_2
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->devicemodel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->devicemodel:Ljava/lang/String;

    const-string v1, "devicemodel"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    :cond_3
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->deviceHeight:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->deviceHeight:Ljava/lang/String;

    const-string v1, "dh"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    :cond_4
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->deviceWidth:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 64
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->deviceWidth:Ljava/lang/String;

    const-string v1, "dw"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    :cond_5
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->orientation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 68
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->orientation:Ljava/lang/String;

    const-string v1, "scro"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 71
    :cond_6
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->soundSetting:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 72
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->soundSetting:Ljava/lang/String;

    const-string v1, "aud"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    :cond_7
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->dnt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 76
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->dnt:Ljava/lang/String;

    const-string v1, "dnt"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    :cond_8
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->al:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 80
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->al:Ljava/lang/String;

    const-string v1, "al"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    :cond_9
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->width:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 84
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->width:Ljava/lang/String;

    const-string v1, "w"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 87
    :cond_a
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->height:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 88
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->height:Ljava/lang/String;

    const-string v1, "h"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    :cond_b
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->mf:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 92
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->mf:Ljava/lang/String;

    const-string v1, "mf"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    :cond_c
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->af:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 96
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->af:Ljava/lang/String;

    const-string v1, "af"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    :cond_d
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->zoneid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 100
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->zoneid:Ljava/lang/String;

    const-string v1, "zoneid"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 103
    :cond_e
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->testMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 104
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->testMode:Ljava/lang/String;

    const-string v1, "test"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 107
    :cond_f
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->locale:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 108
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->locale:Ljava/lang/String;

    const-string v1, "locale"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 111
    :cond_10
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->latitude:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 112
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->latitude:Ljava/lang/String;

    const-string v1, "lat"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 115
    :cond_11
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->longitude:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 116
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->longitude:Ljava/lang/String;

    const-string v1, "long"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    :cond_12
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->gender:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 120
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->gender:Ljava/lang/String;

    const-string v1, "gender"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    :cond_13
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->age:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 124
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->age:Ljava/lang/String;

    const-string v1, "age"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    :cond_14
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->bundleid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 128
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->bundleid:Ljava/lang/String;

    const-string v1, "bundleid"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    :cond_15
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->keywords:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 132
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->keywords:Ljava/lang/String;

    const-string v1, "keywords"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    :cond_16
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->coppa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 136
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->coppa:Ljava/lang/String;

    const-string v1, "coppa"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    :cond_17
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->gid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 140
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->gid:Ljava/lang/String;

    const-string v1, "gid"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 143
    :cond_18
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->gidmd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 144
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->gidmd5:Ljava/lang/String;

    const-string v1, "gidmd5"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 147
    :cond_19
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->gidsha1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 148
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->gidsha1:Ljava/lang/String;

    const-string v1, "gidsha1"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    :cond_1a
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->displaymanager:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 152
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->displaymanager:Ljava/lang/String;

    const-string v1, "displaymanager"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    :cond_1b
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->displaymanagerver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 156
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->displaymanagerver:Ljava/lang/String;

    const-string v1, "displaymanagerver"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 159
    :cond_1c
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->omidpn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 160
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->omidpn:Ljava/lang/String;

    const-string v1, "omidpn"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 163
    :cond_1d
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->omidpv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 164
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->omidpv:Ljava/lang/String;

    const-string v1, "omidpv"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 167
    :cond_1e
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->rv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 168
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->rv:Ljava/lang/String;

    const-string v1, "rv"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    :cond_1f
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->usprivacy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 172
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->usprivacy:Ljava/lang/String;

    const-string v1, "usprivacy"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    :cond_20
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->userconsent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 176
    iget-object p1, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->userconsent:Ljava/lang/String;

    const-string v0, "userconsent"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 179
    :cond_21
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
