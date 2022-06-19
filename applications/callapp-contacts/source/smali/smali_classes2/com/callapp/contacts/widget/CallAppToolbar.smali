.class public Lcom/callapp/contacts/widget/CallAppToolbar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;
    }
.end annotation


# instance fields
.field public a:Landroidx/appcompat/widget/Toolbar;

.field public b:Landroidx/appcompat/widget/SearchView;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

.field private e:Landroidx/appcompat/widget/Toolbar;

.field private f:Landroid/widget/EditText;

.field private g:F

.field private h:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/CallAppToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/CallAppToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->c:Ljava/util/Set;

    .line 81
    new-instance p1, Lcom/callapp/contacts/widget/CallAppToolbar$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/CallAppToolbar$1;-><init>(Lcom/callapp/contacts/widget/CallAppToolbar;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->h:Landroid/view/View$OnTouchListener;

    const p1, 0x7f06008a

    .line 1109
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    .line 1110
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    const p2, 0x7f060026

    .line 1111
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    const p3, 0x7f060127

    .line 1112
    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    const v0, 0x7f0601ec

    .line 1113
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 1114
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0805ae

    goto :goto_0

    :cond_0
    const v1, 0x7f0805af

    .line 1116
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CallAppToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d02f7

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x7f0a0356

    .line 1118
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/widget/CallAppToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    iput-object v2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->e:Landroidx/appcompat/widget/Toolbar;

    .line 1119
    invoke-virtual {v2, p3}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    const p3, 0x7f0a07b1

    .line 1121
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/CallAppToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/Toolbar;

    iput-object p3, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1122
    invoke-virtual {p3, p2}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 1123
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    const p3, 0x7f0802e0

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 1124
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/callapp/contacts/widget/CallAppToolbar$2;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/widget/CallAppToolbar$2;-><init>(Lcom/callapp/contacts/widget/CallAppToolbar;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1131
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setContentInsetEndWithActions(I)V

    .line 1132
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setContentInsetStartWithNavigation(I)V

    const p2, 0x7f0a07be

    .line 1134
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/CallAppToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    .line 1135
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SearchView;->setBackgroundResource(I)V

    .line 1136
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->a()V

    .line 1137
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1138
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    sget-object v1, Lcom/callapp/contacts/widget/-$$Lambda$CallAppToolbar$2P0ubPbVFC_lszeRh95OFHJu4lk;->INSTANCE:Lcom/callapp/contacts/widget/-$$Lambda$CallAppToolbar$2P0ubPbVFC_lszeRh95OFHJu4lk;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1144
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 1145
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    const v1, 0x7fffffff

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 1146
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f1205fb

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1149
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    const v2, 0x7f0a07b7

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f08036f

    .line 1150
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 1154
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    const v2, 0x7f0a07bd

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    .line 1155
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1156
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1157
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    const v0, 0x7f060113

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1159
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1160
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    new-instance v0, Lcom/callapp/contacts/widget/CallAppToolbar$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/CallAppToolbar$3;-><init>(Lcom/callapp/contacts/widget/CallAppToolbar;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1172
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->e:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a0927

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0805b0

    const v2, 0x7f060244

    .line 1173
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {p2, v0, v2, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 1174
    iget-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->e:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a0922

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1175
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1177
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->h:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f0a0ac1

    .line 1180
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/CallAppToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 1181
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1182
    new-instance p1, Lcom/callapp/contacts/widget/CallAppToolbar$4;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/CallAppToolbar$4;-><init>(Lcom/callapp/contacts/widget/CallAppToolbar;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0678

    .line 1189
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1190
    new-instance p2, Lcom/callapp/contacts/widget/CallAppToolbar$5;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/CallAppToolbar$5;-><init>(Lcom/callapp/contacts/widget/CallAppToolbar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0180

    .line 1197
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1198
    new-instance p2, Lcom/callapp/contacts/widget/CallAppToolbar$6;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/CallAppToolbar$6;-><init>(Lcom/callapp/contacts/widget/CallAppToolbar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a093a

    .line 1205
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    .line 1206
    new-instance p1, Lcom/callapp/contacts/widget/CallAppToolbar$7;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/CallAppToolbar$7;-><init>(Lcom/callapp/contacts/widget/CallAppToolbar;)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1214
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1215
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->gq:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide p1

    const-wide/16 v0, 0x2

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    .line 1216
    new-instance p1, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v3, 0x7f0805a9

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v7, 0x1388

    new-instance v8, Lcom/callapp/contacts/widget/CallAppToolbar$8;

    invoke-direct {v8, p0, v2}, Lcom/callapp/contacts/widget/CallAppToolbar$8;-><init>(Lcom/callapp/contacts/widget/CallAppToolbar;Landroid/widget/ImageView;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;IIZZILcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->d:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    .line 1222
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gq:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return-void

    :cond_1
    const p1, 0x7f080468

    .line 1224
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    const/16 p1, 0x8

    .line 1228
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/CallAppToolbar;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->g:F

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/CallAppToolbar;)Landroid/widget/EditText;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    return-object p0
.end method

.method private static synthetic a(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x1f4

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/CallAppToolbar;Ljava/lang/String;)V
    .locals 1

    .line 1411
    iget-object p0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;

    .line 1412
    invoke-interface {v0, p1}, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/CallAppToolbar;)V
    .locals 1

    .line 1417
    iget-object p0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;

    .line 1418
    invoke-interface {v0}, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;

    .line 394
    invoke-interface {v1}, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/CallAppToolbar;)V
    .locals 1

    .line 1423
    iget-object p0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;

    .line 1424
    invoke-interface {v0}, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;

    .line 400
    invoke-interface {v1}, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/CallAppToolbar;)V
    .locals 1

    .line 1429
    iget-object p0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;

    .line 1430
    invoke-interface {v0}, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;->h()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Z)V
    .locals 5

    .line 315
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->e:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWidth()I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->e:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 320
    iget-object v3, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    iget v4, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->g:F

    float-to-int v4, v4

    int-to-float v0, v0

    invoke-static {v3, v4, v1, v2, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_0
    iget-object v3, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    iget v4, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->g:F

    float-to-int v4, v4

    int-to-float v0, v0

    invoke-static {v3, v4, v1, v0, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    const-wide/16 v1, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x96

    .line 324
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 327
    new-instance v1, Lcom/callapp/contacts/widget/CallAppToolbar$9;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/widget/CallAppToolbar$9;-><init>(Lcom/callapp/contacts/widget/CallAppToolbar;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_2

    .line 340
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 344
    :cond_2
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/CallAppToolbar;)V
    .locals 1

    .line 1435
    iget-object p0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;

    .line 1436
    invoke-interface {v0}, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;->i()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/widget/CallAppToolbar;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method public static synthetic lambda$2P0ubPbVFC_lszeRh95OFHJu4lk(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->a(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->requestFocus()Z

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 256
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 258
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->d(Z)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 266
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 267
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CallAppToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070183

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->g:F

    .line 270
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 273
    :goto_1
    invoke-direct {p0}, Lcom/callapp/contacts/widget/CallAppToolbar;->d()V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1405
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;

    .line 1406
    invoke-interface {v1, p1}, Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Z)V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 279
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    const v2, 0x7f1205fb

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 284
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->d(Z)V

    return-void

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->b(Z)V

    .line 295
    invoke-direct {p0}, Lcom/callapp/contacts/widget/CallAppToolbar;->c()V

    .line 296
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CallAppToolbar;->a()V

    return-void
.end method

.method public getCurrentSearchText()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->e:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public isInSearchMode()Z
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->d:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b()V

    .line 239
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->e:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 387
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar;->f:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method
