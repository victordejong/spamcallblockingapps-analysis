.class public Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HintBuilder"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:I

.field public e:Ljava/lang/Runnable;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f080103

    .line 67
    iput v0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->a:I

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->b:Ljava/lang/CharSequence;

    .line 70
    iput-object v0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->c:Ljava/lang/CharSequence;

    .line 71
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f06002b

    goto :goto_0

    :cond_0
    const v0, 0x7f060089

    .line 72
    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->f:I

    const v0, 0x7f0601ec

    .line 73
    iput v0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->d:I

    .line 76
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f060088

    goto :goto_1

    :cond_1
    const v0, 0x7f0601cc

    :goto_1
    iput v0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->g:I

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->f:I

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)Ljava/lang/CharSequence;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->g:I

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)Ljava/lang/CharSequence;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->d:I

    return p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->a:I

    return p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->e:Ljava/lang/Runnable;

    return-object p0
.end method
