.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;
.super Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DARK_PRIMARY_COLOR:Ljava/lang/String; = "darkColorPrimary"

.field public static final KEY_DARK_PRIMARY_COLOR_DARK:Ljava/lang/String; = "darkColorPrimaryDark"

.field public static final KEY_DARK_PRIMARY_COLOR_LIGHT:Ljava/lang/String; = "darkColorPrimaryLight"

.field public static final KEY_OVERLAY_COLOR_DARK:Ljava/lang/String; = "overlayTintColorDark"

.field public static final KEY_OVERLAY_COLOR_LIGHT:Ljava/lang/String; = "overlayTintColorLight"

.field public static final KEY_PRIMARY_COLOR:Ljava/lang/String; = "colorPrimary"

.field public static final KEY_PRIMARY_COLOR_DARK:Ljava/lang/String; = "colorPrimaryDark"

.field public static final KEY_PRIMARY_COLOR_LIGHT:Ljava/lang/String; = "colorPrimaryLight"


# instance fields
.field private color:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "color"
    .end annotation
.end field

.field private colorMap:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "colorMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private darkColor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "darkColor"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->colorMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 44
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;-><init>(Landroid/os/Parcel;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->colorMap:Ljava/util/Map;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->color:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->darkColor:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->colorMap:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 52
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->colorMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDisplayColor()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->color:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 71
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->color:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->darkColor:Ljava/lang/String;

    goto :goto_0
.end method

.method public getColorMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->colorMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getDisplayColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 66
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v1
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isMainDefaultTheme()Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_1"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 83
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->color:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->darkColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->colorMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->colorMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
