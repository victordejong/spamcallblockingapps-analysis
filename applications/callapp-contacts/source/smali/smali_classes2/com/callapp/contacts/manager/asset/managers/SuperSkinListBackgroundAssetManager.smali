.class public Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;
.super Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;-><init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    return-void
.end method

.method private getSuperSkinListBackgroundSource()Lcom/callapp/contacts/manager/preferences/prefs/StringPref;
    .locals 1

    .line 33
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    return-object v0

    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;->getSuperSkinListBackgroundSource()Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    return v0
.end method

.method protected getAssetSourceUrl()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;->getSuperSkinListBackgroundSource()Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomizableSignature()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
