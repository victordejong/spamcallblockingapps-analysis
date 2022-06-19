.class public Lcom/google/android/gms/measurement/internal/gc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3
    const/16 v0, 0x39

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ga_conversion"

    aput-object v1, v0, v3

    const-string/jumbo v1, "engagement_time_msec"

    aput-object v1, v0, v4

    const-string/jumbo v1, "exposure_time"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ad_event_id"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ad_unit_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "ga_error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ga_error_value"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ga_error_length"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "ga_event_origin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "ga_screen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ga_screen_class"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "ga_screen_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "ga_previous_screen"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "ga_previous_class"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "ga_previous_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "manual_tracking"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "message_device_time"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "message_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "message_name"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "message_time"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "message_tracking_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "message_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "previous_app_version"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "previous_os_version"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "topic"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "update_with_analytics"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "previous_first_open_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "system_app"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "system_app_update"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "previous_install_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "ga_event_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "ga_extra_params_ct"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "ga_group_name"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "ga_list_length"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "ga_index"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "ga_event_name"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "campaign_info_source"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "cached_campaign"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "deferred_analytics_collection"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "ga_session_number"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "ga_session_id"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "campaign_extra_referrer"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "app_in_background"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "firebase_feature_rollouts"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "firebase_conversion"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "firebase_error"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "firebase_error_value"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "firebase_error_length"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "firebase_event_origin"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "firebase_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "firebase_screen_class"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "firebase_screen_id"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "firebase_previous_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "firebase_previous_class"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "firebase_previous_id"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "session_number"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "session_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/gc;->a:[Ljava/lang/String;

    .line 4
    const/16 v0, 0x39

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_c"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_et"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_xt"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_aeid"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_ai"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "_err"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "_ev"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "_el"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "_o"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "_sn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "_sc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "_si"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "_pn"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "_pc"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "_pi"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "_mt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "_ndt"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "_nmid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "_nmn"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "_nmt"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "_nmtid"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "_nmc"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "_pv"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "_po"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "_nt"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "_uwa"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "_pfo"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "_sys"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "_sysu"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "_eid"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "_epc"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "_gn"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "_ll"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "_i"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "_en"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "_cis"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "_cc"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "_dac"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "_sno"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "_sid"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "_cer"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "_aib"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "_ffr"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "_c"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "_err"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "_ev"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "_el"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "_o"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "_sn"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "_sc"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "_si"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "_pn"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "_pc"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "_pi"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "_sno"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "_sid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/gc;->b:[Ljava/lang/String;

    .line 5
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "items"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/measurement/internal/gc;->c:[Ljava/lang/String;

    .line 6
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "affiliation"

    aput-object v1, v0, v3

    const-string/jumbo v1, "coupon"

    aput-object v1, v0, v4

    const-string/jumbo v1, "creative_name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "creative_slot"

    aput-object v1, v0, v6

    const-string/jumbo v1, "currency"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "discount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "index"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "item_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "item_brand"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "item_category"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "item_category2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "item_category3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "item_category4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "item_category5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "item_list_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "item_list_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "item_name"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "item_variant"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "location_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "payment_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "price"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "promotion_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "promotion_name"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "quantity"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "shipping"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "shipping_tier"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "tax"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "transaction_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "item_list"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "checkout_step"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "checkout_option"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "item_location_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/gc;->d:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/gc;->a:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/internal/gc;->b:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/hm;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
