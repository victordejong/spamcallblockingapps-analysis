.class abstract Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SectionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/List;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field final synthetic d:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

.field private final e:Lit/gmariotti/cardslib/library/a/b;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/gmariotti/cardslib/library/a/b;",
            "TT;II)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->d:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->a:Ljava/util/List;

    .line 116
    iput p4, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->b:I

    .line 117
    iput p5, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->c:I

    .line 118
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->e:Lit/gmariotti/cardslib/library/a/b;

    return-void
.end method


# virtual methods
.method final a(Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;
    .locals 2

    .line 172
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    const/high16 v1, 0x42100000    # 36.0f

    .line 173
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    float-to-int v1, v1

    .line 7528
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->I:I

    const v1, 0x7f1204a6

    .line 174
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8357
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    const/4 v1, 0x1

    .line 8523
    iput-boolean v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->H:Z

    const v1, 0x7f1300ff

    .line 9362
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->e:I

    const v1, 0x7f060088

    .line 9367
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->f:I

    const v1, 0x7f08039d

    .line 178
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 9474
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    .line 10342
    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    const v1, 0x7f0802b9

    .line 10402
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->l:I

    .line 181
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->c:I

    .line 10426
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->o:I

    .line 10441
    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->t:Landroid/view/View$OnClickListener;

    .line 183
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->e:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/String;ILcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;
    .locals 2

    .line 138
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 1357
    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1523
    iput-boolean p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->H:Z

    const v1, 0x7f1300f1

    .line 2362
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->e:I

    .line 142
    invoke-virtual {v0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object p2

    .line 143
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 2474
    :goto_0
    iput p1, p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    .line 143
    iget p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->b:I

    .line 3392
    iput p1, p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    const p1, 0x7f08039a

    .line 3402
    iput p1, p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->l:I

    .line 145
    iget p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->c:I

    .line 3426
    iput p1, p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->o:I

    .line 4342
    iput-object p3, p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    .line 4441
    iput-object p3, p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->t:Landroid/view/View$OnClickListener;

    .line 148
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->e:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->a:Ljava/util/List;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation
.end method

.method final b(Ljava/lang/String;ILcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;
    .locals 1

    .line 152
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 5357
    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5523
    iput-boolean p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->H:Z

    const p1, 0x7f1300ff

    .line 6362
    iput p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->e:I

    const p1, 0x7f060088

    .line 6367
    iput p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->f:I

    .line 157
    invoke-virtual {v0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object p1

    iget p2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->b:I

    .line 6392
    iput p2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    const p2, 0x7f0802b9

    .line 6402
    iput p2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->l:I

    .line 159
    iget p2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->c:I

    .line 6426
    iput p2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->o:I

    .line 7342
    iput-object p3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    .line 7441
    iput-object p3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->t:Landroid/view/View$OnClickListener;

    .line 162
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->e:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->a:Ljava/util/List;

    return-object v0
.end method
