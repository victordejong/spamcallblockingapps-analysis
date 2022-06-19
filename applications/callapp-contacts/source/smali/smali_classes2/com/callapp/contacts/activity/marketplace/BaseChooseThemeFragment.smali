.class public abstract Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;
.super Lcom/callapp/contacts/activity/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;,
        Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;,
        Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroidx/appcompat/widget/SwitchCompat;

.field protected c:Z

.field public d:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

.field private h:Landroid/util/SparseIntArray;

.field private i:Ljava/lang/String;

.field private j:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects;

.field private k:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseFragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->i:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->c:Z

    return-void
.end method

.method private static a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I
    .locals 1

    .line 274
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;->getColor(I)I

    move-result p0

    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_0

    .line 275
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p0

    :cond_0
    return p0
.end method

.method private a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;ZZ)Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;
    .locals 7

    .line 177
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;-><init>(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;)V

    .line 179
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getColorMap()Ljava/util/Map;

    move-result-object v6

    .line 180
    new-instance p1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;-><init>(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;ZZZLjava/util/Map;)V

    .line 217
    new-instance v1, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;-><init>(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;)V

    const p1, 0x7f06008a

    .line 219
    invoke-static {v1, p1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result p1

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->a:I

    const p1, 0x7f060088

    .line 220
    invoke-static {v1, p1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result p1

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    const p1, 0x7f060089

    .line 221
    invoke-static {v1, p1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result p1

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->c:I

    const p1, 0x7f0600f2

    .line 222
    invoke-static {v1, p1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->d:I

    const v2, 0x7f0601ec

    .line 223
    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->e:I

    const v2, 0x7f0601cc

    .line 224
    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->f:I

    const v2, 0x7f060026

    .line 225
    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->g:I

    const v2, 0x7f0600e6

    .line 226
    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->j:I

    const v2, 0x7f0600ea

    .line 227
    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->h:I

    const v2, 0x7f0600ed

    .line 228
    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->i:I

    const v2, 0x7f0600f3

    .line 229
    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->p:I

    const v2, 0x7f0600a7

    .line 230
    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->s:I

    const v2, 0x7f060127

    .line 231
    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->t:I

    .line 234
    iget v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->g:I

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->q:I

    .line 235
    iget v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->f:I

    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->r:I

    const/4 v2, -0x1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 241
    invoke-static {v1, p1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result p1

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->m:I

    const p1, 0x7f06010a

    .line 242
    invoke-static {v1, p1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;I)I

    move-result p1

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->k:I

    .line 243
    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->l:I

    .line 244
    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->n:I

    .line 245
    iget p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->m:I

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->o:I

    goto :goto_0

    .line 247
    :cond_0
    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->m:I

    .line 248
    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->k:I

    .line 249
    iget p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->l:I

    .line 250
    iget p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->n:I

    .line 251
    iget p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->c:I

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->o:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 256
    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->m:I

    .line 257
    iget p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->k:I

    .line 258
    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->l:I

    .line 259
    iget p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->n:I

    .line 260
    iget p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->c:I

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->o:I

    goto :goto_0

    .line 262
    :cond_2
    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->m:I

    .line 263
    iput v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->k:I

    .line 264
    iget p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->l:I

    .line 265
    iget p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->n:I

    .line 266
    iget p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->c:I

    iput p1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->o:I

    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->k:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 440
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "light_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 442
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "dark_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;Ljava/util/List;)V
    .locals 8

    .line 3279
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3283
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3284
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    .line 3286
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->isMainDefaultTheme()Z

    move-result v3

    .line 3288
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    .line 3290
    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "light_"

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v2, v7, v3}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;ZZ)Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3291
    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "dark_"

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;ZZ)Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    move-result-object v2

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)I
    .locals 6

    .line 400
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->e:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->e:Ljava/util/Map;

    .line 402
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->getThemes()Ljava/util/List;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 404
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 405
    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 412
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method protected abstract a()V
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;ZI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1172
    iget-object v4, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    .line 298
    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    if-nez v5, :cond_0

    .line 299
    iput-object v4, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    :cond_0
    const/4 v5, 0x6

    new-array v6, v5, [I

    .line 302
    fill-array-data v6, :array_0

    invoke-static {v3, v6}, Lcom/callapp/contacts/util/ThemeUtils;->a(Z[I)Landroid/util/SparseIntArray;

    move-result-object v6

    .line 306
    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->h:Landroid/util/SparseIntArray;

    if-nez v7, :cond_1

    .line 307
    iput-object v6, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->h:Landroid/util/SparseIntArray;

    :cond_1
    const/4 v7, 0x3

    new-array v8, v7, [Landroid/view/View;

    const v9, 0x7f0a08e8

    .line 311
    invoke-virtual {v1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0a08e9

    invoke-virtual {v1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const v9, 0x7f0a08ea

    invoke-virtual {v1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    new-array v9, v7, [Landroid/view/View;

    const v13, 0x7f0a08bb

    .line 312
    invoke-virtual {v1, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    aput-object v13, v9, v10

    const v13, 0x7f0a08bc

    invoke-virtual {v1, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    aput-object v13, v9, v11

    const v13, 0x7f0a08bd

    invoke-virtual {v1, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    aput-object v13, v9, v12

    new-array v13, v7, [Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    const v14, 0x7f0a0283

    .line 313
    invoke-virtual {v1, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    aput-object v14, v13, v10

    const v14, 0x7f0a0284

    invoke-virtual {v1, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    aput-object v14, v13, v11

    const v14, 0x7f0a0285

    invoke-virtual {v1, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    aput-object v14, v13, v12

    new-array v14, v7, [Landroid/widget/ImageView;

    const v15, 0x7f0a04ba

    .line 314
    invoke-virtual {v1, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    aput-object v15, v14, v10

    const v15, 0x7f0a04bb

    invoke-virtual {v1, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    aput-object v15, v14, v11

    const v15, 0x7f0a04bc

    invoke-virtual {v1, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    aput-object v15, v14, v12

    .line 316
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    move/from16 v10, p4

    move-object/from16 v16, v8

    int-to-long v7, v10

    .line 317
    invoke-virtual {v15, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 319
    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    .line 1641
    iget-object v7, v7, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 319
    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 320
    iget-object v8, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    .line 2520
    iget-object v8, v8, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    const v10, 0x7f0a077e

    .line 322
    invoke-virtual {v1, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->h:Landroid/util/SparseIntArray;

    const v5, 0x7f0600f3

    invoke-virtual {v11, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-static {v10, v12, v11, v5}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    const v10, 0x7f0a0a47

    .line 323
    invoke-virtual {v1, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->h:Landroid/util/SparseIntArray;

    const v12, 0x7f060088

    invoke-virtual {v11, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v6, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/4 v12, 0x6

    invoke-static {v10, v12, v11, v3}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const v5, 0x7f0a0a43

    .line 324
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v10, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->h:Landroid/util/SparseIntArray;

    const v11, 0x7f060088

    invoke-virtual {v10, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-static {v5, v12, v10, v11}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->h:Landroid/util/SparseIntArray;

    const v10, 0x7f060026

    .line 325
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v6, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    const/4 v12, 0x7

    invoke-static {v7, v12, v5, v11}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->h:Landroid/util/SparseIntArray;

    const v7, 0x7f0601cc

    .line 326
    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-static {v8, v12, v5, v7}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const v5, 0x7f0a0147

    .line 327
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v6, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const/4 v10, 0x2

    invoke-static {v5, v10, v7, v8}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const v5, 0x7f0a0520

    .line 330
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v7, v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->s:I

    iget v8, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->s:I

    invoke-static {v5, v10, v7, v8}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const v5, 0x7f0a0521

    .line 331
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v7, v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->t:I

    iget v8, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->t:I

    invoke-static {v5, v10, v7, v8}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const v5, 0x7f0a02a1

    .line 332
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v7, v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->g:I

    iget v8, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->g:I

    invoke-static {v5, v10, v7, v8}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const v5, 0x7f0a04c0

    .line 333
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v8, v8, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->j:I

    iget v11, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->j:I

    invoke-static {v7, v10, v8, v11}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 334
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v7, v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->h:I

    iget v8, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->h:I

    const/4 v10, 0x3

    invoke-static {v5, v10, v7, v8}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const v5, 0x7f0a04c1

    .line 335
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v7, v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->i:I

    iget v8, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->i:I

    invoke-static {v5, v10, v7, v8}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const v5, 0x7f0a04be

    .line 336
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v7, v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->k:I

    iget v8, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->k:I

    invoke-static {v5, v10, v7, v8}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const v5, 0x7f0a04bf

    .line 337
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v5, v5, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->l:I

    iget v7, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->l:I

    invoke-static {v1, v10, v5, v7}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 340
    iget-object v3, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->j:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects;

    if-eqz v3, :cond_2

    .line 341
    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->h:Landroid/util/SparseIntArray;

    invoke-interface {v3, v5, v6}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects;->a(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Ljava/util/List;

    move-result-object v3

    .line 342
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 343
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    .line 344
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v3, :cond_3

    .line 350
    aget-object v3, v16, v10

    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v5, v5, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->e:I

    iget v7, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->e:I

    const/4 v8, 0x2

    invoke-static {v3, v8, v5, v7}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    aget-object v5, v9, v10

    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v7, v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->f:I

    iget v11, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->f:I

    .line 351
    invoke-static {v5, v8, v7, v11}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    aget-object v5, v13, v10

    const/4 v7, 0x4

    iget-object v11, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v11, v11, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    iget v12, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    .line 352
    invoke-static {v5, v7, v11, v12}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    aget-object v5, v14, v10

    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    iget v7, v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    iget v11, v4, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    const/4 v12, 0x3

    .line 353
    invoke-static {v5, v12, v7, v11}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x3

    goto :goto_1

    .line 356
    :cond_3
    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    .line 358
    iput-object v4, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->g:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    .line 359
    iput-object v6, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->h:Landroid/util/SparseIntArray;

    .line 361
    iput-object v2, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->i:Ljava/lang/String;

    move/from16 v1, p3

    .line 362
    iput-boolean v1, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->c:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060089
        0x7f060088
        0x7f0601ec
        0x7f0600f3
        0x7f060026
        0x7f0601cc
    .end array-data
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .line 419
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Ljava/lang/String;)I

    move-result p1

    .line 421
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->getThemes()Ljava/util/List;

    move-result-object v0

    .line 422
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    if-eqz p1, :cond_0

    .line 425
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLastChosenThemeSku()Ljava/lang/String;
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->c:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->i:Ljava/lang/String;

    const-string v2, "light_"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->i:Ljava/lang/String;

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->i:Ljava/lang/String;

    const-string v2, "dark_"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->i:Ljava/lang/String;

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->i:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->f:Ljava/util/List;

    return-object v0
.end method

.method public isLightTheme()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->c:Z

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->k:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 168
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 99
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    new-instance p1, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    const p2, 0x7f120537

    .line 102
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 105
    new-instance p2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;-><init>(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    invoke-direct {p2, v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->k:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method

.method public setAdditionalAnimatorsListener(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->j:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects;

    return-void
.end method

.method public setThemeChangeEventsListener(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->d:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;

    return-void
.end method
