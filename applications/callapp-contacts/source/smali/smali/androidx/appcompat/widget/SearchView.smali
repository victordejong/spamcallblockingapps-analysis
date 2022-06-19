.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SearchView$d;,
        Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Landroidx/appcompat/widget/SearchView$e;,
        Landroidx/appcompat/widget/SearchView$SavedState;,
        Landroidx/appcompat/widget/SearchView$c;,
        Landroidx/appcompat/widget/SearchView$a;,
        Landroidx/appcompat/widget/SearchView$b;
    }
.end annotation


# static fields
.field static final r:Landroidx/appcompat/widget/SearchView$d;


# instance fields
.field private final A:Landroid/widget/ImageView;

.field private final B:Landroid/graphics/drawable/Drawable;

.field private final C:Ljava/lang/CharSequence;

.field private D:Landroidx/appcompat/widget/SearchView$b;

.field private E:Landroidx/appcompat/widget/SearchView$a;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Z

.field private H:Z

.field private I:Ljava/lang/CharSequence;

.field private J:Z

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Ljava/lang/CharSequence;

.field private O:Ljava/lang/CharSequence;

.field private P:Z

.field private Q:I

.field private final R:Ljava/lang/Runnable;

.field private S:Ljava/lang/Runnable;

.field private final T:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
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

.field final b:Landroid/view/View;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/widget/ImageView;

.field final e:Landroid/widget/ImageView;

.field final f:Landroid/widget/ImageView;

.field final g:Landroid/view/View;

.field final h:I

.field final i:I

.field final j:Landroid/content/Intent;

.field final k:Landroid/content/Intent;

.field l:Landroid/view/View$OnFocusChangeListener;

.field m:Landroidx/appcompat/widget/SearchView$c;

.field n:Z

.field o:Landroidx/d/a/a;

.field p:Landroid/app/SearchableInfo;

.field q:Landroid/os/Bundle;

.field s:Landroid/view/View$OnKeyListener;

.field private final t:Landroid/view/View;

.field private final u:Landroid/view/View;

.field private v:Landroidx/appcompat/widget/SearchView$e;

.field private w:Landroid/graphics/Rect;

.field private x:Landroid/graphics/Rect;

