.class public Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMIUIVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.miui.ui.version.name"

    .line 30
    invoke-static {v0}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/SysUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMIUI()Z
    .locals 2

    .line 17
    sget-object v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 18
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->de:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector;->a:Ljava/lang/Boolean;

    .line 21
    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    const-string v0, "ro.miui.ui.version.code"

    .line 1050
    invoke-static {v0}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/SysUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ro.miui.ui.version.name"

    .line 1051
    invoke-static {v0}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/SysUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ro.miui.internal.storage"

    .line 1052
    invoke-static {v0}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/SysUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector;->a:Ljava/lang/Boolean;

    .line 23
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->de:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 26
    :cond_3
    sget-object v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMIUIV5()Z
    .locals 2

    .line 46
    invoke-static {}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector;->getMIUIVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
