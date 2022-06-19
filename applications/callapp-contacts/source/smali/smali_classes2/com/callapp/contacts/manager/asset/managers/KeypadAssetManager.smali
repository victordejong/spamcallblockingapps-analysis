.class public Lcom/callapp/contacts/manager/asset/managers/KeypadAssetManager;
.super Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;-><init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 17
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dS:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    return v0
.end method

.method protected getAssetSourceUrl()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dS:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomizableSignature()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dQ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dQ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
