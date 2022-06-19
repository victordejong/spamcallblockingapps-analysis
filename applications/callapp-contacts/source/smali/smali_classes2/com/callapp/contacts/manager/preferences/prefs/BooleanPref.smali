.class public Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;
.super Lcom/callapp/contacts/manager/preferences/BasePref;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/manager/preferences/BasePref<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1021
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 2016
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
