.class public Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;
.super Ljava/lang/Object;
.source "AgcNsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;
    }
.end annotation


# instance fields
.field private agcInstance:I

.field private config:Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;

.field private mIsInit:Z

.field private nsHandler:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "yh_webrtc_agc_ns"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->agcInstance:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->config:Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->mIsInit:Z

    .line 5
    iput v1, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->nsHandler:I

    .line 6
    new-instance v1, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;

    invoke-direct {v1, v0}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;-><init>(Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$1;)V

    iput-object v1, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->config:Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;

    .line 7
    invoke-virtual {p0}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->create()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->agcInstance:I

    return-void
.end method


# virtual methods
.method public native addFarend(I[SI)I
.end method

.method public native addMic(I[SII)I
.end method

.method public agcProcess([SII[SIIII)I
    .locals 11

    move-object v10, p0

    .line 1
    iget v1, v10, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->agcInstance:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->process(I[SII[SIIII)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->mIsInit:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->agcInstance:I

    invoke-virtual {p0, v0}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->free(I)I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->agcInstance:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->mIsInit:Z

    :cond_0
    return-void
.end method

.method public native create()I
.end method

.method public native free(I)I
.end method

.method public native getAddFarendError()I
.end method

.method public native getConfig()I
.end method

.method public native init(IIIII)I
.end method

.method public native nsCreate()I
.end method

.method public native nsFree(I)I
.end method

.method public native nsInit(II)I
.end method

.method public native nsProcess(I[S[S[S[S)I
.end method

.method public native nsSetPolicy(II)I
.end method

.method public native nsxCreate()I
.end method

.method public native nsxFree(I)I
.end method

.method public native nsxInit(II)I
.end method

.method public native nsxProcess(I[S[S[S[S)I
.end method

.method public native nsxSetPolicy(II)I
.end method

.method public prepare()Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->mIsInit:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->close()V

    .line 3
    invoke-virtual {p0}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->create()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->agcInstance:I

    .line 4
    :cond_0
    iget v2, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->agcInstance:I

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x3

    const/16 v6, 0x1f40

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->init(IIIII)I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->mIsInit:Z

    .line 6
    iget v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->agcInstance:I

    iget-object v1, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->config:Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;

    invoke-virtual {p0, v0, v1}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->setConfig(ILcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;)I

    return-object p0
.end method

.method public native process(I[SII[SIIII)I
.end method

.method public setAgcConfig(III)Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->config:Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;

    invoke-static {v0, p1}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;->access$102(Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;I)I

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->config:Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;

    invoke-static {p1, p2}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;->access$202(Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;I)I

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->config:Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;

    invoke-static {p1, p3}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;->access$302(Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;I)I

    return-object p0
.end method

.method public native setConfig(ILcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;)I
.end method

.method public native virtualMic()I
.end method
