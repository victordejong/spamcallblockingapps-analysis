.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroidx/appcompat/view/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SearchView$a;,
        Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Landroidx/appcompat/widget/SearchView$f;,
        Landroidx/appcompat/widget/SearchView$e;,
        Landroidx/appcompat/widget/SearchView$d;,
        Landroidx/appcompat/widget/SearchView$b;,
        Landroidx/appcompat/widget/SearchView$c;
    }
.end annotation


# static fields
.field static final i:Landroidx/appcompat/widget/SearchView$a;


# instance fields
.field private A:Landroidx/appcompat/widget/SearchView$c;

.field private B:Landroidx/appcompat/widget/SearchView$b;

.field private C:Landroidx/appcompat/widget/SearchView$d;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Ljava/lang/CharSequence;

.field private I:Z

.field private J:Z

.field private K:I

.field private L:Z

.field private M:Ljava/lang/CharSequence;

.field private N:Ljava/lang/CharSequence;

.field private O:Z

.field private P:I

.field private Q:Landroid/os/Bundle;

.field private final R:Ljava/lang/Runnable;

.field private S:Ljava/lang/Runnable;

.field private final T:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final U:Landroid/view/View$OnClickListener;

.field private final V:Landroid/widget/TextView$OnEditorActionListener;

.field private final W:Landroid/widget/AdapterView$OnItemClickListener;

.field final a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field private final aa:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private ab:Landroid/text/TextWatcher;

.field final b:Landroid/widget/ImageView;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/widget/ImageView;

.field final e:Landroid/widget/ImageView;

.field f:Landroid/view/View$OnFocusChangeListener;

.field g:Landroidx/c/a/a;

.field h:Landroid/app/SearchableInfo;

.field j:Landroid/view/View$OnKeyListener;

.field private final k:Landroid/view/View;

.field private final l:Landroid/view/View;

.field private final m:Landroid/view/View;

.field private final n:Landroid/view/View;

.field private o:Landroidx/appcompat/widget/SearchView$f;

.field private p:Landroid/graphics/Rect;

.field private q:Landroid/graphics/Rect;

