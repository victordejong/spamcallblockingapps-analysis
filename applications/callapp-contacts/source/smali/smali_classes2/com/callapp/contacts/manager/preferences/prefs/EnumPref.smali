.class public Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;
.super Lcom/callapp/contacts/manager/preferences/BasePref;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum;",
        ">",
        "Lcom/callapp/contacts/manager/preferences/BasePref<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 22
    const-class v0, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->a(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/Enum;

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
