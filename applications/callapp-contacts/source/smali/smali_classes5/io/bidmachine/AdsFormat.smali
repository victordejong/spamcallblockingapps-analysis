.class public final enum Lio/bidmachine/AdsFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdsFormat$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/AdsFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/AdsFormat;

.field public static final enum Banner:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_300x250:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_320x50:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_728x90:Lio/bidmachine/AdsFormat;

.field public static final enum Interstitial:Lio/bidmachine/AdsFormat;

.field public static final enum InterstitialStatic:Lio/bidmachine/AdsFormat;

.field public static final enum InterstitialVideo:Lio/bidmachine/AdsFormat;

.field public static final enum Native:Lio/bidmachine/AdsFormat;

.field public static final enum Rewarded:Lio/bidmachine/AdsFormat;

.field public static final enum RewardedStatic:Lio/bidmachine/AdsFormat;

.field public static final enum RewardedVideo:Lio/bidmachine/AdsFormat;


# instance fields
.field private matcher:Lio/bidmachine/AdsFormat$a;

.field private remoteName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lio/bidmachine/AdsFormat;

    new-instance v1, Lio/bidmachine/AdsFormat$1;

    sget-object v2, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {v1, v2}, Lio/bidmachine/AdsFormat$1;-><init>(Lio/bidmachine/AdsType;)V

    const-string v2, "Banner"

    const/4 v3, 0x0

    const-string v4, "banner"

    invoke-direct {v0, v2, v3, v4, v1}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V

    sput-object v0, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    .line 23
    new-instance v1, Lio/bidmachine/AdsFormat;

    new-instance v2, Lio/bidmachine/AdsFormat$4;

    sget-object v4, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {v2, v4}, Lio/bidmachine/AdsFormat$4;-><init>(Lio/bidmachine/AdsType;)V

    const-string v4, "Banner_320x50"

    const/4 v5, 0x1

    const-string v6, "banner_320x50"

    invoke-direct {v1, v4, v5, v6, v2}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V

    sput-object v1, Lio/bidmachine/AdsFormat;->Banner_320x50:Lio/bidmachine/AdsFormat;

    .line 31
    new-instance v2, Lio/bidmachine/AdsFormat;

    new-instance v4, Lio/bidmachine/AdsFormat$5;

    sget-object v6, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {v4, v6}, Lio/bidmachine/AdsFormat$5;-><init>(Lio/bidmachine/AdsType;)V

    const-string v6, "Banner_300x250"

    const/4 v7, 0x2

    const-string v8, "banner_300x250"

    invoke-direct {v2, v6, v7, v8, v4}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V

    sput-object v2, Lio/bidmachine/AdsFormat;->Banner_300x250:Lio/bidmachine/AdsFormat;

    .line 39
    new-instance v4, Lio/bidmachine/AdsFormat;

    new-instance v6, Lio/bidmachine/AdsFormat$6;

    sget-object v8, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {v6, v8}, Lio/bidmachine/AdsFormat$6;-><init>(Lio/bidmachine/AdsType;)V

    const-string v8, "Banner_728x90"

    const/4 v9, 0x3

    const-string v10, "banner_728x90"

    invoke-direct {v4, v8, v9, v10, v6}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V

    sput-object v4, Lio/bidmachine/AdsFormat;->Banner_728x90:Lio/bidmachine/AdsFormat;

    .line 47
    new-instance v6, Lio/bidmachine/AdsFormat;

    new-instance v8, Lio/bidmachine/AdsFormat$7;

    sget-object v10, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    invoke-direct {v8, v10}, Lio/bidmachine/AdsFormat$7;-><init>(Lio/bidmachine/AdsType;)V

    const-string v10, "Interstitial"

    const/4 v11, 0x4

    const-string v12, "interstitial"

    invoke-direct {v6, v10, v11, v12, v8}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V

    sput-object v6, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    .line 55
    new-instance v8, Lio/bidmachine/AdsFormat;

    new-instance v10, Lio/bidmachine/AdsFormat$8;

    sget-object v12, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    invoke-direct {v10, v12}, Lio/bidmachine/AdsFormat$8;-><init>(Lio/bidmachine/AdsType;)V

    const-string v12, "InterstitialVideo"

    const/4 v13, 0x5

    const-string v14, "interstitial_video"

    invoke-direct {v8, v12, v13, v14, v10}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V

    sput-object v8, Lio/bidmachine/AdsFormat;->InterstitialVideo:Lio/bidmachine/AdsFormat;

    .line 63
    new-instance v10, Lio/bidmachine/AdsFormat;

    new-instance v12, Lio/bidmachine/AdsFormat$9;

    sget-object v14, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    invoke-direct {v12, v14}, Lio/bidmachine/AdsFormat$9;-><init>(Lio/bidmachine/AdsType;)V

    const-string v14, "InterstitialStatic"

    const/4 v15, 0x6

    const-string v13, "interstitial_static"

    invoke-direct {v10, v14, v15, v13, v12}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V

    sput-object v10, Lio/bidmachine/AdsFormat;->InterstitialStatic:Lio/bidmachine/AdsFormat;

    .line 71
    new-instance v12, Lio/bidmachine/AdsFormat;

    new-instance v13, Lio/bidmachine/AdsFormat$10;

    sget-object v14, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    invoke-direct {v13, v14}, Lio/bidmachine/AdsFormat$10;-><init>(Lio/bidmachine/AdsType;)V

    const-string v14, "Rewarded"

    const/4 v15, 0x7

    const-string v11, "rewarded"

    invoke-direct {v12, v14, v15, v11, v13}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V

    sput-object v12, Lio/bidmachine/AdsFormat;->Rewarded:Lio/bidmachine/AdsFormat;

    .line 79
    new-instance v11, Lio/bidmachine/AdsFormat;

    new-instance v13, Lio/bidmachine/AdsFormat$11;

    sget-object v14, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    invoke-direct {v13, v14}, Lio/bidmachine/AdsFormat$11;-><init>(Lio/bidmachine/AdsType;)V

    const-string v14, "RewardedVideo"

    const/16 v15, 0x8

    const-string v9, "rewarded_video"

    invoke-direct {v11, v14, v15, v9, v13}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V

    sput-object v11, Lio/bidmachine/AdsFormat;->RewardedVideo:Lio/bidmachine/AdsFormat;

    .line 87
    new-instance v9, Lio/bidmachine/AdsFormat;

    new-instance v13, Lio/bidmachine/AdsFormat$2;

    sget-object v14, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    invoke-direct {v13, v14}, Lio/bidmachine/AdsFormat$2;-><init>(Lio/bidmachine/AdsType;)V

    const-string v14, "RewardedStatic"

    const/16 v15, 0x9

    const-string v7, "rewarded_static"

    invoke-direct {v9, v14, v15, v7, v13}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V

    sput-object v9, Lio/bidmachine/AdsFormat;->RewardedStatic:Lio/bidmachine/AdsFormat;

    .line 95
    new-instance v7, Lio/bidmachine/AdsFormat;

    new-instance v13, Lio/bidmachine/AdsFormat$3;

    sget-object v14, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    invoke-direct {v13, v14}, Lio/bidmachine/AdsFormat$3;-><init>(Lio/bidmachine/AdsType;)V

    const-string v14, "Native"

    const/16 v15, 0xa

    const-string v5, "native"

    invoke-direct {v7, v14, v15, v5, v13}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V

    sput-object v7, Lio/bidmachine/AdsFormat;->Native:Lio/bidmachine/AdsFormat;

    const/16 v5, 0xb

    new-array v5, v5, [Lio/bidmachine/AdsFormat;

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    const/16 v0, 0x9

    aput-object v9, v5, v0

    aput-object v7, v5, v15

    .line 14
    sput-object v5, Lio/bidmachine/AdsFormat;->$VALUES:[Lio/bidmachine/AdsFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/AdsFormat$a;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-object p3, p0, Lio/bidmachine/AdsFormat;->remoteName:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lio/bidmachine/AdsFormat;->matcher:Lio/bidmachine/AdsFormat$a;

    return-void
.end method

.method static byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;
    .locals 5

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 125
    iget-object v4, v3, Lio/bidmachine/AdsFormat;->remoteName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/AdsFormat;
    .locals 1

    .line 14
    const-class v0, Lio/bidmachine/AdsFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdsFormat;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/AdsFormat;
    .locals 1

    .line 14
    sget-object v0, Lio/bidmachine/AdsFormat;->$VALUES:[Lio/bidmachine/AdsFormat;

    invoke-virtual {v0}, [Lio/bidmachine/AdsFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/AdsFormat;

    return-object v0
.end method


# virtual methods
.method final isMatch(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lio/bidmachine/AdsFormat;->matcher:Lio/bidmachine/AdsFormat$a;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/AdsFormat$a;->isMatch(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z

    move-result p1

    return p1
.end method
