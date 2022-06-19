.class public Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

.field private c:Lcom/callapp/contacts/util/Predicate;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/util/Predicate;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;I)V
    .locals 11

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 25
    invoke-direct/range {v0 .. v10}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;-><init>(Lcom/callapp/contacts/util/Predicate;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/util/Predicate;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->c:Lcom/callapp/contacts/util/Predicate;

    .line 32
    iput-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->d:Ljava/lang/CharSequence;

    .line 33
    iput-object p3, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->e:Ljava/lang/CharSequence;

    .line 34
    iput-object p4, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->f:Ljava/lang/CharSequence;

    .line 35
    iput-object p5, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->g:Ljava/lang/CharSequence;

    .line 36
    iput p6, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->h:I

    .line 37
    iput p7, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->i:I

    .line 38
    iput-object p8, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->j:Ljava/lang/String;

    .line 39
    iput p9, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->a:I

    .line 40
    iput-object p10, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->b:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->c:Lcom/callapp/contacts/util/Predicate;

    invoke-interface {v0}, Lcom/callapp/contacts/util/Predicate;->accept()Z

    move-result v0

    return v0
.end method

.method public getCommand()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->b:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    return-object v0
.end method

.method public getCtaText()Ljava/lang/CharSequence;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDrawableRes()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->h:I

    return v0
.end method

.method public getIconRes()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->i:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->a:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldBeDisplayed()Lcom/callapp/contacts/util/Predicate;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->c:Lcom/callapp/contacts/util/Predicate;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTopTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isCta()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->b:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->c:Lcom/callapp/contacts/util/Predicate;

    invoke-interface {v0}, Lcom/callapp/contacts/util/Predicate;->accept()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
