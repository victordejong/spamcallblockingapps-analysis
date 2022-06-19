.class public final Lcom/google/android/gms/internal/ads/cgr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final A:Lorg/json/JSONObject;

.field public final B:Z

.field public final C:Z

.field public final D:Z

.field public final E:Z

.field public final F:Z

.field public final G:Z

.field public final H:I

.field public final I:I

.field public final J:Z

.field public final K:Ljava/lang/String;

.field public final L:Lorg/json/JSONObject;

.field public final M:Z

.field public final N:Z

.field public final O:I

.field public final P:Z

.field public final Q:Ljava/lang/String;

.field public final R:I

.field public final S:Ljava/lang/String;

.field public final T:Z

.field public final U:Lcom/google/android/gms/internal/ads/od;

.field public final V:Z

.field public final W:Lcom/google/android/gms/internal/ads/dyf;

.field public final X:Ljava/lang/String;

.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/google/android/gms/internal/ads/rr;

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/cgq;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/google/android/gms/internal/ads/cgu;

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/cgq;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lorg/json/JSONObject;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Lcom/google/android/gms/internal/ads/ss;

.field public final y:Ljava/lang/String;

.field public final z:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .locals 55

    .prologue
    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v51

    .line 3
    const/16 v50, 0x0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v49

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v48

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v47

    .line 7
    const/16 v46, 0x0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v45

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v44

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v43

    .line 12
    const-string/jumbo v42, ""

    .line 13
    const-string/jumbo v41, ""

    .line 14
    const/16 v40, 0x0

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v39

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v38

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v37

    .line 18
    const/16 v36, 0x0

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v35

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v34

    .line 21
    new-instance v33, Lorg/json/JSONObject;

    invoke-direct/range {v33 .. v33}, Lorg/json/JSONObject;-><init>()V

    .line 22
    const-string/jumbo v32, ""

    .line 23
    const-string/jumbo v31, ""

    .line 24
    const-string/jumbo v30, ""

    .line 25
    const-string/jumbo v29, ""

    .line 26
    const/16 v28, 0x0

    .line 27
    const-string/jumbo v27, ""

    .line 28
    new-instance v26, Lorg/json/JSONObject;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONObject;-><init>()V

    .line 29
    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    .line 30
    const/16 v24, 0x0

    .line 31
    const/16 v23, 0x0

    .line 32
    const/16 v22, 0x0

    .line 33
    const/16 v21, 0x0

    .line 34
    const/16 v20, 0x0

    .line 35
    const/16 v19, 0x0

    .line 36
    const/16 v18, -0x1

    .line 37
    const/16 v17, 0x0

    .line 38
    const/16 v16, 0x0

    .line 39
    const-string/jumbo v15, ""

    .line 40
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 41
    const/4 v13, 0x0

    .line 42
    const/4 v12, 0x0

    .line 43
    const/4 v11, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const-string/jumbo v9, ""

    .line 46
    const/4 v8, -0x1

    .line 47
    const-string/jumbo v7, ""

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v4, 0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    const-string/jumbo v2, ""

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 54
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_b

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v52

    .line 56
    if-nez v52, :cond_1

    .line 57
    const-string/jumbo v52, ""

    .line 58
    :cond_1
    const/16 v53, -0x1

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->hashCode()I

    move-result v54

    sparse-switch v54, :sswitch_data_0

    :cond_2
    move/from16 v52, v53

    :goto_1
    packed-switch v52, :pswitch_data_0

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 58
    :sswitch_0
    const-string/jumbo v54, "renderers"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v54, "ad_type"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v54, "click_urls"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v54, "imp_urls"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v54, "ad_load_urls"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v54, "impression_type"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v54, "video_start_urls"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v54, "reward_granted_urls"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v54, "video_reward_urls"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v54, "video_complete_urls"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v54, "transaction_id"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v54, "valid_from_timestamp"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v54, "rewards"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v54, "fill_urls"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v54, "manual_tracking_urls"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v54, "container_sizes"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v54, "ad"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v54, "ad_sizes"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v54, "adapters"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v54, "allocation_id"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v54, "data"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v54, "id"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v54, "qdata"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v54, "active_view"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v54, "safe_browsing"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v54, "debug_dialog_string"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v54, "debug_signals"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v54, "extras"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v54, "allow_pub_rendered_attribution"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v54, "allow_pub_owned_ad_view"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string/jumbo v54, "allow_custom_click_gesture"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string/jumbo v54, "render_test_label"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string/jumbo v54, "is_custom_close_blocked"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string/jumbo v54, "is_closable_area_disabled"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x21

    goto/16 :goto_1

    :sswitch_22
    const-string/jumbo v54, "orientation"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x22

    goto/16 :goto_1

    :sswitch_23
    const-string/jumbo v54, "render_timeout_ms"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x23

    goto/16 :goto_1

    :sswitch_24
    const-string/jumbo v54, "enable_omid"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x24

    goto/16 :goto_1

    :sswitch_25
    const-string/jumbo v54, "bid_response"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x25

    goto/16 :goto_1

    :sswitch_26
    const-string/jumbo v54, "omid_settings"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x26

    goto/16 :goto_1

    :sswitch_27
    const-string/jumbo v54, "is_analytics_logging_enabled"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x27

    goto/16 :goto_1

    :sswitch_28
    const-string/jumbo v54, "is_scroll_aware"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x28

    goto/16 :goto_1

    :sswitch_29
    const-string/jumbo v54, "showable_impression_type"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x29

    goto/16 :goto_1

    :sswitch_2a
    const-string/jumbo v54, "is_augmented_reality_ad"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x2a

    goto/16 :goto_1

    :sswitch_2b
    const-string/jumbo v54, "ad_close_time_ms"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x2b

    goto/16 :goto_1

    :sswitch_2c
    const-string/jumbo v54, "watermark"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x2c

    goto/16 :goto_1

    :sswitch_2d
    const-string/jumbo v54, "backend_query_id"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x2d

    goto/16 :goto_1

    :sswitch_2e
    const-string/jumbo v54, "use_third_party_container_height"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x2e

    goto/16 :goto_1

    :sswitch_2f
    const-string/jumbo v54, "play_prewarm_options"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x2f

    goto/16 :goto_1

    :sswitch_30
    const-string/jumbo v54, "is_close_button_enabled"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x30

    goto/16 :goto_1

    :sswitch_31
    const-string/jumbo v54, "ad_event_value"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x31

    goto/16 :goto_1

    :sswitch_32
    const-string/jumbo v54, "rule_line_external_id"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    const/16 v52, 0x32

    goto/16 :goto_1

    .line 59
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v51

    goto/16 :goto_0

    .line 61
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v50

    .line 62
    const-string/jumbo v52, "banner"

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_3

    .line 63
    const/16 v50, 0x1

    goto/16 :goto_0

    .line 64
    :cond_3
    const-string/jumbo v52, "interstitial"

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_4

    .line 65
    const/16 v50, 0x2

    goto/16 :goto_0

    .line 66
    :cond_4
    const-string/jumbo v52, "native_express"

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_5

    .line 67
    const/16 v50, 0x3

    goto/16 :goto_0

    .line 68
    :cond_5
    const-string/jumbo v52, "native"

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_6

    .line 69
    const/16 v50, 0x4

    goto/16 :goto_0

    .line 70
    :cond_6
    const-string/jumbo v52, "rewarded"

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_7

    .line 71
    const/16 v50, 0x5

    goto/16 :goto_0

    .line 72
    :cond_7
    const/16 v50, 0x0

    goto/16 :goto_0

    .line 75
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v49

    goto/16 :goto_0

    .line 77
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v48

    goto/16 :goto_0

    .line 79
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v47

    goto/16 :goto_0

    .line 81
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v46

    .line 82
    if-eqz v46, :cond_0

    const/16 v52, 0x1

    move/from16 v0, v46

    move/from16 v1, v52

    if-eq v0, v1, :cond_0

    .line 84
    const/16 v46, 0x0

    goto/16 :goto_0

    .line 87
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v45

    goto/16 :goto_0

    .line 89
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    goto/16 :goto_0

    .line 91
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v44

    goto/16 :goto_0

    .line 93
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v43

    goto/16 :goto_0

    .line 95
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_0

    .line 97
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_0

    .line 99
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->d(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/google/android/gms/internal/ads/rr;->a(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/rr;

    move-result-object v40

    goto/16 :goto_0

    .line 101
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v39

    goto/16 :goto_0

    .line 103
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v38

    goto/16 :goto_0

    .line 105
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/cgq;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v37

    goto/16 :goto_0

    .line 107
    :pswitch_10
    new-instance v36, Lcom/google/android/gms/internal/ads/cgu;

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cgu;-><init>(Landroid/util/JsonReader;)V

    goto/16 :goto_0

    .line 109
    :pswitch_11
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/cgq;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v34

    goto/16 :goto_0

    .line 111
    :pswitch_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v35

    goto/16 :goto_0

    .line 113
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_0

    .line 115
    :pswitch_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->c(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v33

    goto/16 :goto_0

    .line 117
    :pswitch_15
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_0

    .line 119
    :pswitch_16
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 121
    :pswitch_17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->c(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 124
    :pswitch_18
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->c(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/ss;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ss;

    move-result-object v28

    goto/16 :goto_0

    .line 126
    :pswitch_19
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 128
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->c(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v26

    goto/16 :goto_0

    .line 130
    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->c(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v25

    goto/16 :goto_0

    .line 132
    :pswitch_1c
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v24

    goto/16 :goto_0

    .line 134
    :pswitch_1d
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v23

    goto/16 :goto_0

    .line 136
    :pswitch_1e
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v22

    goto/16 :goto_0

    .line 138
    :pswitch_1f
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v21

    goto/16 :goto_0

    .line 140
    :pswitch_20
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v20

    goto/16 :goto_0

    .line 142
    :pswitch_21
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v19

    goto/16 :goto_0

    .line 144
    :pswitch_22
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v18

    .line 145
    const-string/jumbo v52, "landscape"

    move-object/from16 v0, v52

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_8

    .line 146
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    const/16 v18, 0x6

    goto/16 :goto_0

    .line 147
    :cond_8
    const-string/jumbo v52, "portrait"

    move-object/from16 v0, v52

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 148
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    const/16 v18, 0x7

    goto/16 :goto_0

    .line 149
    :cond_9
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 152
    :pswitch_23
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v17

    goto/16 :goto_0

    .line 154
    :pswitch_24
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v16

    goto/16 :goto_0

    .line 156
    :pswitch_25
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 158
    :pswitch_26
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->c(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v14

    goto/16 :goto_0

    .line 160
    :pswitch_27
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v13

    goto/16 :goto_0

    .line 162
    :pswitch_28
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v12

    goto/16 :goto_0

    .line 164
    :pswitch_29
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    goto/16 :goto_0

    .line 166
    :pswitch_2a
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v10

    goto/16 :goto_0

    .line 168
    :pswitch_2b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    goto/16 :goto_0

    .line 170
    :pswitch_2c
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 172
    :pswitch_2d
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 174
    :pswitch_2e
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v6

    goto/16 :goto_0

    .line 176
    :pswitch_2f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->c(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v5

    .line 177
    if-nez v5, :cond_a

    .line 178
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 179
    :cond_a
    const-string/jumbo v52, "enable_prewarming"

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 180
    const-string/jumbo v53, "prefetch_url"

    const-string/jumbo v54, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 181
    new-instance v5, Lcom/google/android/gms/internal/ads/od;

    move/from16 v0, v52

    move-object/from16 v1, v53

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/internal/ads/od;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :pswitch_30
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    goto/16 :goto_0

    .line 186
    :pswitch_31
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wy;->c(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dyf;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/dyf;

    move-result-object v3

    goto/16 :goto_0

    .line 188
    :pswitch_32
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 192
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 193
    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->a:Ljava/util/List;

    .line 194
    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gms/internal/ads/cgr;->b:I

    .line 195
    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->c:Ljava/util/List;

    .line 196
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->d:Ljava/util/List;

    .line 197
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->f:Ljava/util/List;

    .line 198
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gms/internal/ads/cgr;->e:I

    .line 199
    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->g:Ljava/util/List;

    .line 200
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->h:Ljava/util/List;

    .line 201
    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->i:Ljava/util/List;

    .line 202
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->j:Ljava/lang/String;

    .line 203
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->k:Ljava/lang/String;

    .line 204
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->l:Lcom/google/android/gms/internal/ads/rr;

    .line 205
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->m:Ljava/util/List;

    .line 206
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->n:Ljava/util/List;

    .line 207
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->o:Ljava/util/List;

    .line 208
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    .line 209
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->q:Ljava/util/List;

    .line 210
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->r:Ljava/util/List;

    .line 211
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->t:Ljava/lang/String;

    .line 212
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 213
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->u:Ljava/lang/String;

    .line 214
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->v:Ljava/lang/String;

    .line 215
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->w:Ljava/lang/String;

    .line 216
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->x:Lcom/google/android/gms/internal/ads/ss;

    .line 217
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->y:Ljava/lang/String;

    .line 218
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->z:Lorg/json/JSONObject;

    .line 219
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cgr;->A:Lorg/json/JSONObject;

    .line 220
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/cgr;->B:Z

    .line 221
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/cgr;->C:Z

    .line 222
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/cgr;->D:Z

    .line 223
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/cgr;->E:Z

    .line 224
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/cgr;->F:Z

    .line 225
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/cgr;->G:Z

    .line 226
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gms/internal/ads/cgr;->H:I

    .line 227
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gms/internal/ads/cgr;->I:I

    .line 228
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/cgr;->J:Z

    .line 229
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/cgr;->K:Ljava/lang/String;

    .line 230
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/cgr;->L:Lorg/json/JSONObject;

    .line 231
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/cgr;->M:Z

    .line 232
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/android/gms/internal/ads/cgr;->N:Z

    .line 233
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/gms/internal/ads/cgr;->O:I

    .line 234
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/cgr;->P:Z

    .line 235
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/cgr;->Q:Ljava/lang/String;

    .line 236
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/gms/internal/ads/cgr;->R:I

    .line 237
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/cgr;->S:Ljava/lang/String;

    .line 238
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/cgr;->T:Z

    .line 239
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/cgr;->U:Lcom/google/android/gms/internal/ads/od;

    .line 240
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/cgr;->V:Z

    .line 241
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/cgr;->W:Lcom/google/android/gms/internal/ads/dyf;

    .line 242
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cgr;->X:Ljava/lang/String;

    .line 243
    return-void

    .line 58
    :sswitch_data_0
    .sparse-switch
        -0x760d5f21 -> :sswitch_1a
        -0x752755d7 -> :sswitch_26
        -0x6c01c604 -> :sswitch_2f
        -0x60966ac3 -> :sswitch_2d
        -0x55d641b4 -> :sswitch_20
        -0x55cd0a30 -> :sswitch_22
        -0x552c574b -> :sswitch_24
        -0x53abfab8 -> :sswitch_29
        -0x511c568a -> :sswitch_11
        -0x4dd838fc -> :sswitch_12
        -0x4cd5119d -> :sswitch_1b
        -0x49ea2690 -> :sswitch_31
        -0x49901bd3 -> :sswitch_1c
        -0x4664a2ea -> :sswitch_2a
        -0x44ada62a -> :sswitch_1
        -0x4456b89f -> :sswitch_28
        -0x428259e0 -> :sswitch_d
        -0x407d0b26 -> :sswitch_13
        -0x4041c09a -> :sswitch_9
        -0x3ea917c2 -> :sswitch_17
        -0x3a916a9c -> :sswitch_b
        -0x2e4deec5 -> :sswitch_2
        -0x207016c7 -> :sswitch_18
        -0x1a0cf689 -> :sswitch_3
        -0x18198873 -> :sswitch_23
        -0x17b47e0b -> :sswitch_2b
        -0x160a4bb0 -> :sswitch_30
        -0xcb8979c -> :sswitch_2c
        -0x1bfab86 -> :sswitch_1e
        0xc23 -> :sswitch_10
        0xd1b -> :sswitch_15
        0x2eefaa -> :sswitch_14
        0x3c44b50 -> :sswitch_1f
        0x6674f9b -> :sswitch_16
        0xdba7381 -> :sswitch_4
        0x18f0294b -> :sswitch_21
        0x239cb9fc -> :sswitch_19
        0x282126f8 -> :sswitch_7
        0x2cfeab54 -> :sswitch_f
        0x2f2793b0 -> :sswitch_5
        0x3c3c4a1c -> :sswitch_a
        0x419a9724 -> :sswitch_c
        0x4ec7dc6f -> :sswitch_1d
        0x619b1543 -> :sswitch_25
        0x61b080e5 -> :sswitch_6
        0x64a20a30 -> :sswitch_8
        0x6b3eec6e -> :sswitch_2e
        0x6da6d810 -> :sswitch_0
        0x6fc8b8d3 -> :sswitch_27
        0x7b455927 -> :sswitch_32
        0x7b8dc4b3 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch
.end method
