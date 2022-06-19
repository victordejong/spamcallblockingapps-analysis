.class public Lcom/callapp/contacts/manager/preferences/prefs/StringPref;
.super Lcom/callapp/contacts/manager/preferences/BasePref;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/manager/preferences/BasePref<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 13
    invoke-static {p2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    iput p2, p0, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 0

    .line 20
    :try_start_0
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getDefaultResId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->a:I

    return v0
.end method

.method public bridge synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
