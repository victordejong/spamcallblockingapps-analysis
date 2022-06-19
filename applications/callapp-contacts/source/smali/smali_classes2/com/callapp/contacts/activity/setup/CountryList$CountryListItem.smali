.class public Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/CountryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountryListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->a:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->b:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->c:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->d:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 96
    check-cast p1, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;

    .line 1116
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;

    .line 129
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayedCountry()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->a:Ljava/lang/String;

    return-object v0
.end method
