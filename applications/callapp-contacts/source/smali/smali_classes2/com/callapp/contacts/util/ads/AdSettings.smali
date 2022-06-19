.class public Lcom/callapp/contacts/util/ads/AdSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZIZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AdSettings;->b:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/callapp/contacts/util/ads/AdSettings;->c:I

    .line 22
    iput-boolean p3, p0, Lcom/callapp/contacts/util/ads/AdSettings;->e:Z

    .line 23
    iput p4, p0, Lcom/callapp/contacts/util/ads/AdSettings;->d:I

    .line 24
    iput-boolean p5, p0, Lcom/callapp/contacts/util/ads/AdSettings;->f:Z

    return-void
.end method


# virtual methods
.method public getAdAnimation()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/callapp/contacts/util/ads/AdSettings;->d:I

    return v0
.end method

.method public getAdLayoutResourceId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/callapp/contacts/util/ads/AdSettings;->c:I

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AdSettings;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isIncludeMainImage()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/AdSettings;->f:Z

    return v0
.end method

.method public isIncludeTextDescription()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/AdSettings;->e:Z

    return v0
.end method

.method public isTitlePrimaryColor()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/AdSettings;->g:Z

    return v0
.end method

.method public setTitlePrimaryColor(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/callapp/contacts/util/ads/AdSettings;->g:Z

    return-void
.end method
