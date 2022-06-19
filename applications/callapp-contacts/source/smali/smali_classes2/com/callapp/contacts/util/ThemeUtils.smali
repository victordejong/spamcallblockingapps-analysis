.class public Lcom/callapp/contacts/util/ThemeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/ThemeUtils$THEME;
    }
.end annotation


# static fields
.field private static a:Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, -0x1b000000

    add-int/2addr p0, v0

    return p0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2

    .line 308
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->a:Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;->getColor(I)I

    move-result v0

    const/high16 v1, 0x1000000

    if-eq v0, v1, :cond_0

    return v0

    .line 316
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;II)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100af

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 431
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 432
    invoke-virtual {p0, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 433
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static varargs a(Z[I)Landroid/util/SparseIntArray;
    .locals 5

    .line 170
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 171
    new-instance v0, Lcom/callapp/contacts/util/ThemeUtils$2;

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isBaseTheme()Z

    move-result v2

    invoke-direct {v0, p0, v2, p0}, Lcom/callapp/contacts/util/ThemeUtils$2;-><init>(ZZZ)V

    .line 194
    new-instance p0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;-><init>(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;)V

    .line 195
    new-instance v0, Landroid/util/SparseIntArray;

    array-length v2, p1

    invoke-direct {v0, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 196
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    .line 197
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 204
    :cond_1
    new-instance p0, Landroid/util/SparseIntArray;

    array-length v0, p1

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 205
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 206
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static a()V
    .locals 3

    .line 131
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v0

    .line 133
    new-instance v1, Lcom/callapp/contacts/util/ThemeUtils$1;

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isBaseTheme()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/callapp/contacts/util/ThemeUtils$1;-><init>(ZZ)V

    .line 156
    new-instance v0, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;-><init>(Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;)V

    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->a:Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->b:Ljava/lang/String;

    .line 78
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->c:Ljava/lang/String;

    .line 79
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->d:Ljava/lang/String;

    .line 80
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->e:Ljava/lang/String;

    .line 81
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->f:Ljava/lang/String;

    .line 82
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->g:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->a()V

    .line 84
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v1, v2, v0, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/Window;I)V
    .locals 2

    .line 489
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/contact/header/ThemeState;Z)V
    .locals 1

    .line 536
    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->PRIMARYDARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 537
    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->setIsLight(Z)V

    if-eqz p1, :cond_1

    .line 539
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Z)V
    .locals 2

    if-eqz p0, :cond_1

    .line 511
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 512
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 513
    check-cast p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    .line 514
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getColorMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->setThemeColors(Ljava/util/Map;)V

    .line 515
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;Z)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;Z)V
    .locals 1

    if-eqz p0, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getColorMap()Ljava/util/Map;

    move-result-object p0

    .line 522
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "overlayTintColorLight"

    goto :goto_0

    :cond_0
    const-string p1, "overlayTintColorDark"

    .line 523
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 524
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 525
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dp:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "default_1"

    .line 381
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 2

    .line 393
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    .line 395
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 397
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()V
    .locals 6

    .line 225
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getTheme()Lcom/callapp/contacts/util/ThemeUtils$THEME;

    move-result-object v0

    .line 226
    sget-object v1, Lcom/callapp/contacts/util/ThemeUtils$3;->a:[I

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ThemeUtils$THEME;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "#98e3f4"

    const-string v3, "#016CA6"

    const-string v4, "#0288D1"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 278
    :pswitch_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v2, Lcom/callapp/contacts/util/ThemeUtils$THEME;->LIGHT_OCHER:Lcom/callapp/contacts/util/ThemeUtils$THEME;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 279
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "default_5"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 280
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dj:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "#F7931E"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 281
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dk:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v2, "#FABE78"

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 282
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dl:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v2, "#C9771B"

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dm:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 284
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dn:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 285
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->do:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "#945818"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 266
    :pswitch_1
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v2, Lcom/callapp/contacts/util/ThemeUtils$THEME;->LIGHT_PURPLE:Lcom/callapp/contacts/util/ThemeUtils$THEME;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 267
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "default_4"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 268
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dj:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "#93278F"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 269
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dk:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v2, "#BE7DBC"

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 270
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dl:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v2, "#781F74"

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 271
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dm:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 272
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dn:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 273
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->do:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "#571754"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 254
    :pswitch_2
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v2, Lcom/callapp/contacts/util/ThemeUtils$THEME;->LIGHT_GREEN:Lcom/callapp/contacts/util/ThemeUtils$THEME;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 255
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "default_3"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 256
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dj:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "#22B573"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 257
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dk:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v2, "#64CB9D"

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 258
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dl:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v2, "#1C915C"

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 259
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dm:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 260
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dn:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 261
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->do:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "#146E46"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    goto :goto_5

    .line 242
    :pswitch_3
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v5, Lcom/callapp/contacts/util/ThemeUtils$THEME;->LIGHT_BLUE:Lcom/callapp/contacts/util/ThemeUtils$THEME;

    if-ne v0, v5, :cond_3

    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 243
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "default_2"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 244
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dj:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 245
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dk:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 246
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dl:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 247
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dm:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "#115580"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 248
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dn:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 249
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->do:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    goto :goto_5

    .line 230
    :pswitch_4
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v5, Lcom/callapp/contacts/util/ThemeUtils$THEME;->LIGHT:Lcom/callapp/contacts/util/ThemeUtils$THEME;

    if-ne v0, v5, :cond_4

    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 231
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "default_1"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 232
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dj:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 233
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dk:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 234
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dl:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 235
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dm:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "#5791aa"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 236
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dn:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "#72b0c1"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 237
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->do:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "#325061"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :goto_5
    const/4 v0, 0x0

    .line 289
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->b:Ljava/lang/String;

    .line 290
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->c:Ljava/lang/String;

    .line 291
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->d:Ljava/lang/String;

    .line 292
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->e:Ljava/lang/String;

    .line 293
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->f:Ljava/lang/String;

    .line 294
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->g:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5

    .line 402
    const-class v0, Lcom/callapp/contacts/util/ThemeUtils$THEME;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1407
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1408
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010095

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 424
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 425
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 426
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getPrimaryColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getDarkPrimaryColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101038c

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 438
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 439
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 440
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getPrimaryColorLight()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getDarkPrimaryColorLight()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getPrimaryColorDark()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallScreenTransparentTheme()I
    .locals 1

    const v0, 0x7f13010b

    return v0
.end method

.method public static getColor(I)I
    .locals 1

    .line 303
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColor$255f288()I
    .locals 4

    .line 298
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    .line 299
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v3, 0xb3

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static getDarkPrimaryColor()Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dm:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->e:Ljava/lang/String;

    .line 111
    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static getDarkPrimaryColorDark()Ljava/lang/String;
    .locals 1

    .line 123
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->do:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->g:Ljava/lang/String;

    .line 127
    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static getDarkPrimaryColorLight()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dn:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->f:Ljava/lang/String;

    .line 119
    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getDialogInsetBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const v0, 0x7f08010d

    .line 320
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDialogRoundedBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const v0, 0x7f080116

    .line 324
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDialogRoundedCenterBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 328
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080110

    goto :goto_0

    :cond_0
    const v0, 0x7f08010f

    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 334
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->a:Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;->getInnerDrawableResId(I)I

    move-result v0

    if-eqz v0, :cond_0

    move p0, v0

    .line 342
    :cond_0
    invoke-static {p0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getFloatValue(I)F
    .locals 3

    .line 453
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 454
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 455
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static getNoTitleTheme()I
    .locals 1

    const v0, 0x7f130107

    return v0
.end method

.method public static getNoTitleThemeNoTransitions()I
    .locals 1

    const v0, 0x7f130108

    return v0
.end method

.method private static getPrimaryColor()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dj:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->b:Ljava/lang/String;

    .line 72
    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static getPrimaryColorDark()Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dl:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->d:Ljava/lang/String;

    .line 103
    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static getPrimaryColorLight()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dk:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->c:Ljava/lang/String;

    .line 95
    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getTheme()Lcom/callapp/contacts/util/ThemeUtils$THEME;
    .locals 1

    .line 360
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dg:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils$THEME;->valueOf(Ljava/lang/String;)Lcom/callapp/contacts/util/ThemeUtils$THEME;

    move-result-object v0

    return-object v0
.end method

.method public static getThemeName()Ljava/lang/String;
    .locals 1

    .line 364
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getThemeStyleResource()I
    .locals 1

    const v0, 0x7f130106

    return v0
.end method

.method public static getTransparentTheme()I
    .locals 1

    const v0, 0x7f13010a

    return v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getDarkPrimaryColorDark()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isBaseTheme()Z
    .locals 2

    .line 165
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "default_1"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCurrentDefaultTheme()Z
    .locals 2

    .line 376
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "default_1"

    .line 1381
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isThemeLight()Z
    .locals 1

    .line 372
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->a:Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static setDefaultTheme(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getColorMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 215
    sput-object v0, Lcom/callapp/contacts/util/ThemeUtils;->a:Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;

    .line 216
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v2, "default_1"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 217
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 218
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dp:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getColorMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->setThemeColors(Ljava/util/Map;)V

    .line 220
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->a()V

    :cond_0
    return-void
.end method

.method public static setIsLight(Z)V
    .locals 1

    .line 161
    sget-object v0, Lcom/callapp/contacts/util/ThemeUtils;->a:Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper;->setIsLight(Z)V

    return-void
.end method
