.class public Lcom/callapp/contacts/manager/preferences/prefs/LongSetPref;
.super Lcom/callapp/contacts/manager/preferences/BasePref;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/manager/preferences/BasePref<",
        "Ljava/util/Set<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const-string v0, ","

    .line 1024
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1025
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_1

    .line 1026
    array-length v1, p1

    if-lez v1, :cond_1

    .line 1027
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1028
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1029
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 10
    check-cast p1, Ljava/util/Set;

    const-string v0, ","

    .line 2019
    invoke-static {v0}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/String;)Lcom/callapp/common/util/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