.field private r:[I

.field private s:[I

.field private final t:Landroid/widget/ImageView;

.field private final u:Landroid/graphics/drawable/Drawable;

.field private final v:I

.field private final w:I

.field private final x:Landroid/content/Intent;

.field private final y:Landroid/content/Intent;

.field private final z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Landroidx/appcompat/widget/SearchView$a;

    invoke-direct {v0}, Landroidx/appcompat/widget/SearchView$a;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/SearchView;->i:Landroidx/appcompat/widget/SearchView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 271
    sget v0, Landroidx/appcompat/a$a;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/high16 v7, 0x10000000

    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroid/graphics/Rect;

    .line 134
    new-array v0, v1, [I

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->r:[I

    .line 135
    new-array v0, v1, [I

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->s:[I

    .line 178
    new-instance v0, Landroidx/appcompat/widget/SearchView$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$1;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Landroidx/appcompat/widget/SearchView$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$3;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    .line 196
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->T:Ljava/util/WeakHashMap;

    .line 976
    new-instance v0, Landroidx/appcompat/widget/SearchView$6;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$6;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    .line 998
    new-instance v0, Landroidx/appcompat/widget/SearchView$7;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$7;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->j:Landroid/view/View$OnKeyListener;

    .line 1161
    new-instance v0, Landroidx/appcompat/widget/SearchView$8;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$8;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->V:Landroid/widget/TextView$OnEditorActionListener;

    .line 1407
    new-instance v0, Landroidx/appcompat/widget/SearchView$9;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$9;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->W:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1419
    new-instance v0, Landroidx/appcompat/widget/SearchView$10;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$10;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->aa:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1713
    new-instance v0, Landroidx/appcompat/widget/SearchView$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$2;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->ab:Landroid/text/TextWatcher;

    .line 277
    sget-object v0, Landroidx/appcompat/a$j;->SearchView:[I

    invoke-static {p1, p2, v0, p3, v6}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ap;

    move-result-object v1

    .line 280
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 281
    sget v2, Landroidx/appcompat/a$j;->SearchView_layout:I

    sget v3, Landroidx/appcompat/a$g;->abc_search_view:I

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 283
    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 285
    sget v0, Landroidx/appcompat/a$f;->search_src_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 286
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSearchView(Landroidx/appcompat/widget/SearchView;)V

    .line 288
    sget v0, Landroidx/appcompat/a$f;->search_edit_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/view/View;

    .line 289
    sget v0, Landroidx/appcompat/a$f;->search_plate:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/view/View;

    .line 290
    sget v0, Landroidx/appcompat/a$f;->submit_area:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->m:Landroid/view/View;

    .line 291
    sget v0, Landroidx/appcompat/a$f;->search_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/widget/ImageView;

    .line 292
    sget v0, Landroidx/appcompat/a$f;->search_go_btn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    .line 293
    sget v0, Landroidx/appcompat/a$f;->search_close_btn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    .line 294
    sget v0, Landroidx/appcompat/a$f;->search_voice_btn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    .line 295
    sget v0, Landroidx/appcompat/a$f;->search_mag_icon:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/widget/ImageView;

    .line 298
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/view/View;

    sget v2, Landroidx/appcompat/a$j;->SearchView_queryBackground:I

    .line 299
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 298
    invoke-static {v0, v2}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->m:Landroid/view/View;

    sget v2, Landroidx/appcompat/a$j;->SearchView_submitBackground:I

    .line 301
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 300
    invoke-static {v0, v2}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/widget/ImageView;

    sget v2, Landroidx/appcompat/a$j;->SearchView_searchIcon:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    sget v2, Landroidx/appcompat/a$j;->SearchView_goIcon:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    sget v2, Landroidx/appcompat/a$j;->SearchView_closeIcon:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    sget v2, Landroidx/appcompat/a$j;->SearchView_voiceIcon:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/widget/ImageView;

    sget v2, Landroidx/appcompat/a$j;->SearchView_searchIcon:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    sget v0, Landroidx/appcompat/a$j;->SearchView_searchHintIcon:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/drawable/Drawable;

    .line 310
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/widget/ImageView;

    .line 311
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/appcompat/a$h;->abc_searchview_description_search:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-static {v0, v2}, Landroidx/appcompat/widget/ar;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 314
    sget v0, Landroidx/appcompat/a$j;->SearchView_suggestionRowLayout:I

    sget v2, Landroidx/appcompat/a$g;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView;->v:I

    .line 316
    sget v0, Landroidx/appcompat/a$j;->SearchView_commitIcon:I

    invoke-virtual {v1, v0, v6}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView;->w:I

    .line 318
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->ab:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 325
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->V:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 326
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->W:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 327
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->aa:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 328
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->j:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 331
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    new-instance v2, Landroidx/appcompat/widget/SearchView$4;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/SearchView$4;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 339
    sget v0, Landroidx/appcompat/a$j;->SearchView_iconifiedByDefault:I

    invoke-virtual {v1, v0, v5}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 341
    sget v0, Landroidx/appcompat/a$j;->SearchView_android_maxWidth:I

    invoke-virtual {v1, v0, v4}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v0

    .line 342
    if-eq v0, v4, :cond_0

    .line 343
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 346
    :cond_0
    sget v0, Landroidx/appcompat/a$j;->SearchView_defaultQueryHint:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->z:Ljava/lang/CharSequence;

    .line 347
    sget v0, Landroidx/appcompat/a$j;->SearchView_queryHint:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->H:Ljava/lang/CharSequence;

    .line 349
    sget v0, Landroidx/appcompat/a$j;->SearchView_android_imeOptions:I

    invoke-virtual {v1, v0, v4}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v0

    .line 350
    if-eq v0, v4, :cond_1

    .line 351
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 354
    :cond_1
    sget v0, Landroidx/appcompat/a$j;->SearchView_android_inputType:I

    invoke-virtual {v1, v0, v4}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v0

    .line 355
    if-eq v0, v4, :cond_2

    .line 356
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 360
    :cond_2
    sget v0, Landroidx/appcompat/a$j;->SearchView_android_focusable:I

    invoke-virtual {v1, v0, v5}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v0

    .line 361
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setFocusable(Z)V

    .line 363
    invoke-virtual {v1}, Landroidx/appcompat/widget/ap;->a()V

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/content/Intent;

    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/content/Intent;

    .line 372
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/view/View;

    .line 375
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/view/View;

    new-instance v1, Landroidx/appcompat/widget/SearchView$5;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$5;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 385
    :cond_3
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 386
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->r()V

    .line 387
    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1567
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1568
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1569
    const-string/jumbo v2, "calling_package"

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1571
    return-object v1

    .line 1570
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1656
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/aj;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1658
    if-nez v1, :cond_0

    .line 1659
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1661
    :cond_0
    if-nez v1, :cond_1

    .line 1662
    const-string/jumbo v1, "android.intent.action.SEARCH"

    .line 1666
    :cond_1
    const-string/jumbo v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/aj;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1667
    if-nez v0, :cond_2

    .line 1668
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    .line 1671
    :cond_2
    if-eqz v0, :cond_3

    .line 1672
    const-string/jumbo v2, "suggest_intent_data_id"

    invoke-static {p1, v2}, Landroidx/appcompat/widget/aj;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1673
    if-eqz v2, :cond_3

    .line 1674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1677
    :cond_3
    if-nez v0, :cond_4

    move-object v2, v7

    .line 1679
    :goto_0
    const-string/jumbo v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/aj;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1680
    const-string/jumbo v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/aj;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1682
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1692
    :goto_1
    return-object v0

    .line 1677
    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1683
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1686
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1690
    :goto_2
    const-string/jumbo v2, "SearchView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Search suggestions cursor at row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " returned exception."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 1692
    goto :goto_1

    .line 1687
    :catch_1
    move-exception v0

    .line 1688
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1537
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1538
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1542
    if-eqz p2, :cond_0

    .line 1543
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1545
    :cond_0
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1546
    if-eqz p4, :cond_1

    .line 1547
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1549
    :cond_1
    if-eqz p3, :cond_2

    .line 1550
    const-string/jumbo v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1552
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1553
    const-string/jumbo v1, "app_data"

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1555
    :cond_3
    if-eqz p5, :cond_4

    .line 1556
    const-string/jumbo v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1557
    const-string/jumbo v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1560
    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1494
    if-nez p1, :cond_0

    .line 1504
    :goto_0
    return-void

    .line 1500
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1501
    :catch_0
    move-exception v0

    .line 1502
    const-string/jumbo v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 851
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->r:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 852
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->s:[I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->getLocationInWindow([I)V

    .line 853
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->r:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->s:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 854
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->r:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->s:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 855
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 856
    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 869
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->F:Z

    .line 871
    if-eqz p1, :cond_1

    move v0, v1

    .line 873
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 875
    :goto_1
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 876
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/SearchView;->b(Z)V

    .line 877
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-eqz v0, :cond_4

    .line 885
    :cond_0
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->p()V

    .line 888
    if-nez v3, :cond_5

    :goto_4
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/SearchView;->c(Z)V

    .line 889
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->o()V

    .line 890
    return-void

    :cond_1
    move v0, v2

    .line 871
    goto :goto_0

    :cond_2
    move v3, v1

    .line 873
    goto :goto_1

    :cond_3
    move v0, v1

    .line 877
    goto :goto_2

    :cond_4
    move v2, v1

    .line 883
    goto :goto_3

    :cond_5
    move v4, v1

    .line 888
    goto :goto_4
.end method

.method static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1706
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1582
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 1587
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1588
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1589
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1596
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1597
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1598
    const-string/jumbo v0, "app_data"

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1604
    :cond_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1607
    const-string/jumbo v0, "free_form"

    .line 1610
    const/4 v4, 0x1

    .line 1612
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1613
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1614
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1616
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1617
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1619
    :goto_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v9

    if-eqz v9, :cond_4

    .line 1620
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1622
    :goto_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v9

    if-eqz v9, :cond_2

    .line 1623
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v4

    .line 1626
    :cond_2
    const-string/jumbo v9, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1627
    const-string/jumbo v0, "android.speech.extra.PROMPT"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1628
    const-string/jumbo v0, "android.speech.extra.LANGUAGE"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1629
    const-string/jumbo v0, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1630
    const-string/jumbo v0, "calling_package"

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    const-string/jumbo v0, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1635
    const-string/jumbo v0, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1637
    return-object v8

    .line 1631
    :cond_3
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v3, v2

    goto :goto_1

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 914
    const/16 v0, 0x8

    .line 915
    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->L:Z

    if-nez v1, :cond_1

    .line 917
    :cond_0
    const/4 v0, 0x0

    .line 919
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 920
    return-void
.end method

.method private b(IILjava/lang/String;)Z
    .locals 2

    .prologue
    .line 1477
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    invoke-virtual {v0}, Landroidx/c/a/a;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 1478
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1480
    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/SearchView;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1483
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Landroid/content/Intent;)V

    .line 1485
    const/4 v0, 0x1

    .line 1487
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1088
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-object p1

    .line 1092
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1093
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1095
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1096
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1097
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object p1, v0

    .line 1098
    goto :goto_0
.end method

.method private c(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 1153
    .line 1154
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->L:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1155
    const/4 v0, 0x0

    .line 1156
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1158
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1159
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private e(I)V
    .locals 3

    .prologue
    .line 1444
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1445
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    invoke-virtual {v1}, Landroidx/c/a/a;->a()Landroid/database/Cursor;

    move-result-object v1

    .line 1446
    if-nez v1, :cond_0

    .line 1464
    :goto_0
    return-void

    .line 1449
    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1451
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    invoke-virtual {v2, v1}, Landroidx/c/a/a;->b(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1452
    if-eqz v1, :cond_1

    .line 1455
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1458
    :cond_1
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1462
    :cond_2
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 864
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$d;->abc_search_view_preferred_height:I

    .line 865
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 864
    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 859
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$d;->abc_search_view_preferred_width:I

    .line 860
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 859
    return v0
.end method

.method private m()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 893
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    const/4 v1, 0x0

    .line 895
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 896
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/content/Intent;

    .line 900
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 901
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 903
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 906
    :cond_1
    return v0

    .line 897
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 898
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/content/Intent;

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 910
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->L:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 923
    const/16 v0, 0x8

    .line 924
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    .line 925
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    .line 926
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 927
    :cond_0
    const/4 v0, 0x0

    .line 929
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 930
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 933
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 936
    :goto_0
    if-nez v2, :cond_0

    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->O:Z

    if-nez v3, :cond_3

    .line 937
    :cond_0
    :goto_1
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 939
    if-eqz v1, :cond_1

    .line 940
    if-eqz v2, :cond_5

    sget-object v0, Landroidx/appcompat/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 942
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 933
    goto :goto_0

    :cond_3
    move v0, v1

    .line 936
    goto :goto_1

    .line 937
    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    .line 940
    :cond_5
    sget-object v0, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private q()V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 946
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 1102
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1103
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1104
    return-void
.end method

.method private s()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1110
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1111
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1112
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1115
    and-int/lit8 v2, v0, 0xf

    if-ne v2, v1, :cond_0

    .line 1118
    const v2, -0x10001

    and-int/2addr v0, v2

    .line 1119
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1120
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 1127
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 1130
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1131
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/c/a/a;->a(Landroid/database/Cursor;)V

    .line 1136
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1137
    new-instance v0, Landroidx/appcompat/widget/aj;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->T:Ljava/util/WeakHashMap;

    invoke-direct {v0, v2, p0, v3, v4}, Landroidx/appcompat/widget/aj;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    .line 1139
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1140
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    check-cast v0, Landroidx/appcompat/widget/aj;

    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView;->I:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/aj;->a(I)V

    .line 1144
    :cond_3
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1510
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1512
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1513
    return-void

    .line 1512
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1203
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1291
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->O:Z

    if-eqz v0, :cond_0

    .line 1298
    :goto_0
    return-void

    .line 1293
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->O:Z

    .line 1294
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView;->P:I

    .line 1295
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroidx/appcompat/widget/SearchView;->P:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1296
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1516
    const-string/jumbo v1, "android.intent.action.SEARCH"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1517
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1518
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1519
    return-void
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 973
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 974
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 574
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    .line 578
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->e()V

    .line 581
    :cond_1
    return-void
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->C:Landroidx/appcompat/widget/SearchView$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->C:Landroidx/appcompat/widget/SearchView$d;

    .line 1400
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SearchView$d;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1401
    :cond_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->e(I)V

    .line 1402
    const/4 v0, 0x1

    .line 1404
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(IILjava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1388
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->C:Landroidx/appcompat/widget/SearchView$d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->C:Landroidx/appcompat/widget/SearchView$d;

    .line 1389
    invoke-interface {v1, p1}, Landroidx/appcompat/widget/SearchView$d;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1390
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->b(IILjava/lang/String;)Z

    .line 1391
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1392
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->t()V

    .line 1393
    const/4 v0, 0x1

    .line 1395
    :cond_1
    return v0
.end method

.method a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1043
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    if-nez v0, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return v1

    .line 1046
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    const/16 v0, 0x42

    if-eq p2, v0, :cond_2

    const/16 v0, 0x54

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3d

    if-ne p2, v0, :cond_3

    .line 1054
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    .line 1055
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/widget/SearchView;->a(IILjava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1060
    :cond_3
    if-eq p2, v3, :cond_4

    const/16 v0, 0x16

    if-ne p2, v0, :cond_6

    .line 1065
    :cond_4
    if-ne p2, v3, :cond_5

    move v0, v1

    .line 1067
    :goto_1
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1068
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1069
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1070
    sget-object v0, Landroidx/appcompat/widget/SearchView;->i:Landroidx/appcompat/widget/SearchView$a;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView$a;->a(Landroid/widget/AutoCompleteTextView;Z)V

    move v1, v2

    .line 1072
    goto :goto_0

    .line 1065
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 1066
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result v0

    goto :goto_1

    .line 1076
    :cond_6
    const/16 v0, 0x13

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1279
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    .line 1280
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1281
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1282
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroidx/appcompat/widget/SearchView;->P:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1283
    iput-boolean v2, p0, Landroidx/appcompat/widget/SearchView;->O:Z

    .line 1284
    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1174
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1175
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    .line 1176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1177
    :goto_0
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->b(Z)V

    .line 1178
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->c(Z)V

    .line 1179
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->p()V

    .line 1180
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->o()V

    .line 1181
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->M:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$c;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/SearchView$c;->b(Ljava/lang/String;)Z

    .line 1184
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->M:Ljava/lang/CharSequence;

    .line 1185
    return-void

    :cond_1
    move v0, v2

    .line 1176
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1178
    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->F:Z

    return v0
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    .line 498
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->clearFocus()V

    .line 499
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 500
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 501
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    .line 502
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 950
    if-eqz v0, :cond_2

    sget-object v0, Landroidx/appcompat/widget/SearchView;->FOCUSED_STATE_SET:[I

    .line 951
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 952
    if-eqz v1, :cond_0

    .line 953
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 955
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 956
    if-eqz v1, :cond_1

    .line 957
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 959
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->invalidate()V

    .line 960
    return-void

    .line 950
    :cond_2
    sget-object v0, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1188
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1189
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1190
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$c;

    .line 1191
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/SearchView$c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1192
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1193
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v0}, Landroidx/appcompat/widget/SearchView;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1195
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1196
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->t()V

    .line 1199
    :cond_2
    return-void
.end method

.method f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1206
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1208
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-eqz v0, :cond_1

    .line 1210
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->B:Landroidx/appcompat/widget/SearchView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->B:Landroidx/appcompat/widget/SearchView$b;

    invoke-interface {v0}, Landroidx/appcompat/widget/SearchView$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1212
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1214
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1223
    :cond_1
    :goto_0
    return-void

    .line 1218
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1220
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method g()V
    .locals 2

    .prologue
    .line 1226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1227
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1228
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1229
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->D:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->D:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1232
    :cond_0
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->K:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->H:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->H:Ljava/lang/CharSequence;

    .line 626
    :goto_0
    return-object v0

    .line 621
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->z:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->w:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->v:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroidx/c/a/a;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    return-object v0
.end method

.method h()V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    if-nez v0, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    .line 1241
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1242
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1244
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1250
    :catch_0
    move-exception v0

    .line 1253
    const-string/jumbo v0, "SearchView"

    const-string/jumbo v1, "Could not find voice search activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1245
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1246
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1248
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method i()V
    .locals 1

    .prologue
    .line 1258
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1261
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->q()V

    .line 1262
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->l()V

    .line 1265
    :cond_0
    return-void
.end method

.method k()V
    .locals 6

    .prologue
    .line 1364
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1365
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1366
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 1367
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1368
    invoke-static {p0}, Landroidx/appcompat/widget/av;->a(Landroid/view/View;)Z

    move-result v1

    .line 1369
    iget-boolean v4, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-eqz v4, :cond_1

    sget v4, Landroidx/appcompat/a$d;->abc_dropdownitem_icon_width:I

    .line 1370
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Landroidx/appcompat/a$d;->abc_dropdownitem_text_padding_left:I

    .line 1371
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 1373
    :goto_0
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1375
    if-eqz v1, :cond_2

    .line 1376
    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    .line 1380
    :goto_1
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1381
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 1383
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1385
    :cond_0
    return-void

    .line 1371
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1378
    :cond_2
    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    sub-int v1, v2, v1

    goto :goto_1
.end method

.method l()V
    .locals 2

    .prologue
    .line 1697
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1698
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->refreshAutoCompleteResults()V

    .line 1703
    :goto_0
    return-void

    .line 1700
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/SearchView;->i:Landroidx/appcompat/widget/SearchView$a;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$a;->a(Landroid/widget/AutoCompleteTextView;)V

    .line 1701
    sget-object v0, Landroidx/appcompat/widget/SearchView;->i:Landroidx/appcompat/widget/SearchView$a;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$a;->b(Landroid/widget/AutoCompleteTextView;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 965
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 966
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 967
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 832
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 834
    if-eqz p1, :cond_0

    .line 837
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/SearchView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 838
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 840
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/appcompat/widget/SearchView$f;

    if-nez v0, :cond_1

    .line 841
    new-instance v0, Landroidx/appcompat/widget/SearchView$f;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/SearchView$f;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/appcompat/widget/SearchView$f;

    .line 843
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/appcompat/widget/SearchView$f;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/appcompat/widget/SearchView$f;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView$f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 783
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 828
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 789
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 791
    sparse-switch v1, :sswitch_data_0

    .line 813
    :cond_1
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 814
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 816
    sparse-switch v2, :sswitch_data_1

    .line 826
    :goto_2
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 827
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 826
    invoke-super {p0, v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_0

    .line 794
    :sswitch_0
    iget v1, p0, Landroidx/appcompat/widget/SearchView;->K:I

    if-lez v1, :cond_2

    .line 795
    iget v1, p0, Landroidx/appcompat/widget/SearchView;->K:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 797
    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 802
    :sswitch_1
    iget v1, p0, Landroidx/appcompat/widget/SearchView;->K:I

    if-lez v1, :cond_1

    .line 803
    iget v1, p0, Landroidx/appcompat/widget/SearchView;->K:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 808
    :sswitch_2
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->K:I

    if-lez v0, :cond_3

    iget v0, p0, Landroidx/appcompat/widget/SearchView;->K:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_1

    .line 818
    :sswitch_3
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 821
    :sswitch_4
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v1

    goto :goto_2

    .line 791
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 816
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1353
    instance-of v0, p1, Landroidx/appcompat/widget/SearchView$e;

    if-nez v0, :cond_0

    .line 1354
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1361
    :goto_0
    return-void

    .line 1357
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/SearchView$e;

    .line 1358
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$e;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1359
    iget-boolean v0, p1, Landroidx/appcompat/widget/SearchView$e;->a:Z

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1360
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1345
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1346
    new-instance v1, Landroidx/appcompat/widget/SearchView$e;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$e;-><init>(Landroid/os/Parcelable;)V

    .line 1347
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    iput-boolean v0, v1, Landroidx/appcompat/widget/SearchView$e;->a:Z

    .line 1348
    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1269
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1271
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->q()V

    .line 1272
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 480
    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    if-eqz v1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 482
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 485
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 486
    if-eqz v1, :cond_2

    .line 487
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    :cond_2
    move v0, v1

    .line 489
    goto :goto_0

    .line 491
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    .line 430
    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    .prologue
    .line 669
    if-eqz p1, :cond_0

    .line 670
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->f()V

    .line 674
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->g()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .prologue
    .line 642
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-ne v0, p1, :cond_0

    .line 646
    :goto_0
    return-void

    .line 643
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    .line 644
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 645
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->r()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 442
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 465
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .prologue
    .line 764
    iput p1, p0, Landroidx/appcompat/widget/SearchView;->K:I

    .line 766
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    .line 767
    return-void
.end method

.method public setOnCloseListener(Landroidx/appcompat/widget/SearchView$b;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->B:Landroidx/appcompat/widget/SearchView$b;

    .line 521
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/view/View$OnFocusChangeListener;

    .line 530
    return-void
.end method

.method public setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$c;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$c;

    .line 512
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->D:Landroid/view/View$OnClickListener;

    .line 551
    return-void
.end method

.method public setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$d;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->C:Landroidx/appcompat/widget/SearchView$d;

    .line 539
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->H:Ljava/lang/CharSequence;

    .line 595
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->r()V

    .line 596
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    .prologue
    .line 723
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->I:Z

    .line 724
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    instance-of v0, v0, Landroidx/appcompat/widget/aj;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    check-cast v0, Landroidx/appcompat/widget/aj;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/aj;->a(I)V

    .line 728
    :cond_0
    return-void

    .line 725
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2

    .prologue
    .line 406
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    .line 407
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->s()V

    .line 409
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->r()V

    .line 412
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->m()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->L:Z

    .line 414
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->L:Z

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, "nm"

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 419
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 420
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 695
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    .line 696
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 697
    return-void
.end method

.method public setSuggestionsAdapter(Landroidx/c/a/a;)V
    .locals 2

    .prologue
    .line 745
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    .line 747
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 748
    return-void
.end method
