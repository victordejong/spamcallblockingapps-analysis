.class public Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;
.super Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmSocialProfileObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;",
        "Ljava/lang/Comparable<",
        "Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/model/contact/DataSource;

.field private g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/Integer;

.field private final j:I

.field private final k:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;

.field private final l:I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lit/gmariotti/cardslib/library/a/b;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;ILjava/lang/Integer;IILcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;)V

    .line 344
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->m:Ljava/lang/String;

    .line 345
    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->a:Lcom/callapp/contacts/model/contact/DataSource;

    .line 346
    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->g:Ljava/lang/String;

    .line 347
    iput p5, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->h:I

    .line 348
    iput-object p6, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->i:Ljava/lang/Integer;

    .line 349
    iput p7, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->j:I

    .line 350
    iput-object p9, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->k:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;

    .line 351
    iput p8, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->l:I

    return-void
.end method

.method private static a(Lcom/callapp/contacts/model/contact/DataSource;)I
    .locals 2

    .line 438
    iget p0, p0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const/16 p0, 0x14

    return p0

    :cond_1
    const/16 p0, 0x3c

    return p0

    :cond_2
    const/16 p0, 0x32

    return p0

    :cond_3
    const/16 p0, 0x46

    return p0

    :cond_4
    const/16 p0, 0x1e

    return p0

    :cond_5
    const/16 p0, 0x28

    return p0

    :cond_6
    return v1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;)Lcom/callapp/contacts/model/contact/DataSource;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->a:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 332
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    .line 1425
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->a:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->a(Lcom/callapp/contacts/model/contact/DataSource;)I

    move-result v0

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->a:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->a(Lcom/callapp/contacts/model/contact/DataSource;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 367
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    .line 369
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->j:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->j:I

    if-eq v2, v3, :cond_2

    return v1

    .line 370
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->l:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->l:I

    if-eq v2, v3, :cond_3

    return v1

    .line 371
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 372
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->a:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->a:Lcom/callapp/contacts/model/contact/DataSource;

    if-eq v2, v3, :cond_5

    return v1

    .line 373
    :cond_5
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->h:I

    if-eqz v2, :cond_6

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->h:I

    if-eq v2, v3, :cond_7

    goto :goto_0

    :cond_6
    iget v2, p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->h:I

    if-eqz v2, :cond_7

    :goto_0
    return v1

    .line 375
    :cond_7
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->i:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->i:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 377
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->k:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->k:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 379
    :cond_9
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->g:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v0

    :cond_a
    :goto_1
    return v1
.end method

.method public getBgColor()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->l:I

    return v0
.end method

.method public getClickListener()Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->k:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;

    return-object v0
.end method

.method public getDefaultPhotoImage()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->h:I

    return v0
.end method

.method public getDefaultPhotoImageTintColor()Ljava/lang/Integer;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialId()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->j:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->m:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 386
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->a:Lcom/callapp/contacts/model/contact/DataSource;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/DataSource;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 387
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->g:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 388
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 389
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 390
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->k:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 391
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->l:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->m:Ljava/lang/String;

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->g:Ljava/lang/String;

    return-void
.end method
