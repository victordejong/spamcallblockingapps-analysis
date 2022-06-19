.class public Lcom/callapp/contacts/manager/asset/managers/SuperSkinTopBarBackgroundAssetManager;
.super Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;-><init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    return-void
.end method

.method private getSuperSkinTopBarBackgroundSource()[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;
    .locals 1

    .line 36
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dI:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    return-object v0

    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dJ:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinTopBarBackgroundAssetManager;->getSuperSkinTopBarBackgroundSource()[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    return v0
.end method

.method protected getAssetSourceUrl()Ljava/lang/String;
    .locals 3

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinTopBarBackgroundAssetManager;->getSuperSkinTopBarBackgroundSource()[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    move-result-object v1

    .line 22
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 23
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNull()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 26
    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomizableSignature()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
