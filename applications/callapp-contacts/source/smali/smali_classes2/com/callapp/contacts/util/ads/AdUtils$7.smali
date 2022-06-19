.class synthetic Lcom/callapp/contacts/util/ads/AdUtils$7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/AdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 597
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->values()[Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/util/ads/AdUtils$7;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$7;->b:[I

    sget-object v2, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->NON_PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$7;->b:[I

    sget-object v2, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->UNKNOWN:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 382
    :catch_2
    invoke-static {}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->values()[Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/util/ads/AdUtils$7;->a:[I

    :try_start_3
    sget-object v2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
