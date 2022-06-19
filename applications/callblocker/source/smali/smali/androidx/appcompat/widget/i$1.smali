.class final Landroidx/appcompat/widget/i$1;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"

# interfaces
.implements Landroidx/appcompat/widget/af$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:[I

.field private final f:[I


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-array v0, v6, [I

    sget v1, Landroidx/appcompat/a$e;->abc_textfield_search_default_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroidx/appcompat/a$e;->abc_textfield_default_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/a$e;->abc_ab_share_pack_mtrl_alpha:I

    aput v1, v0, v5

    iput-object v0, p0, Landroidx/appcompat/widget/i$1;->a:[I

    .line 74
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Landroidx/appcompat/a$e;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroidx/appcompat/a$e;->abc_seekbar_tick_mark_material:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/a$e;->abc_ic_menu_share_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroidx/appcompat/a$e;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v1, v0, v6

    sget v1, Landroidx/appcompat/a$e;->abc_ic_menu_cut_mtrl_alpha:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Landroidx/appcompat/a$e;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroidx/appcompat/a$e;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v2, v0, v1

    iput-object v0, p0, Landroidx/appcompat/widget/i$1;->b:[I

    .line 88
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Landroidx/appcompat/a$e;->abc_textfield_activated_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroidx/appcompat/a$e;->abc_textfield_search_activated_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/a$e;->abc_cab_background_top_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroidx/appcompat/a$e;->abc_text_cursor_material:I

    aput v1, v0, v6

    sget v1, Landroidx/appcompat/a$e;->abc_text_select_handle_left_mtrl_dark:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Landroidx/appcompat/a$e;->abc_text_select_handle_middle_mtrl_dark:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroidx/appcompat/a$e;->abc_text_select_handle_right_mtrl_dark:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Landroidx/appcompat/a$e;->abc_text_select_handle_left_mtrl_light:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Landroidx/appcompat/a$e;->abc_text_select_handle_middle_mtrl_light:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Landroidx/appcompat/a$e;->abc_text_select_handle_right_mtrl_light:I

    aput v2, v0, v1

    iput-object v0, p0, Landroidx/appcompat/widget/i$1;->c:[I

    .line 106
    new-array v0, v6, [I

    sget v1, Landroidx/appcompat/a$e;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v3

    sget v1, Landroidx/appcompat/a$e;->abc_cab_background_internal_bg:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/a$e;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v5

    iput-object v0, p0, Landroidx/appcompat/widget/i$1;->d:[I

    .line 116
    new-array v0, v5, [I

    sget v1, Landroidx/appcompat/a$e;->abc_tab_indicator_material:I

    aput v1, v0, v3

    sget v1, Landroidx/appcompat/a$e;->abc_textfield_search_material:I

    aput v1, v0, v4

    iput-object v0, p0, Landroidx/appcompat/widget/i$1;->e:[I

    .line 126
    new-array v0, v7, [I

    sget v1, Landroidx/appcompat/a$e;->abc_btn_check_material:I

    aput v1, v0, v3

    sget v1, Landroidx/appcompat/a$e;->abc_btn_radio_material:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/a$e;->abc_btn_check_material_anim:I

    aput v1, v0, v5

    sget v1, Landroidx/appcompat/a$e;->abc_btn_radio_material_anim:I

    aput v1, v0, v6

    iput-object v0, p0, Landroidx/appcompat/widget/i$1;->f:[I

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 134
    sget v0, Landroidx/appcompat/a$a;->colorButtonNormal:I

    .line 135
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v0

    .line 134
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/i$1;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 244
    invoke-static {p1}, Landroidx/appcompat/widget/y;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 247
    :cond_0
    if-nez p3, :cond_1

    invoke-static {}, Landroidx/appcompat/widget/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    :cond_1
    invoke-static {p2, p3}, Landroidx/appcompat/widget/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 249
    return-void
.end method

.method private a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 291
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    .line 292
    if-ne v3, p2, :cond_1

    .line 293
    const/4 v0, 0x1

    .line 296
    :cond_0
    return v0

    .line 291
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/i$1;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const/4 v1, 0x4

    .line 152
    new-array v0, v1, [[I

    .line 153
    new-array v1, v1, [I

    .line 154
    const/4 v2, 0x0

    .line 156
    sget v3, Landroidx/appcompat/a$a;->colorControlHighlight:I

    invoke-static {p1, v3}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v3

    .line 158
    sget v4, Landroidx/appcompat/a$a;->colorButtonNormal:I

    invoke-static {p1, v4}, Landroidx/appcompat/widget/ak;->c(Landroid/content/Context;I)I

    move-result v4

    .line 162
    sget-object v5, Landroidx/appcompat/widget/ak;->a:[I

    aput-object v5, v0, v2

    .line 163
    aput v4, v1, v2

    .line 164
    const/4 v2, 0x1

    .line 166
    sget-object v4, Landroidx/appcompat/widget/ak;->d:[I

    aput-object v4, v0, v2

    .line 167
    invoke-static {v3, p2}, Landroidx/core/graphics/a;->a(II)I

    move-result v4

    aput v4, v1, v2

    .line 168
    const/4 v2, 0x2

    .line 170
    sget-object v4, Landroidx/appcompat/widget/ak;->b:[I

    aput-object v4, v0, v2

    .line 171
    invoke-static {v3, p2}, Landroidx/core/graphics/a;->a(II)I

    move-result v3

    aput v3, v1, v2

    .line 172
    const/4 v2, 0x3

    .line 175
    sget-object v3, Landroidx/appcompat/widget/ak;->h:[I

    aput-object v3, v0, v2

    .line 176
    aput p2, v1, v2

    .line 179
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private c(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 146
    sget v0, Landroidx/appcompat/a$a;->colorAccent:I

    .line 147
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v0

    .line 146
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/i$1;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    new-array v0, v1, [[I

    .line 184
    new-array v1, v1, [I

    .line 187
    sget v2, Landroidx/appcompat/a$a;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/ak;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 190
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    sget-object v3, Landroidx/appcompat/widget/ak;->a:[I

    aput-object v3, v0, v4

    .line 196
    aget-object v3, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    aput v3, v1, v4

    .line 199
    sget-object v3, Landroidx/appcompat/widget/ak;->e:[I

    aput-object v3, v0, v5

    .line 200
    sget v3, Landroidx/appcompat/a$a;->colorControlActivated:I

    invoke-static {p1, v3}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v5

    .line 204
    sget-object v3, Landroidx/appcompat/widget/ak;->h:[I

    aput-object v3, v0, v6

    .line 205
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v1, v6

    .line 226
    :goto_0
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 211
    :cond_0
    sget-object v2, Landroidx/appcompat/widget/ak;->a:[I

    aput-object v2, v0, v4

    .line 212
    sget v2, Landroidx/appcompat/a$a;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/ak;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v4

    .line 216
    sget-object v2, Landroidx/appcompat/widget/ak;->e:[I

    aput-object v2, v0, v5

    .line 217
    sget v2, Landroidx/appcompat/a$a;->colorControlActivated:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    .line 221
    sget-object v2, Landroidx/appcompat/widget/ak;->h:[I

    aput-object v2, v0, v6

    .line 222
    sget v2, Landroidx/appcompat/a$a;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v6

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 303
    sget v0, Landroidx/appcompat/a$e;->abc_edit_text_material:I

    if-ne p2, v0, :cond_0

    .line 304
    sget v0, Landroidx/appcompat/a$c;->abc_tint_edittext:I

    invoke-static {p1, v0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 305
    :cond_0
    sget v0, Landroidx/appcompat/a$e;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v0, :cond_1

    .line 306
    sget v0, Landroidx/appcompat/a$c;->abc_tint_switch_track:I

    invoke-static {p1, v0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_1
    sget v0, Landroidx/appcompat/a$e;->abc_switch_thumb_material:I

    if-ne p2, v0, :cond_2

    .line 308
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/i$1;->d(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_2
    sget v0, Landroidx/appcompat/a$e;->abc_btn_default_mtrl_shape:I

    if-ne p2, v0, :cond_3

    .line 310
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/i$1;->a(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_3
    sget v0, Landroidx/appcompat/a$e;->abc_btn_borderless_material:I

    if-ne p2, v0, :cond_4

    .line 312
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/i$1;->b(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_4
    sget v0, Landroidx/appcompat/a$e;->abc_btn_colored_material:I

    if-ne p2, v0, :cond_5

    .line 314
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/i$1;->c(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_5
    sget v0, Landroidx/appcompat/a$e;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v0, :cond_6

    sget v0, Landroidx/appcompat/a$e;->abc_spinner_textfield_background_material:I

    if-ne p2, v0, :cond_7

    .line 317
    :cond_6
    sget v0, Landroidx/appcompat/a$c;->abc_tint_spinner:I

    invoke-static {p1, v0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/i$1;->b:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/i$1;->a([II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 319
    sget v0, Landroidx/appcompat/a$a;->colorControlNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/ak;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/i$1;->e:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/i$1;->a([II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 321
    sget v0, Landroidx/appcompat/a$c;->abc_tint_default:I

    invoke-static {p1, v0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/i$1;->f:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/i$1;->a([II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 323
    sget v0, Landroidx/appcompat/a$c;->abc_tint_btn_checkable:I

    invoke-static {p1, v0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_a
    sget v0, Landroidx/appcompat/a$e;->abc_seekbar_thumb_material:I

    if-ne p2, v0, :cond_b

    .line 325
    sget v0, Landroidx/appcompat/a$c;->abc_tint_seek_thumb:I

    invoke-static {p1, v0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 383
    sget v1, Landroidx/appcompat/a$e;->abc_switch_thumb_material:I

    if-ne p1, v1, :cond_0

    .line 384
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 387
    :cond_0
    return-object v0
.end method

.method public a(Landroidx/appcompat/widget/af;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 232
    sget v0, Landroidx/appcompat/a$e;->abc_cab_background_top_material:I

    if-ne p3, v0, :cond_0

    .line 233
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/a$e;->abc_cab_background_internal_bg:I

    .line 234
    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Landroidx/appcompat/a$e;->abc_cab_background_top_mtrl_alpha:I

    .line 236
    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 240
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    .prologue
    const v5, 0x102000f

    const v4, 0x102000d

    const/high16 v2, 0x1020000

    const/4 v0, 0x1

    .line 254
    sget v1, Landroidx/appcompat/a$e;->abc_seekbar_track_material:I

    if-ne p2, v1, :cond_0

    .line 255
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    .line 257
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroidx/appcompat/a$a;->colorControlNormal:I

    .line 258
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    .line 259
    invoke-static {}, Landroidx/appcompat/widget/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 256
    invoke-direct {p0, v1, v2, v3}, Landroidx/appcompat/widget/i$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 261
    invoke-virtual {p3, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroidx/appcompat/a$a;->colorControlNormal:I

    .line 262
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    .line 263
    invoke-static {}, Landroidx/appcompat/widget/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 260
    invoke-direct {p0, v1, v2, v3}, Landroidx/appcompat/widget/i$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 265
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroidx/appcompat/a$a;->colorControlActivated:I

    .line 266
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    .line 267
    invoke-static {}, Landroidx/appcompat/widget/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 264
    invoke-direct {p0, v1, v2, v3}, Landroidx/appcompat/widget/i$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 287
    :goto_0
    return v0

    .line 269
    :cond_0
    sget v1, Landroidx/appcompat/a$e;->abc_ratingbar_material:I

    if-eq p2, v1, :cond_1

    sget v1, Landroidx/appcompat/a$e;->abc_ratingbar_indicator_material:I

    if-eq p2, v1, :cond_1

    sget v1, Landroidx/appcompat/a$e;->abc_ratingbar_small_material:I

    if-ne p2, v1, :cond_2

    .line 272
    :cond_1
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    .line 274
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroidx/appcompat/a$a;->colorControlNormal:I

    .line 275
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ak;->c(Landroid/content/Context;I)I

    move-result v2

    .line 276
    invoke-static {}, Landroidx/appcompat/widget/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 273
    invoke-direct {p0, v1, v2, v3}, Landroidx/appcompat/widget/i$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 278
    invoke-virtual {p3, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroidx/appcompat/a$a;->colorControlActivated:I

    .line 279
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    .line 280
    invoke-static {}, Landroidx/appcompat/widget/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 277
    invoke-direct {p0, v1, v2, v3}, Landroidx/appcompat/widget/i$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroidx/appcompat/a$a;->colorControlActivated:I

    .line 283
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    .line 284
    invoke-static {}, Landroidx/appcompat/widget/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 281
    invoke-direct {p0, v1, v2, v3}, Landroidx/appcompat/widget/i$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 287
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 7

    .prologue
    const v4, 0x1010031

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 333
    invoke-static {}, Landroidx/appcompat/widget/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 338
    iget-object v2, p0, Landroidx/appcompat/widget/i$1;->a:[I

    invoke-direct {p0, v2, p2}, Landroidx/appcompat/widget/i$1;->a([II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    sget v4, Landroidx/appcompat/a$a;->colorControlNormal:I

    move v2, v3

    move v5, v0

    .line 357
    :goto_0
    if-eqz v5, :cond_6

    .line 358
    invoke-static {p3}, Landroidx/appcompat/widget/y;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 362
    :cond_0
    invoke-static {p1, v4}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v1

    .line 363
    invoke-static {v1, v6}, Landroidx/appcompat/widget/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 365
    if-eq v2, v3, :cond_1

    .line 366
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 376
    :cond_1
    :goto_1
    return v0

    .line 341
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/widget/i$1;->c:[I

    invoke-direct {p0, v2, p2}, Landroidx/appcompat/widget/i$1;->a([II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    sget v4, Landroidx/appcompat/a$a;->colorControlActivated:I

    move v2, v3

    move v5, v0

    .line 343
    goto :goto_0

    .line 344
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/widget/i$1;->d:[I

    invoke-direct {p0, v2, p2}, Landroidx/appcompat/widget/i$1;->a([II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 347
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v2, v3

    move v5, v0

    goto :goto_0

    .line 348
    :cond_4
    sget v2, Landroidx/appcompat/a$e;->abc_list_divider_mtrl_alpha:I

    if-ne p2, v2, :cond_5

    .line 349
    const v4, 0x1010030

    .line 351
    const v2, 0x42233333    # 40.8f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v5, v0

    goto :goto_0

    .line 352
    :cond_5
    sget v2, Landroidx/appcompat/a$e;->abc_dialog_material_background:I

    if-ne p2, v2, :cond_7

    move v2, v3

    move v5, v0

    .line 354
    goto :goto_0

    :cond_6
    move v0, v1

    .line 376
    goto :goto_1

    :cond_7
    move v2, v3

    move v4, v1

    move v5, v1

    goto :goto_0
.end method
