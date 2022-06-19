.class public Lcom/allinone/callerid/util/recorder/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/util/recorder/AudioRecorder$c;,
        Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/media/AudioRecord;

.field private g:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field private k:Lcom/allinone/callerid/util/recorder/AudioRecorder$c;

.field private l:I

.field private m:Lcom/allinone/callerid/util/recorder/a;


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/util/recorder/a;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->a:I

    const/16 v0, 0x1f40

    .line 3
    iput v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->b:I

    const/16 v0, 0x10

    .line 4
    iput v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->c:I

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->d:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->e:I

    .line 7
    sget-object v1, Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    iput-object v1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->g:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    .line 8
    iput v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->l:I

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->h:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/allinone/callerid/util/recorder/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->i:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->m:Lcom/allinone/callerid/util/recorder/a;

    .line 12
    iput-object p3, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->j:Ljava/lang/String;

    .line 13
    iput p4, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->a:I

    .line 14
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->h:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 17
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->i:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 20
    :cond_1
    sget-object p1, Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;->e:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->g:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/util/recorder/AudioRecorder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->k()V

    return-void
.end method

.method static synthetic b(Lcom/allinone/callerid/util/recorder/AudioRecorder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/allinone/callerid/util/recorder/AudioRecorder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->b:I

    return p0
.end method

.method static synthetic d(Lcom/allinone/callerid/util/recorder/AudioRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->f:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic e(Lcom/allinone/callerid/util/recorder/AudioRecorder;)Lcom/allinone/callerid/util/recorder/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->m:Lcom/allinone/callerid/util/recorder/a;

    return-object p0
.end method

.method static synthetic f(Lcom/allinone/callerid/util/recorder/AudioRecorder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->l()V

    return-void
.end method

.method static synthetic g(Lcom/allinone/callerid/util/recorder/AudioRecorder;)Lcom/allinone/callerid/util/recorder/AudioRecorder$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->k:Lcom/allinone/callerid/util/recorder/AudioRecorder$c;

    return-object p0
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, -0x1

    const/16 v5, 0xa0

    const/16 v6, 0x50

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;

    invoke-direct {v0}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;-><init>()V

    const/4 v7, 0x3

    const/16 v8, 0x32

    const/4 v9, 0x1

    .line 2
    invoke-virtual {v0, v7, v8, v9}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->setAgcConfig(III)Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->prepare()Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;

    .line 3
    invoke-virtual {v0}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->nsCreate()I

    move-result v15

    const/16 v7, 0x1f40

    .line 4
    invoke-virtual {v0, v15, v7}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->nsInit(II)I

    move-result v7

    const/4 v8, 0x2

    .line 5
    invoke-virtual {v0, v15, v8}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->nsSetPolicy(II)I

    move-result v8

    .line 6
    sget-boolean v9, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "audio_agc_ns"

    if-eqz v9, :cond_0

    .line 7
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "initStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "setStatus = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-array v11, v5, [B

    .line 10
    :goto_0
    invoke-virtual {v13, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-eq v7, v4, :cond_3

    new-array v8, v6, [S

    new-array v10, v6, [S

    new-array v9, v6, [S

    .line 11
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    const/4 v6, 0x0

    const/16 v16, 0x50

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v7, v0

    move-object/from16 v21, v9

    move v9, v6

    move-object v6, v10

    move/from16 v10, v16

    move-object/from16 v16, v11

    move-object v11, v6

    move-object v4, v12

    move/from16 v12, v17

    move-object/from16 v17, v13

    move/from16 v13, v18

    move-object v5, v14

    move/from16 v14, v19

    move/from16 v19, v15

    move/from16 v15, v20

    .line 12
    invoke-virtual/range {v7 .. v15}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->agcProcess([SII[SIIII)I

    move-result v7

    .line 13
    sget-boolean v8, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v8, :cond_1

    const-string v8, "audio_agc_ns "

    .line 14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-====== aa = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    move/from16 v8, v19

    move-object v9, v6

    move-object/from16 v11, v21

    .line 15
    invoke-virtual/range {v7 .. v12}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;->nsProcess(I[S[S[S[S)I

    move-result v6

    .line 16
    sget-boolean v7, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v7, :cond_2

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v6, v21

    .line 18
    invoke-virtual {v1, v6}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->m([S)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    move-object v12, v4

    move-object v14, v5

    move-object/from16 v11, v16

    move-object/from16 v13, v17

    move/from16 v15, v19

    const/4 v4, -0x1

    const/16 v5, 0xa0

    const/16 v6, 0x50

    goto/16 :goto_0

    :cond_3
    move-object v4, v12

    move-object/from16 v17, v13

    .line 19
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 20
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 21
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa0

    new-array v3, v3, [B

    .line 23
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    const/16 v5, 0x50

    new-array v7, v5, [S

    .line 24
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 25
    invoke-virtual {v1, v7}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->m([S)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    .line 26
    :cond_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 27
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->m:Lcom/allinone/callerid/util/recorder/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;-><init>(Lcom/allinone/callerid/util/recorder/AudioRecorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private k()V
    .locals 7

    const-string v0, "wbb"

    .line 1
    :try_start_0
    iget v1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->e:I

    new-array v2, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v3, 0x0

    .line 2
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->h:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    .line 3
    :try_start_2
    sget-boolean v5, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    sget-object v4, Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;->f:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    iput-object v4, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->g:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    .line 6
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->g:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    sget-object v5, Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;->f:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->f:Landroid/media/AudioRecord;

    if-eqz v4, :cond_2

    .line 7
    iget v5, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->e:I

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v5, -0x3

    if-eq v5, v4, :cond_1

    if-eqz v3, :cond_1

    if-lez v4, :cond_1

    if-gt v4, v1, :cond_1

    .line 8
    :try_start_3
    invoke-virtual {v3, v2, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_1
    move-exception v4

    .line 9
    :try_start_4
    sget-boolean v5, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 11
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_2
    move-exception v1

    .line 12
    :try_start_6
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->f:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->f:Landroid/media/AudioRecord;

    .line 4
    :cond_0
    sget-object v0, Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;->e:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    iput-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->g:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    .line 5
    invoke-virtual {p0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->h()V

    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->f:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public h()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/c;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public m([S)[B
    .locals 5

    .line 1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    .line 3
    aget-short v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 4
    aget-short v3, p1, v1

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public n()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->b:I

    iget v1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->c:I

    iget v2, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->d:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->e:I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->f:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->a:I

    iget v3, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->b:I

    iget v4, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->c:I

    iget v5, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->d:I

    iget v6, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->e:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->f:Landroid/media/AudioRecord;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->g:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    sget-object v1, Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    if-eq v0, v1, :cond_3

    .line 5
    sget-object v1, Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;->f:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    if-eq v0, v1, :cond_2

    .line 6
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===startRecord==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->f:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wbb"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->f:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/allinone/callerid/util/recorder/AudioRecorder$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/recorder/AudioRecorder$a;-><init>(Lcom/allinone/callerid/util/recorder/AudioRecorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "is recording "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o(Lcom/allinone/callerid/util/recorder/AudioRecorder$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->g:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    sget-object v1, Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;->f:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->k:Lcom/allinone/callerid/util/recorder/AudioRecorder$c;

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->p()V

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->j()V

    .line 5
    sget-object p1, Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;->e:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->g:Lcom/allinone/callerid/util/recorder/AudioRecorder$Status;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not recording"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