.field private y:[I

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    new-instance v0, Landroidx/appcompat/widget/SearchView$d;

    invoke-direct {v0}, Landroidx/appcompat/widget/SearchView$d;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/appcompat/widget/SearchView;->r:Landroidx/appcompat/widget/SearchView$d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 276
    sget v0, Landroidx/appcompat/a$a;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 280
    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->w:Landroid/graphics/Rect;

    .line 137
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->x:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 138
    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->y:[I

    new-array v1, v1, [I

    .line 139
    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->z:[I

    .line 183
    new-instance v1, Landroidx/appcompat/widget/SearchView$1;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$1;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    .line 190
    new-instance v1, Landroidx/appcompat/widget/SearchView$3;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$3;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    .line 201
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->T:Ljava/util/WeakHashMap;

    .line 981
    new-instance v1, Landroidx/appcompat/widget/SearchView$6;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$6;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    .line 1003
    new-instance v2, Landroidx/appcompat/widget/SearchView$7;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$7;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View$OnKeyListener;

    .line 1166
    new-instance v2, Landroidx/appcompat/widget/SearchView$8;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$8;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->V:Landroid/widget/TextView$OnEditorActionListener;

    .line 1412
    new-instance v3, Landroidx/appcompat/widget/SearchView$9;

    invoke-direct {v3, v0}, Landroidx/appcompat/widget/SearchView$9;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v3, v0, Landroidx/appcompat/widget/SearchView;->W:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1424
    new-instance v4, Landroidx/appcompat/widget/SearchView$10;

    invoke-direct {v4, v0}, Landroidx/appcompat/widget/SearchView$10;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v4, v0, Landroidx/appcompat/widget/SearchView;->aa:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1718
    new-instance v5, Landroidx/appcompat/widget/SearchView$2;

    invoke-direct {v5, v0}, Landroidx/appcompat/widget/SearchView$2;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v5, v0, Landroidx/appcompat/widget/SearchView;->ab:Landroid/text/TextWatcher;

    .line 282
    sget-object v5, Landroidx/appcompat/a$j;->SearchView:[I

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {v7, v8, v5, v9, v6}, Landroidx/appcompat/widget/ab;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ab;

    move-result-object v5

    .line 285
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 286
    sget v8, Landroidx/appcompat/a$j;->SearchView_layout:I

    sget v9, Landroidx/appcompat/a$g;->abc_search_view:I

    invoke-virtual {v5, v8, v9}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result v8

    const/4 v9, 0x1

    .line 288
    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 290
    sget v7, Landroidx/appcompat/a$f;->search_src_text:I

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v7, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 2868
    iput-object v0, v7, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a:Landroidx/appcompat/widget/SearchView;

    .line 293
    sget v8, Landroidx/appcompat/a$f;->search_edit_frame:I

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/SearchView;->t:Landroid/view/View;

    .line 294
    sget v8, Landroidx/appcompat/a$f;->search_plate:I

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/SearchView;->b:Landroid/view/View;

    .line 295
    sget v10, Landroidx/appcompat/a$f;->submit_area:I

    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v0, Landroidx/appcompat/widget/SearchView;->u:Landroid/view/View;

    .line 296
    sget v11, Landroidx/appcompat/a$f;->search_button:I

    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    .line 297
    sget v12, Landroidx/appcompat/a$f;->search_go_btn:I

    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    .line 298
    sget v13, Landroidx/appcompat/a$f;->search_close_btn:I

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    .line 299
    sget v14, Landroidx/appcompat/a$f;->search_voice_btn:I

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 300
    sget v15, Landroidx/appcompat/a$f;->search_mag_icon:I

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    iput-object v15, v0, Landroidx/appcompat/widget/SearchView;->A:Landroid/widget/ImageView;

    .line 303
    sget v9, Landroidx/appcompat/a$j;->SearchView_queryBackground:I

    .line 304
    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 303
    invoke-static {v8, v9}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 305
    sget v8, Landroidx/appcompat/a$j;->SearchView_submitBackground:I

    .line 306
    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 305
    invoke-static {v10, v8}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 307
    sget v8, Landroidx/appcompat/a$j;->SearchView_searchIcon:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    sget v8, Landroidx/appcompat/a$j;->SearchView_goIcon:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    sget v8, Landroidx/appcompat/a$j;->SearchView_closeIcon:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    sget v8, Landroidx/appcompat/a$j;->SearchView_voiceIcon:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    sget v8, Landroidx/appcompat/a$j;->SearchView_searchIcon:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    sget v8, Landroidx/appcompat/a$j;->SearchView_searchHintIcon:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/drawable/Drawable;

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroidx/appcompat/a$h;->abc_searchview_description_search:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 315
    invoke-static {v11, v8}, Landroidx/appcompat/widget/ad;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 319
    sget v8, Landroidx/appcompat/a$j;->SearchView_suggestionRowLayout:I

    sget v9, Landroidx/appcompat/a$g;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v5, v8, v9}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result v8

    iput v8, v0, Landroidx/appcompat/widget/SearchView;->h:I

    .line 321
    sget v8, Landroidx/appcompat/a$j;->SearchView_commitIcon:I

    invoke-virtual {v5, v8, v6}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result v6

    iput v6, v0, Landroidx/appcompat/widget/SearchView;->i:I

    .line 323
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->ab:Landroid/text/TextWatcher;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 330
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 331
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 332
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 333
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 336
    new-instance v1, Landroidx/appcompat/widget/SearchView$4;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$4;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 344
    sget v1, Landroidx/appcompat/a$j;->SearchView_iconifiedByDefault:I

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/ab;->a(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 346
    sget v1, Landroidx/appcompat/a$j;->SearchView_android_maxWidth:I

    const/4 v2, -0x1

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 348
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 351
    :cond_0
    sget v1, Landroidx/appcompat/a$j;->SearchView_defaultQueryHint:I

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->C:Ljava/lang/CharSequence;

    .line 352
    sget v1, Landroidx/appcompat/a$j;->SearchView_queryHint:I

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->I:Ljava/lang/CharSequence;

    .line 354
    sget v1, Landroidx/appcompat/a$j;->SearchView_android_imeOptions:I

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 356
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 359
    :cond_1
    sget v1, Landroidx/appcompat/a$j;->SearchView_android_inputType:I

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 361
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 365
    :cond_2
    sget v1, Landroidx/appcompat/a$j;->SearchView_android_focusable:I

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/ab;->a(IZ)Z

    move-result v1

    .line 366
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setFocusable(Z)V

    .line 3252
    iget-object v1, v5, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->j:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 372
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "web_search"

    .line 373
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->k:Landroid/content/Intent;

    .line 377
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    invoke-virtual {v7}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->g:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 381
    new-instance v2, Landroidx/appcompat/widget/SearchView$5;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$5;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 390
    :cond_3
    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView;->n:Z

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 391
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/SearchView;->t()V

    return-void
.end method

.method private a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 7

    const/4 p2, 0x0

    :try_start_0
    const-string p3, "suggest_intent_action"

    .line 1661
    invoke-static {p1, p3}, Landroidx/appcompat/widget/w;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 1664
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {p3}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-nez p3, :cond_1

    const-string p3, "android.intent.action.SEARCH"

    :cond_1
    move-object v1, p3

    const-string p3, "suggest_intent_data"

    .line 1671
    invoke-static {p1, p3}, Landroidx/appcompat/widget/w;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    .line 1673
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {p3}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object p3

    :cond_2
    if-eqz p3, :cond_3

    const-string v0, "suggest_intent_data_id"

    .line 1677
    invoke-static {p1, v0}, Landroidx/appcompat/widget/w;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_3
    if-nez p3, :cond_4

    move-object v2, p2

    goto :goto_0

    .line 1682
    :cond_4
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    move-object v2, p3

    :goto_0
    const-string p3, "suggest_intent_query"

    .line 1684
    invoke-static {p1, p3}, Landroidx/appcompat/widget/w;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p3, "suggest_intent_extra_data"

    .line 1685
    invoke-static {p1, p3}, Landroidx/appcompat/widget/w;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1687
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p3

    .line 1691
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, -0x1

    .line 1695
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Search suggestions cursor at row "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned exception."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchView"

    invoke-static {v0, p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1542
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 1543
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 1548
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1550
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->O:Ljava/lang/CharSequence;

    const-string p2, "user_query"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p1, "query"

    .line 1552
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "intent_extra_data_key"

    .line 1555
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string p2, "app_data"

    .line 1558
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "action_key"

    .line 1561
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_msg"

    .line 1562
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1505
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1507
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed launch activity: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SearchView"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 874
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 878
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 880
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 881
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/SearchView;->b(Z)V

    .line 882
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->n:Z

    if-eqz p1, :cond_3

    :cond_2
    const/16 v0, 0x8

    .line 890
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 892
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->r()V

    xor-int/lit8 p1, v3, 0x1

    .line 893
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->c(Z)V

    .line 894
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->q()V

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1

    .line 1711
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Z)V
    .locals 1

    .line 920
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 924
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 1093
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1097
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 1098
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1100
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1101
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1102
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private c(Z)V
    .locals 2

    .line 1159
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 11688
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1161
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 1163
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private m()Ljava/lang/CharSequence;
    .locals 2

    .line 624
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->I:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->C:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method private n()I
    .locals 2

    .line 864
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$d;->abc_search_view_preferred_width:I

    .line 865
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private o()I
    .locals 2

    .line 869
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$d;->abc_search_view_preferred_height:I

    .line 870
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    if-eqz v0, :cond_1

    .line 10688
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private q()V
    .locals 2

    .line 929
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    .line 930
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 931
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 934
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private r()V
    .locals 4

    .line 938
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 941
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->n:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->P:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 942
    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 943
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 945
    sget-object v0, Landroidx/appcompat/widget/SearchView;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v0, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method private s()V
    .locals 1

    .line 950
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private t()V
    .locals 2

    .line 1107
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->m()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1108
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1296
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->P:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1298
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->P:Z

    .line 1299
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView;->Q:I

    .line 1300
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1301
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 1302
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1179
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1180
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->O:Ljava/lang/CharSequence;

    .line 1181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1182
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->b(Z)V

    xor-int/lit8 v0, v0, 0x1

    .line 1183
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->c(Z)V

    .line 1184
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->r()V

    .line 1185
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->q()V

    .line 1186
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->D:Landroidx/appcompat/widget/SearchView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1189
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 7

    const-string v1, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1522
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1523
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final b()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 1284
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1285
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    .line 1286
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1287
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Landroidx/appcompat/widget/SearchView;->Q:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1288
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->P:Z

    return-void
.end method

.method final b(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1515
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1517
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void
.end method

.method final b(I)Z
    .locals 2

    .line 1393
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/appcompat/widget/SearchView$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1394
    invoke-interface {v0}, Landroidx/appcompat/widget/SearchView$c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 14482
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/d/a/a;

    invoke-virtual {v0}, Landroidx/d/a/a;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14483
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 14485
    invoke-direct {p0, v0, v1, p1}, Landroidx/appcompat/widget/SearchView;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 14488
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Landroid/content/Intent;)V

    .line 1396
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a(Z)V

    .line 15207
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    const/4 p1, 0x1

    return p1
.end method

.method final c()V
    .locals 2

    .line 954
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    sget-object v0, Landroidx/appcompat/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    .line 956
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 958
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 960
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 962
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 964
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->invalidate()V

    return-void
.end method

.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    .line 503
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->clearFocus()V

    .line 504
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 505
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a(Z)V

    .line 506
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    return-void
.end method

.method final h()V
    .locals 2

    .line 1193
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1194
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1195
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->D:Landroidx/appcompat/widget/SearchView$b;

    if-eqz v1, :cond_0

    .line 1196
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    invoke-interface {v1}, Landroidx/appcompat/widget/SearchView$b;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1197
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1198
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/String;)V

    .line 1200
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a(Z)V

    .line 12207
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    :cond_2
    return-void
.end method

.method final i()V
    .locals 3

    .line 1211
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1213
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->n:Z

    if-eqz v0, :cond_2

    .line 1215
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->E:Landroidx/appcompat/widget/SearchView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/SearchView$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1217
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1219
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    return-void

    .line 1223
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1225
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a(Z)V

    :cond_2
    return-void
.end method

.method final j()V
    .locals 2

    const/4 v0, 0x0

    .line 1231
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1232
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1233
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a(Z)V

    .line 1234
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1235
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method final k()V
    .locals 1

    .line 12688
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    .line 1263
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1266
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->s()V

    .line 1267
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->l()V

    :cond_0
    return-void
.end method

.method final l()V
    .locals 2

    .line 1702
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1703
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->refreshAutoCompleteResults()V

    return-void

    .line 1705
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/SearchView;->r:Landroidx/appcompat/widget/SearchView$d;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$d;->a(Landroid/widget/AutoCompleteTextView;)V

    .line 1706
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$d;->b(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 969
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 970
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 971
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 837
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 842
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/graphics/Rect;

    .line 9856
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->y:[I

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 9857
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->z:[I

    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SearchView;->getLocationInWindow([I)V

    .line 9858
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->y:[I

    const/4 v0, 0x1

    aget v1, p4, v0

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->z:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    .line 9859
    aget p4, p4, v0

    aget v2, v2, v0

    sub-int/2addr p4, v2

    .line 9860
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p2, p4, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 843
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/graphics/Rect;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 845
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->v:Landroidx/appcompat/widget/SearchView$e;

    if-nez p1, :cond_0

    .line 846
    new-instance p1, Landroidx/appcompat/widget/SearchView$e;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/graphics/Rect;

    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-direct {p1, p2, p3, p4}, Landroidx/appcompat/widget/SearchView$e;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->v:Landroidx/appcompat/widget/SearchView$e;

    .line 848
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void

    .line 850
    :cond_0
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/SearchView$e;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 9688
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-eqz v0, :cond_0

    .line 789
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void

    .line 793
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 794
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 807
    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->L:I

    if-lez v0, :cond_6

    .line 808
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 813
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/SearchView;->L:I

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->n()I

    move-result p1

    goto :goto_0

    .line 799
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->L:I

    if-lez v0, :cond_5

    .line 800
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 802
    :cond_5
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->n()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 818
    :cond_6
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 819
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_1

    .line 826
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->o()I

    move-result p2

    goto :goto_1

    .line 823
    :cond_8
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->o()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 831
    :goto_1
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 832
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 831
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1358
    instance-of v0, p1, Landroidx/appcompat/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 1359
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1362
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/SearchView$SavedState;

    .line 1363
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1364
    iget-boolean p1, p1, Landroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1365
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1350
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1351
    new-instance v1, Landroidx/appcompat/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 13688
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    .line 1352
    iput-boolean v0, v1, Landroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1274
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1276
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->s()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 485
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 7688
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-nez v0, :cond_3

    .line 490
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 492
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    :cond_2
    return p1

    .line 496
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .line 434
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->i()V

    return-void

    .line 677
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->j()V

    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .line 647
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->n:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 648
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->n:Z

    .line 649
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 650
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->t()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 446
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 469
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 769
    iput p1, p0, Landroidx/appcompat/widget/SearchView;->L:I

    .line 771
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroidx/appcompat/widget/SearchView$a;)V
    .locals 0

    .line 525
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Landroidx/appcompat/widget/SearchView$a;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 534
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$b;)V
    .locals 0

    .line 516
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->D:Landroidx/appcompat/widget/SearchView$b;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 555
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$c;)V
    .locals 0

    .line 543
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/appcompat/widget/SearchView$c;

    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 576
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 578
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 579
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->O:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 584
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->h()V

    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 599
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->I:Ljava/lang/CharSequence;

    .line 600
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->t()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    .line 728
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    .line 729
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/d/a/a;

    instance-of v1, v0, Landroidx/appcompat/widget/w;

    if-eqz v1, :cond_1

    .line 730
    check-cast v0, Landroidx/appcompat/widget/w;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 9117
    :goto_0
    iput p1, v0, Landroidx/appcompat/widget/w;->a:I

    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 6

    .line 411
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 4115
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result p1

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 4116
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 4117
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result p1

    and-int/lit8 v3, p1, 0xf

    if-ne v3, v2, :cond_0

    const v3, -0x10001

    and-int/2addr p1, v3

    .line 4124
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    or-int/2addr p1, v0

    const/high16 v3, 0x80000

    or-int/2addr p1, v3

    .line 4135
    :cond_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 4136
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/d/a/a;

    if-eqz p1, :cond_1

    .line 4137
    invoke-virtual {p1, v1}, Landroidx/d/a/a;->a(Landroid/database/Cursor;)V

    .line 4141
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4142
    new-instance p1, Landroidx/appcompat/widget/w;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->T:Ljava/util/WeakHashMap;

    invoke-direct {p1, v3, p0, v4, v5}, Landroidx/appcompat/widget/w;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/d/a/a;

    .line 4144
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4145
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/d/a/a;

    check-cast p1, Landroidx/appcompat/widget/w;

    .line 4146
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 5117
    :goto_0
    iput v3, p1, Landroidx/appcompat/widget/w;->a:I

    .line 414
    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->t()V

    .line 5898
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 5900
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5901
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->j:Landroid/content/Intent;

    goto :goto_1

    .line 5902
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 5903
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/content/Intent;

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 5906
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 417
    :goto_2
    iput-boolean v2, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    if-eqz v2, :cond_8

    .line 422
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v0, "nm"

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 6688
    :cond_8
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    .line 424
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 0

    .line 700
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    .line 8688
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    .line 701
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroidx/d/a/a;)V
    .locals 1

    .line 750
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/d/a/a;

    .line 752
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
