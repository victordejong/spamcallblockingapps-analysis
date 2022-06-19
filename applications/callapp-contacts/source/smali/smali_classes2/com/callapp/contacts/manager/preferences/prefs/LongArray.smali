.class public Lcom/callapp/contacts/manager/preferences/prefs/LongArray;
.super Lcom/callapp/contacts/manager/preferences/BasePref;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/manager/preferences/BasePref<",
        "[",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const-string v0, "@@@"

    .line 1021
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1022
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    .line 1023
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1024
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    const-string v3, "null"

    invoke-static {v2, v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1025
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1027
    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 7
    check-cast p1, [Ljava/lang/Long;

    const-string v0, "@@@"

    .line 2016
    invoke-static {v0}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/String;)Lcom/callapp/common/util/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/common/util/Joiner;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
