.class public Lcom/callapp/contacts/manager/asset/managers/CoverAssetManager;
.super Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;-><init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 34
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 30
    invoke-static {}, Lcom/callapp/contacts/manager/asset/managers/CoverAssetManager;->b()Z

    move-result v0

    return v0
.end method

.method protected getAssetSourceUrl()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 16
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 17
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 20
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

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
