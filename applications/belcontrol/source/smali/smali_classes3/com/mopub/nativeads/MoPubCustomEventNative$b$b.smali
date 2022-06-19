.class public final enum Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventNative$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALL_TO_ACTION:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum CLICK_DESTINATION:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum CLICK_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum FALLBACK:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum ICON_IMAGE:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum IMPRESSION_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum MAIN_IMAGE:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum PRIVACY_INFORMATION_ICON_IMAGE_URL:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum SPONSORED:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum STAR_RATING:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum TEXT:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final enum TITLE:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

.field public static final c:Ljava/util/Set;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic d:[Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v1, "IMPRESSION_TRACKER"

    const/4 v2, 0x0

    const-string v3, "imptracker"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->IMPRESSION_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v1, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v3, "CLICK_TRACKER"

    const-string v5, "clktracker"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->CLICK_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v3, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v5, "TITLE"

    const/4 v6, 0x2

    const-string v7, "title"

    invoke-direct {v3, v5, v6, v7, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->TITLE:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v5, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v7, "TEXT"

    const/4 v8, 0x3

    const-string v9, "text"

    invoke-direct {v5, v7, v8, v9, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->TEXT:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v7, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v9, "MAIN_IMAGE"

    const/4 v10, 0x4

    const-string v11, "mainimage"

    invoke-direct {v7, v9, v10, v11, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->MAIN_IMAGE:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v9, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v11, "ICON_IMAGE"

    const/4 v12, 0x5

    const-string v13, "iconimage"

    invoke-direct {v9, v11, v12, v13, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->ICON_IMAGE:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v11, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v13, "CLICK_DESTINATION"

    const/4 v14, 0x6

    const-string v15, "clk"

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v11, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->CLICK_DESTINATION:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v13, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v15, "FALLBACK"

    const/4 v14, 0x7

    const-string v12, "fallback"

    invoke-direct {v13, v15, v14, v12, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v13, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->FALLBACK:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v12, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v15, "CALL_TO_ACTION"

    const/16 v14, 0x8

    const-string v10, "ctatext"

    invoke-direct {v12, v15, v14, v10, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v12, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->CALL_TO_ACTION:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v10, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v15, "STAR_RATING"

    const/16 v14, 0x9

    const-string v8, "starrating"

    invoke-direct {v10, v15, v14, v8, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v10, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->STAR_RATING:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v8, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v15, "PRIVACY_INFORMATION_ICON_IMAGE_URL"

    const/16 v14, 0xa

    const-string v6, "privacyicon"

    invoke-direct {v8, v15, v14, v6, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->PRIVACY_INFORMATION_ICON_IMAGE_URL:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v6, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v15, "PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL"

    const/16 v14, 0xb

    const-string v4, "privacyclkurl"

    invoke-direct {v6, v15, v14, v4, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v4, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const-string v15, "SPONSORED"

    const/16 v14, 0xc

    move-object/from16 v16, v6

    const-string v6, "sponsored"

    invoke-direct {v4, v15, v14, v6, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->SPONSORED:Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    const/16 v0, 0xa

    aput-object v8, v6, v0

    const/16 v0, 0xb

    aput-object v16, v6, v0

    aput-object v4, v6, v14

    sput-object v6, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->d:[Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->c:Ljava/util/Set;

    invoke-static {}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->values()[Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-boolean v4, v3, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->b:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->c:Ljava/util/Set;

    iget-object v3, v3, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->a:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;
    .locals 5

    invoke-static {}, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->values()[Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->a:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;
    .locals 1

    const-class v0, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    return-object p0
.end method

.method public static values()[Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;
    .locals 1

    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->d:[Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    invoke-virtual {v0}, [Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/nativeads/MoPubCustomEventNative$b$b;

    return-object v0
.end method
