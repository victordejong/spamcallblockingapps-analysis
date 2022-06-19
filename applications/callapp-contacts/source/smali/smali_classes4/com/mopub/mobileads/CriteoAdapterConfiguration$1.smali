.class synthetic Lcom/mopub/mobileads/CriteoAdapterConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/CriteoAdapterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$callapp$contacts$util$ads$AdUtils$ConsentStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->values()[Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mopub/mobileads/CriteoAdapterConfiguration$1;->$SwitchMap$com$callapp$contacts$util$ads$AdUtils$ConsentStatus:[I

    :try_start_0
    sget-object v1, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/mopub/mobileads/CriteoAdapterConfiguration$1;->$SwitchMap$com$callapp$contacts$util$ads$AdUtils$ConsentStatus:[I

    sget-object v1, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->NON_PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/mopub/mobileads/CriteoAdapterConfiguration$1;->$SwitchMap$com$callapp$contacts$util$ads$AdUtils$ConsentStatus:[I

    sget-object v1, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->UNKNOWN:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
