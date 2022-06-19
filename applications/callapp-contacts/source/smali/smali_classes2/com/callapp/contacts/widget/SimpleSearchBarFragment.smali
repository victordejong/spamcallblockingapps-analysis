.class public Lcom/callapp/contacts/widget/SimpleSearchBarFragment;
.super Lcom/callapp/contacts/widget/TopBarFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;,
        Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;
    }
.end annotation


# instance fields
.field a:Landroid/view/ViewGroup;

.field private final c:I

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:F

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private final q:Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;

.field private r:Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/widget/TopBarFragment;-><init>()V

    const v0, 0x7f0601cc

    .line 37
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 43
    iput v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->h:F

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->k:Z

    const v0, 0x7f0600f3

    .line 49
    iput v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->l:I

    const v0, 0x7f0805ac

    .line 50
    iput v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->m:I

    const v0, 0x7f0601ec

    .line 51
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->n:I

    const v0, 0x7f06011a

    .line 52
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->o:I

    const v0, 0x7f1205fb

    .line 53
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->p:Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;-><init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->q:Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Landroid/widget/EditText;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->h:F

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->r:Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    return-object p0
.end method

.method private getSearchHintText()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .line 290
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->b()V

    return-void
.end method

.method protected final a(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 298
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->f:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->i:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->j:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 301
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/view/View;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 379
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 381
    :cond_1
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->k:Z

    return-void
.end method

.method public final c()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/view/View;)V

    .line 110
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->getSearchBox()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method

.method protected getBackgroundResource()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->m:I

    return v0
.end method

.method protected getBgColor()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->l:I

    return v0
.end method

.method protected getRootViewResId()I
    .locals 1

    const v0, 0x7f0d0270

    return v0
.end method

.method public getSearchBox()Landroid/widget/EditText;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method protected getSearchBoxHintColor()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->o:I

    return v0
.end method

.method protected getSearchBoxTextColor()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->n:I

    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/TopBarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->a:Landroid/view/ViewGroup;

    const p2, 0x7f0a0164

    .line 1155
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->e:Landroid/widget/ImageView;

    .line 1156
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1157
    iget-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->e:Landroid/widget/ImageView;

    new-instance p3, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$2;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$2;-><init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    iget-boolean p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->k:Z

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->b(Z)V

    const p2, 0x7f0a0544

    .line 1171
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->f:Landroid/widget/ImageView;

    .line 1172
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getVoiceSearchIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->i:Z

    const-string p3, "Search Bar Fragment"

    if-eqz p2, :cond_0

    .line 1174
    iget-boolean p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->j:Z

    if-nez p2, :cond_0

    .line 1175
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v0, "Voice search supported by device: showing voice search button"

    invoke-virtual {p2, p3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->f:Landroid/widget/ImageView;

    new-instance p3, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$3;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$3;-><init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1187
    iget-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->f:Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1189
    iget-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->f:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1191
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v0, "Voice search not supported by device: hiding voice search button"

    invoke-virtual {p2, p3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->f:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const p2, 0x7f0a0543

    .line 1195
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->g:Landroid/widget/ImageView;

    .line 1196
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1197
    iget-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->g:Landroid/widget/ImageView;

    new-instance p3, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$4;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$4;-><init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a07af

    .line 1207
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 1209
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1210
    new-instance p3, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$5;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$5;-><init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p2, 0x7f0a07ac

    .line 1220
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    .line 1221
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->getSearchBoxHintColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1222
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->getSearchBoxTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1223
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1224
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    const p2, 0x800b0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1226
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->q:Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1227
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    new-instance p2, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$6;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$6;-><init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1262
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    new-instance p2, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$7;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$7;-><init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1271
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->h:F

    .line 1272
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 1273
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    const/4 p2, 0x1

    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1275
    :cond_2
    invoke-direct {p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->getSearchHintText()Ljava/lang/String;

    move-result-object p1

    .line 1276
    iget-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1278
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->a(Z)V

    .line 90
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->a:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 307
    iput p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->l:I

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 312
    iput p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->m:I

    return-void
.end method

.method public setSearchBarEventsListener(Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->r:Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    return-void
.end method

.method public setSearchBoxTextColor(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->n:I

    return-void
.end method

.method public setSearchHint(Ljava/lang/String;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSearchHintText(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->p:Ljava/lang/String;

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setSearchTextWithOutNotifying(Ljava/lang/String;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->q:Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;

    .line 2118
    iget-object v0, v0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchText(Ljava/lang/String;)V

    return-void
.end method

.method public setVoiceSearchHidden(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->j:Z

    return-void
.end method
