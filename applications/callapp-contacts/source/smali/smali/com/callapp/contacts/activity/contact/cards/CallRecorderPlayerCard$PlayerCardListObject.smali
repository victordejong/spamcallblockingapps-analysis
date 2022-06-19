.class public Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;
.super Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerCardListObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Ljava/lang/Integer;

.field private final n:I

.field private final o:Ljava/lang/Integer;

.field private final p:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;)V

    .line 512
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->a:Ljava/lang/String;

    .line 513
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->b(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->g:I

    .line 514
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->c(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->h:I

    .line 515
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->d(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->i:Ljava/lang/String;

    .line 516
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->e(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->j:I

    .line 517
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->f(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->k:I

    .line 518
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->g(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->l:I

    .line 519
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->h(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->m:Ljava/lang/Integer;

    .line 520
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->i(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->n:I

    .line 521
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->j(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->o:Ljava/lang/Integer;

    .line 522
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->k(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$1;)V
    .locals 0

    .line 497
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 528
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 530
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    .line 532
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->g:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->g:I

    if-eq v2, v3, :cond_2

    return v1

    .line 533
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->h:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->h:I

    if-eq v2, v3, :cond_3

    return v1

    .line 534
    :cond_3
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->j:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->j:I

    if-eq v2, v3, :cond_4

    return v1

    .line 535
    :cond_4
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->k:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->k:I

    if-eq v2, v3, :cond_5

    return v1

    .line 536
    :cond_5
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->l:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->l:I

    if-eq v2, v3, :cond_6

    return v1

    .line 537
    :cond_6
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->n:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->n:I

    if-eq v2, v3, :cond_7

    return v1

    .line 538
    :cond_7
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 540
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 542
    :cond_9
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->m:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->m:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 544
    :cond_a
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->o:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 546
    :cond_b
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->p:Landroid/view/View$OnClickListener;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->p:Landroid/view/View$OnClickListener;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_c
    return v0

    :cond_d
    :goto_0
    return v1
.end method

.method public getDateStyle()I
    .locals 1

    .line 573
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->g:I

    return v0
.end method

.method public getDateTitle()Ljava/lang/String;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTitleColor()I
    .locals 1

    .line 577
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->h:I

    return v0
.end method

.method public getDurationStyle()I
    .locals 1

    .line 585
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->j:I

    return v0
.end method

.method public getDurationTitle()Ljava/lang/String;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationTitleColor()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->k:I

    return v0
.end method

.method public getLeftIconResId()I
    .locals 1

    .line 601
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->n:I

    return v0
.end method

.method public getLeftIconTintColor()Ljava/lang/Integer;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRightIconClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->p:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getRightIconResId()I
    .locals 1

    .line 593
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->l:I

    return v0
.end method

.method public getRightIconTintColor()Ljava/lang/Integer;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 555
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 556
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 557
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->i:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 558
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 559
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->k:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 560
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->l:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 561
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->m:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 562
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->n:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 563
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->o:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 564
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->p:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method
