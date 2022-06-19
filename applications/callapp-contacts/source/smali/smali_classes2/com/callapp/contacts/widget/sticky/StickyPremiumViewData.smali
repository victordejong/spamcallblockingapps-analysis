.class public Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->d:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->b:I

    .line 18
    iput p5, p0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->c:I

    .line 19
    iput-object p3, p0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBadge()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->c:I

    return v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->b:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->a:Ljava/lang/String;

    return-object v0
.end method
