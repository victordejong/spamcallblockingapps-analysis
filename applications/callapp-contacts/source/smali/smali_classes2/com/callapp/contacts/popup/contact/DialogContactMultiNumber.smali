.class public Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;,
        Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;,
        Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;,
        Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;,
        Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;

.field private b:Z

.field private c:J

.field private d:I

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;

.field private k:I

.field private l:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;


# direct methods
.method public constructor <init>(JLjava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->b:Z

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->k:I

    .line 51
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)V

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->l:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;

    .line 69
    iput-wide p1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->c:J

    .line 70
    iput-object p4, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;

    .line 71
    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->i:Ljava/util/List;

    const p1, 0x7f0601ec

    .line 72
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->d:I

    const p1, 0x7f0601cc

    .line 73
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->e:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->k:I

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->b:Z

    .line 118
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->dismiss()V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->j:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->l:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->d:I

    return p0
.end method

.method static synthetic g(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->e:I

    return p0
.end method

.method public static synthetic lambda$YW5hPm-g9yt4Yjyrj_28F8Qdh6Q(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Zo8RUby3ENG52rc8wpFMVwX0QXo(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 126
    invoke-super {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->h:Ljava/util/ArrayList;

    iget v2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->k:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;

    iget-object v1, v1, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;->a:Lcom/callapp/framework/phone/Phone;

    iget-boolean v2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;->onDone(Lcom/callapp/framework/phone/Phone;Z)V

    :cond_0
    return-void
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 135
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const p2, 0x7f0d00cf

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0a45

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f1206f3

    .line 81
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0601ec

    .line 82
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a060d

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-wide v1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->c:J

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->f(J)Ljava/util/List;

    .line 90
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    .line 92
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->h:Ljava/util/ArrayList;

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/framework/phone/Phone;

    .line 97
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->h:Ljava/util/ArrayList;

    new-instance v4, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;

    invoke-direct {v4, p0, v1, v2}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;-><init>(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;Lcom/callapp/framework/phone/Phone;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 101
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->h:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;-><init>(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;Ljava/util/List;)V

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->j:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;

    .line 102
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    const p2, 0x7f0a0541

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->f:Landroid/widget/TextView;

    const v0, 0x7f120704

    .line 105
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->f:Landroid/widget/TextView;

    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->e:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a00d7

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->g:Landroid/widget/TextView;

    const v0, 0x7f1206ef

    .line 108
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->g:Landroid/widget/TextView;

    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->e:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->f:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 112
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 114
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/callapp/contacts/popup/contact/-$$Lambda$DialogContactMultiNumber$Zo8RUby3ENG52rc8wpFMVwX0QXo;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/-$$Lambda$DialogContactMultiNumber$Zo8RUby3ENG52rc8wpFMVwX0QXo;-><init>(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->g:Landroid/widget/TextView;

    new-instance v0, Lcom/callapp/contacts/popup/contact/-$$Lambda$DialogContactMultiNumber$YW5hPm-g9yt4Yjyrj_28F8Qdh6Q;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/-$$Lambda$DialogContactMultiNumber$YW5hPm-g9yt4Yjyrj_28F8Qdh6Q;-><init>(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
