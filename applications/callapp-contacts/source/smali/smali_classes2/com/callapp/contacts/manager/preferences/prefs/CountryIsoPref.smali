.class public Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;
.super Lcom/callapp/contacts/manager/preferences/prefs/StringPref;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->j()V

    return-void
.end method
