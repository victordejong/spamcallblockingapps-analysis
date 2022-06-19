.class public Lcom/callapp/contacts/activity/setup/CountryList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;,
        Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Integer;

.field private c:Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/CountryList;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/CountryList;->c:Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;

    .line 27
    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/CountryList;->b:Ljava/lang/Integer;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/setup/CountryList;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 11

    .line 44
    invoke-static {}, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->getInstance()Lcom/callapp/common/util/PhoneNumberUtilWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->getCountryCallingCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->NO_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    .line 48
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 49
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 50
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 51
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 56
    new-instance v7, Ljava/util/Locale;

    const-string v8, ""

    invoke-direct {v7, v8, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v7

    .line 59
    new-instance v8, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;

    invoke-direct {v8, v7, v6, v7, v4}, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 61
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {p2, v10}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v4, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v6, :cond_4

    .line 62
    sget-object v9, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->NO_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    if-ne v1, v9, :cond_4

    .line 63
    sget-object v1, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->COUNTRYISO_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    move-object v3, v8

    :cond_4
    if-eqz v7, :cond_6

    .line 66
    sget-object v9, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->NO_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    if-eq v1, v9, :cond_5

    sget-object v9, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->COUNTRYISO_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    if-ne v1, v9, :cond_6

    .line 68
    :cond_5
    sget-object v1, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->INTL_PHONE_PREFIX_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    move-object v3, v8

    :cond_6
    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    .line 77
    sget-object v1, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->BOTH_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    move-object v3, v8

    .line 81
    :cond_7
    invoke-static {v8}, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->a(Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "us"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 83
    iput-object v8, p0, Lcom/callapp/contacts/activity/setup/CountryList;->c:Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;

    .line 85
    :cond_8
    iget-object v6, p0, Lcom/callapp/contacts/activity/setup/CountryList;->a:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/CountryList;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v3, :cond_a

    .line 92
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/CountryList;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/CountryList;->b:Ljava/lang/Integer;

    :cond_a
    return-void
.end method


# virtual methods
.method public getAutoSelectedIndex()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/CountryList;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCountryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/CountryList;->a:Ljava/util/List;

    return-object v0
.end method
