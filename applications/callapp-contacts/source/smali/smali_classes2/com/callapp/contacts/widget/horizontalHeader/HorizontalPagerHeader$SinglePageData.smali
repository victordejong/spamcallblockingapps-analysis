.class public Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SinglePageData"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/widget/ImageView$ScaleType;

.field private final g:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

.field private final h:Lcom/callapp/contacts/manager/task/Task$DoneListener;

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/manager/task/Task$DoneListener;Landroid/widget/ImageView$ScaleType;)V
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 80
    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/manager/task/Task$DoneListener;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView$ScaleType;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->a:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->b:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->c:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->d:Ljava/lang/String;

    .line 92
    iput-object p6, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->f:Landroid/widget/ImageView$ScaleType;

    .line 93
    iput-object p7, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->g:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    .line 94
    iput-object p5, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->e:Ljava/lang/String;

    .line 95
    iput-object p8, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->h:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/manager/task/Task$DoneListener;Landroid/widget/ImageView$ScaleType;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p8

    move-object v7, p6

    move-object/from16 v8, p7

    .line 84
    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView$ScaleType;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    return-void
.end method


# virtual methods
.method public getBtnBorderColor()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->l:I

    return v0
.end method

.method public getBtnText()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getBtnTextColor()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->k:I

    return v0
.end method

.method public getClickListener()Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->g:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    return-object v0
.end method

.method public getImageLoadedListener()Lcom/callapp/contacts/manager/task/Task$DoneListener;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->h:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->f:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleColor()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->j:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->i:I

    return v0
.end method

.method public setBtnBorderColor(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->l:I

    return-void
.end method

.method public setBtnTextColor(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->k:I

    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->j:I

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->i:I

    return-void
.end method
