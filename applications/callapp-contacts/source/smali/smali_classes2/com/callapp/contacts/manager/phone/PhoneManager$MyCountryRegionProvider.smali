.class Lcom/callapp/contacts/manager/phone/PhoneManager$MyCountryRegionProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/framework/phone/CountryRegionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/phone/PhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyCountryRegionProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneManager$1;)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager$MyCountryRegionProvider;-><init>()V

    return-void
.end method

.method private getAreaCode()Ljava/lang/String;
    .locals 2

    .line 1122
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ap:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1123
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1113
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1118
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager$MyCountryRegionProvider;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
