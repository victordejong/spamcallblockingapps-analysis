.class Lcom/allinone/callerid/util/recorder/d$a;
.super Ljava/lang/Object;
.source "AudioSourceConfiguration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/k/c;->b()Lcom/allinone/callerid/f/k/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/f/k/c;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 6
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Lcom/allinone/callerid/util/recorder/d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/recorder/d;->b()I

    move-result v4

    .line 9
    invoke-static {v4}, Lcom/allinone/callerid/util/recorder/b;->m(I)V

    .line 10
    new-instance v5, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    invoke-direct {v5}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;-><init>()V

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Android "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->setShowname(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5, v4}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->setAudiosource(I)V

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v5, v2}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->setIsselected(Z)V

    .line 14
    invoke-virtual {v5, v1}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->setPhonemodel(Ljava/lang/String;)V

    const-string v1, "Android 6/7/8 (a)"

    .line 15
    invoke-static {v1, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v1

    const-string v3, "Android 6/7/8 (b)"

    const/4 v4, 0x7

    .line 16
    invoke-static {v3, v4}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v3

    const-string v6, "Android 7.1.1/2"

    .line 17
    invoke-static {v6, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v6

    const-string v7, "Android 4/5"

    const/4 v8, 0x4

    .line 18
    invoke-static {v7, v8}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v7

    const-string v9, "Samsung Android 7"

    .line 19
    invoke-static {v9, v4}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v9

    const-string v10, "Samsung S6/S7/N5/N7 Android 6"

    .line 20
    invoke-static {v10, v4}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v10

    const-string v11, "Samsung USA S6/S7/N5/N7 Android 6"

    .line 21
    invoke-static {v11, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v11

    const-string v12, "Samsung S5/N4/Edge Android 6"

    .line 22
    invoke-static {v12, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v12

    const-string v13, "Asus ZEN Phone 2 Android 6"

    .line 23
    invoke-static {v13, v8}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v13

    const-string v14, "BlackBerry Android 6"

    .line 24
    invoke-static {v14, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v14

    const-string v15, "HTC M8 Android 5"

    .line 25
    invoke-static {v15, v4}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v15

    const-string v4, "Huawei Android 8"

    .line 26
    invoke-static {v4, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v4

    const-string v8, "Huawei Android 6/7"

    .line 27
    invoke-static {v8, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v8

    move-object/from16 v18, v8

    const-string v8, "Google Pixel/XL Android 8.1"

    .line 28
    invoke-static {v8, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v8

    move-object/from16 v19, v8

    const-string v8, "Google Pixel/XL Android 8"

    .line 29
    invoke-static {v8, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v8

    move-object/from16 v20, v8

    const-string v8, "Google Pixel 2 Android 8/8.1"

    .line 30
    invoke-static {v8, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v8

    move-object/from16 v21, v8

    const-string v8, "Google Pixel 2 XL Android 8.1"

    .line 31
    invoke-static {v8, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v8

    move-object/from16 v22, v8

    const-string v8, "Google Pixel 2 XL Android 8"

    .line 32
    invoke-static {v8, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v8

    const-string v2, "LG Android 4/5/6"

    move-object/from16 v24, v8

    const/4 v8, 0x4

    .line 33
    invoke-static {v2, v8}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v2

    const-string v8, "LG Android 6 (b)"

    move-object/from16 v25, v2

    const/4 v2, 0x1

    .line 34
    invoke-static {v8, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v2

    const-string v8, "Micromax Canvas 4/5/6"

    move-object/from16 v23, v2

    const/4 v2, 0x7

    .line 35
    invoke-static {v8, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v8

    move-object/from16 v16, v8

    const-string v8, "Motorola G4 Android 6/7"

    .line 36
    invoke-static {v8, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v8

    const-string v2, "One Plus Android 7.1/8"

    move-object/from16 v26, v8

    const/4 v8, 0x4

    .line 37
    invoke-static {v2, v8}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v2

    const-string v8, "Wiko Android 5/6"

    move-object/from16 v17, v2

    const/4 v2, 0x7

    .line 38
    invoke-static {v8, v2}, Lcom/allinone/callerid/util/recorder/d;->a(Ljava/lang/String;I)Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v18

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v19

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v20

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v21

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v22

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v24

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v25

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v23

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v26

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Lcom/allinone/callerid/f/k/c;->b()Lcom/allinone/callerid/f/k/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/f/k/c;->a(Ljava/util/List;)V

    return-void
.end method
