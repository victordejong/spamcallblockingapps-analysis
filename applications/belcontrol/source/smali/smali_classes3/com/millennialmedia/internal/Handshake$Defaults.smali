.class public Lcom/millennialmedia/internal/Handshake$Defaults;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Defaults"
.end annotation


# static fields
.field public static final CLIENT_MEDIATION_TIMEOUT_FLOOR:I = 0x3e8

.field public static final DEFAULT_HANDSHAKE_BASE_URL:Ljava/lang/String; = "https://ads.nexage.com"

.field public static final DEFAULT_HANDSHAKE_JSON:Ljava/lang/String; = "mmadsdk/default_handshake.json"

.field public static final EXCHANGE_TIMEOUT_FLOOR:I = 0x3e8

.field public static final HANDSHAKE_REQUEST_TIMEOUT:I = 0x3a98

.field public static final HANDSHAKE_TTL_FLOOR:I = 0xea60

.field public static final INLINE_TIMEOUT_FLOOR:I = 0xbb8

.field public static final INTERSTITIAL_TIMEOUT_FLOOR:I = 0xbb8

.field public static final MAX_HANDSHAKE_ATTEMPTS:I = 0xa

.field public static final MIN_IMPRESSION_DURATION_CEILING:I = 0xea60

.field public static final MIN_IMPRESSION_DURATION_DEFAULT:I = 0x0

.field public static final MIN_IMPRESSION_DURATION_FLOOR:I = 0x0

.field public static final MIN_IMPRESSION_VIEWABILITY_PERCENT_CEILING:I = 0x64

.field public static final MIN_IMPRESSION_VIEWABILITY_PERCENT_DEFAULT:I = 0x0

.field public static final MIN_IMPRESSION_VIEWABILITY_PERCENT_FLOOR:I = 0x0

.field public static final MIN_INLINE_REFRESH_RATE_FLOOR:I = 0x2710

.field public static final NATIVE_TIMEOUT_FLOOR:I = 0xbb8

.field public static final REPORTING_BATCH_FREQUENCY_FLOOR:I = 0x1d4c0

.field public static final REPORTING_BATCH_SIZE_FLOOR:I = 0x1

.field public static final SERVER_ADAPTER_KEY_GREEN:Ljava/lang/String; = "green"

.field public static final SERVER_ADAPTER_KEY_ORANGE:Ljava/lang/String; = "orange"

.field public static final SERVER_TO_SERVER_TIMEOUT_FLOOR:I = 0x3e8

.field public static final SMART_YIELD_TIMEOUT_DEFAULT:I = 0x2710

.field public static final SMART_YIELD_TIMEOUT_FLOOR:I = 0x3e8

.field public static final SUPER_AUCTION_CACHE_TIMEOUT_CEILING:I = 0x5265c00

.field public static final SUPER_AUCTION_CACHE_TIMEOUT_DEFAULT:I = 0x927c0

.field public static final SUPER_AUCTION_CACHE_TIMEOUT_FLOOR:I = 0x3e8

.field public static final VAST_VIDEO_SKIP_OFFSET_FLOOR:I = 0x0

.field public static final VPAID_AD_UNIT_TIMEOUT_FLOOR:I = 0x3e8

.field public static final VPAID_HTML_END_CARD_TIMEOUT_FLOOR:I = 0x0

.field public static final VPAID_MAX_BACK_BUTTON_DELAY_FLOOR:I = 0x0

.field public static final VPAID_SKIP_AD_TIMEOUT_FLOOR:I = 0x1f4

.field public static final VPAID_START_AD_TIMEOUT_FLOOR:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
