.class public Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;
.super Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;
.source "SourceFile"


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;I)V
    .locals 11

    .line 13
    sget-object v1, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$BeginningTutorialPageModel$tXQZ22DuTbgz2MYppySqirGZpT8;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$BeginningTutorialPageModel$tXQZ22DuTbgz2MYppySqirGZpT8;

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;-><init>(Lcom/callapp/contacts/util/Predicate;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)V

    return-void
.end method

.method private static synthetic b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$tXQZ22DuTbgz2MYppySqirGZpT8()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getIcons()[I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;->a:[I

    return-object v0
.end method

.method public setCallAppInstructionalDrawableResources(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;->a:[I

    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    .line 24
    iget-object v2, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;->a:[I

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getIconRes()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
