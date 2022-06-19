.class public Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;
.super Lcom/callapp/contacts/manager/preferences/BasePref;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/manager/preferences/BasePref<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "@@@"

    .line 1021
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 6
    check-cast p1, [Ljava/lang/String;

    const-string v0, "@@@"

    .line 2015
    invoke-static {v0}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/String;)Lcom/callapp/common/util/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/common/util/Joiner;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
