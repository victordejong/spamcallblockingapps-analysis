.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;
.super Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isLargeDownloadTheme:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isLargeDownloadTheme"
    .end annotation
.end field

.field private isVideo:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isVideo"
    .end annotation
.end field

.field private previewUrl:Ljava/lang/String;

.field private themeDownloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "themeDownloadUrl"
    .end annotation
.end field

.field private themeLargePreviewUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "themeLargePreviewUrl"
    .end annotation
.end field

.field private themeStoreListPreviewUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "themeStoreListPreviewUrl"
    .end annotation
.end field

.field private themeStorePreviewUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "themeStorePreviewUrl"
    .end annotation
.end field

.field private themeThumbnail:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "themeThumbnail"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 103
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;-><init>(Landroid/os/Parcel;)V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isLargeDownloadTheme:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isVideo:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeDownloadUrl:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStorePreviewUrl:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStoreListPreviewUrl:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeLargePreviewUrl:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeThumbnail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 128
    :cond_0
    instance-of v0, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 129
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 131
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    .line 133
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isLargeDownloadTheme:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isLargeDownloadTheme:Z

    if-eq v0, v2, :cond_3

    return v1

    .line 134
    :cond_3
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isVideo:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isVideo:Z

    if-eq v0, v2, :cond_4

    return v1

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeDownloadUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStoreListPreviewUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStoreListPreviewUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeLargePreviewUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeLargePreviewUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeThumbnail:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeThumbnail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 139
    :cond_8
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStorePreviewUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStorePreviewUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeThumbnail:Ljava/lang/String;

    return-object p1
.end method

.method public getThemeDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeLargePreviewUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeLargePreviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeStoreListPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStoreListPreviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeStorePreviewUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStorePreviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 144
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 145
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isLargeDownloadTheme:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isVideo:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 147
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 148
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStorePreviewUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 149
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStoreListPreviewUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 150
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeLargePreviewUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 151
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeThumbnail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isLargeDownloadTheme()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isLargeDownloadTheme:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isVideo:Z

    return v0
.end method

.method public setThemeLargePreviewUrl(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeLargePreviewUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->previewUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isLargeDownloadTheme:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isVideo:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStorePreviewUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeStoreListPreviewUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeLargePreviewUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->themeThumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
