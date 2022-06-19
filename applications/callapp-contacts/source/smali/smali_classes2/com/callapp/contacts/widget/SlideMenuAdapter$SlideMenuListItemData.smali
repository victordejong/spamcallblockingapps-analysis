.class public Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SlideMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideMenuListItemData"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 342
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZI)V

    return-void
.end method

.method public constructor <init>(IIIZI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 346
    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZII)V

    return-void
.end method

.method public constructor <init>(IIIZII)V
    .locals 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 337
    iput-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->f:Ljava/lang/String;

    .line 350
    iput p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b:I

    .line 351
    iput p2, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->c:I

    .line 352
    iput p3, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->d:I

    .line 353
    iput-boolean p4, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->e:Z

    .line 354
    iput p5, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->a:I

    .line 355
    iput p6, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->h:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I
    .locals 0

    .line 331
    iget p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b:I

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I
    .locals 0

    .line 331
    iget p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->a:I

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)Z
    .locals 0

    .line 331
    iget-boolean p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)Ljava/lang/String;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I
    .locals 0

    .line 331
    iget p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->d:I

    return p0
.end method

.method static synthetic f(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I
    .locals 0

    .line 331
    iget p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->c:I

    return p0
.end method

.method static synthetic g(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I
    .locals 0

    .line 331
    iget p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->h:I

    return p0
.end method


# virtual methods
.method public getClickId()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b:I

    return v0
.end method

.method public getNotification()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setNotification(Ljava/lang/String;)V
    .locals 0

    .line 359
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->setNotification$505cff1c(Ljava/lang/String;)V

    return-void
.end method

.method final setNotification$505cff1c(Ljava/lang/String;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 364
    iput p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->g:I

    return-void
.end method
