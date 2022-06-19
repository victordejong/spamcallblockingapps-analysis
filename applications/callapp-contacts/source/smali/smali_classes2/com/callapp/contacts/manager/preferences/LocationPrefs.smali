.class public Lcom/callapp/contacts/manager/preferences/LocationPrefs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/location/Location;)V
    .locals 2

    .line 25
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 27
    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 1011
    invoke-static {p0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 30
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eC:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 31
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->eB:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 33
    const-class v0, Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 38
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eC:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    return v0
.end method

.method public static get()Lcom/callapp/contacts/manager/preferences/LocationPrefs;
    .locals 1

    .line 20
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getLocationPrefs()Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getLocation()Landroid/location/Location;
    .locals 5

    .line 44
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eC:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 47
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 48
    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    .line 1016
    invoke-static {v0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 49
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 50
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 54
    :goto_0
    const-class v0, Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-object v2
.end method

.method public init()V
    .locals 0

    return-void
.end method
