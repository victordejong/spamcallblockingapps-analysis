.class public Lcom/google/android/gms/measurement/internal/gd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "app_background"

    aput-object v1, v0, v3

    const-string/jumbo v1, "app_clear_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "app_exception"

    aput-object v1, v0, v5

    const-string/jumbo v1, "app_remove"

    aput-object v1, v0, v6

    const-string/jumbo v1, "app_upgrade"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "app_install"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "app_update"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ga_campaign"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "first_open"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "first_visit"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "in_app_purchase"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "notification_dismiss"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "notification_foreground"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "notification_open"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "notification_receive"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "os_update"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "session_start"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "user_engagement"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "ad_exposure"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "adunit_exposure"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "ad_query"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "ad_activeview"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "ad_impression"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "ad_click"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "ad_reward"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "screen_view"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "ga_extra_parameter"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "session_start_with_rollout"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "firebase_campaign"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/gd;->a:[Ljava/lang/String;

    .line 5
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_ab"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_cd"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_ae"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_ui"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_ug"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "_in"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "_au"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "_cmp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "_err"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "_f"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "_v"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "_iap"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "_nd"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "_nf"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "_no"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "_nr"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "_ou"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "_s"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "_e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "_xa"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "_xu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "_aq"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "_aa"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "_ai"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "_ac"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "_ar"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "_vs"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "_ep"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "_ssr"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "_cmp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/gd;->b:[Ljava/lang/String;

    .line 6
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "purchase"

    aput-object v1, v0, v3

    const-string/jumbo v1, "refund"

    aput-object v1, v0, v4

    const-string/jumbo v1, "add_payment_info"

    aput-object v1, v0, v5

    const-string/jumbo v1, "add_shipping_info"

    aput-object v1, v0, v6

    const-string/jumbo v1, "add_to_cart"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "add_to_wishlist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "begin_checkout"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "remove_from_cart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "select_item"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "select_promotion"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "view_cart"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "view_item"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "view_item_list"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "view_promotion"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "ecommerce_purchase"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "purchase_refund"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "set_checkout_option"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "checkout_progress"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "select_content"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "view_search_results"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/gd;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/gd;->a:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/internal/gd;->b:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/hm;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
