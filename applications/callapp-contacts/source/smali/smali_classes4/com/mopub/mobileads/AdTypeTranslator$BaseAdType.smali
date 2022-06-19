.class public final enum Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdTypeTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BaseAdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

.field public static final enum GOOGLE_PLAY_SERVICES_BANNER:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

.field public static final enum GOOGLE_PLAY_SERVICES_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

.field public static final enum MOPUB_FULLSCREEN:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

.field public static final enum MOPUB_INLINE:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

.field public static final enum MOPUB_NATIVE:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

.field public static final enum UNSPECIFIED:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mIsMoPubSpecific:Z

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 22
    new-instance v6, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    const-string v1, "GOOGLE_PLAY_SERVICES_BANNER"

    const/4 v2, 0x0

    const-string v3, "admob_native_banner"

    const-string v4, "com.mopub.mobileads.GooglePlayServicesBanner"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->GOOGLE_PLAY_SERVICES_BANNER:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    .line 24
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    const-string v8, "GOOGLE_PLAY_SERVICES_INTERSTITIAL"

    const/4 v9, 0x1

    const-string v10, "admob_full_interstitial"

    const-string v11, "com.mopub.mobileads.GooglePlayServicesInterstitial"

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->GOOGLE_PLAY_SERVICES_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    .line 28
    new-instance v1, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    const-string v14, "MOPUB_NATIVE"

    const/4 v15, 0x2

    const-string v16, "mopub_native"

    const-string v17, "com.mopub.nativeads.MoPubCustomEventNative"

    const/16 v18, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v1, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->MOPUB_NATIVE:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    .line 30
    new-instance v2, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    const-string v8, "MOPUB_INLINE"

    const/4 v9, 0x3

    const-string v10, "mopub_inline"

    const-string v11, "com.mopub.mobileads.MoPubInline"

    const/4 v12, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v2, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->MOPUB_INLINE:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    .line 32
    new-instance v3, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    const-string v14, "MOPUB_FULLSCREEN"

    const/4 v15, 0x4

    const-string v16, "fullscreen"

    const-string v17, "com.mopub.mobileads.MoPubFullscreen"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v3, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->MOPUB_FULLSCREEN:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    .line 34
    new-instance v4, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    const-string v8, "UNSPECIFIED"

    const/4 v9, 0x5

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v4, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->UNSPECIFIED:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    .line 20
    sput-object v5, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->$VALUES:[Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->mKey:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->mClassName:Ljava/lang/String;

    .line 45
    iput-boolean p5, p0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->mIsMoPubSpecific:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->fromString(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    move-result-object p0

    return-object p0
.end method

.method private static fromClassName(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;
    .locals 5

    .line 59
    invoke-static {}, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->values()[Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 60
    iget-object v4, v3, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->mClassName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    sget-object p0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->UNSPECIFIED:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    return-object p0
.end method

.method private static fromString(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;
    .locals 5

    .line 49
    invoke-static {}, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->values()[Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 50
    iget-object v4, v3, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->mKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    sget-object p0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->UNSPECIFIED:Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    return-object p0
.end method

.method public static isMoPubSpecific(Ljava/lang/String;)Z
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->fromClassName(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    move-result-object p0

    iget-boolean p0, p0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->mIsMoPubSpecific:Z

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;
    .locals 1

    .line 20
    const-class v0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;
    .locals 1

    .line 20
    sget-object v0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->$VALUES:[Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/AdTypeTranslator$BaseAdType;->mClassName:Ljava/lang/String;

    return-object v0
.end method
