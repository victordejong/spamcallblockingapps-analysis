.class public Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableDataImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:F

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Integer;

.field private final f:I

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:Landroid/widget/ImageView$ScaleType;

.field private final m:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableDataImpl;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->a:I

    .line 25
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->b(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->c:I

    .line 26
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->c(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->d:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->d(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->b:F

    .line 28
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->e(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->e:Ljava/lang/Integer;

    .line 29
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->f(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->f:I

    .line 30
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->g(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->g:Z

    .line 31
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->h(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->h:I

    .line 32
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->i(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->i:I

    .line 33
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->j(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->j:I

    .line 34
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->k(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->k:I

    .line 35
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->l(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->l:Landroid/widget/ImageView$ScaleType;

    .line 36
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->m(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->m:Z

    return-void
.end method


# virtual methods
.method public dontTransform()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->g:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;

    .line 196
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->e:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->e:Ljava/lang/Integer;

    if-eq v2, v3, :cond_2

    return v1

    .line 197
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->c:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->c:I

    if-eq v2, v3, :cond_3

    return v1

    .line 198
    :cond_3
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->f:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->f:I

    if-eq v2, v3, :cond_4

    return v1

    .line 199
    :cond_4
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->h:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->h:I

    if-eq v2, v3, :cond_5

    return v1

    .line 200
    :cond_5
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 201
    :cond_6
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->i:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->i:I

    if-eq v2, v3, :cond_7

    return v1

    .line 202
    :cond_7
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->j:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->j:I

    if-eq v2, v3, :cond_8

    return v1

    .line 203
    :cond_8
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->k:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->k:I

    if-eq v2, v3, :cond_9

    return v1

    .line 204
    :cond_9
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->l:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->l:Landroid/widget/ImageView$ScaleType;

    if-eq v2, v3, :cond_a

    return v1

    .line 205
    :cond_a
    iget-boolean v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->m:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->m:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 206
    :cond_b
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->b:F

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->b:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    return v1

    .line 208
    :cond_c
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->a:I

    iget p1, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->a:I

    if-eqz v2, :cond_e

    if-ne v2, p1, :cond_d

    return v0

    :cond_d
    return v1

    :cond_e
    if-nez p1, :cond_f

    return v0

    :cond_f
    :goto_0
    return v1
.end method

.method public getBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->k:I

    return v0
.end method

.method public getBadgeResourceId()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->i:I

    return v0
.end method

.method public getBadgeTintColor()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->j:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->f:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->h:I

    return v0
.end method

.method public getIconColorFilter()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->c:I

    return v0
.end method

.method public getIconPadding()F
    .locals 1

    .line 141
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->b:F

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePhoto()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->a:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->l:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    mul-int/lit8 v0, v0, 0x1f

    .line 215
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 216
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 217
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 218
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 219
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 220
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 221
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->m:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isMarked()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->m:Z

    return v0
.end method
