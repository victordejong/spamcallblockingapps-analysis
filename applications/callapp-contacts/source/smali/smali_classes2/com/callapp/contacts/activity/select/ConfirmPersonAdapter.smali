.class public Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter;
.super Lcom/callapp/contacts/activity/select/BasePersonAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter$LinkButtonOnClickListener;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter$LinkButtonOnClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter$LinkButtonOnClickListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;",
            "Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;",
            "Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter$LinkButtonOnClickListener;",
            "I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2, p4}, Lcom/callapp/contacts/activity/select/BasePersonAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;I)V

    .line 18
    iput-object p3, p0, Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter;->a:Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter$LinkButtonOnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter;)Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter$LinkButtonOnClickListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter;->a:Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter$LinkButtonOnClickListener;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .line 23
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;

    .line 25
    iget-object v0, p2, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->h:Lcom/callapp/contacts/widget/ContactItemView;

    new-instance v1, Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter$1;-><init>(Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ContactItemView;->setActionRadioButton(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
