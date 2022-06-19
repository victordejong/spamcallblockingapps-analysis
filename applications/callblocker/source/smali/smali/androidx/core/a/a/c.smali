.class public Landroidx/core/a/a/c;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/a/a/c$b;,
        Landroidx/core/a/a/c$c;,
        Landroidx/core/a/a/c$d;,
        Landroidx/core/a/a/c$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/res/TypedArray;I)I
    .locals 2

    .prologue
    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    .line 235
    :goto_0
    return v0

    .line 233
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 234
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 235
    iget v0, v0, Landroid/util/TypedValue;->type:I

    goto :goto_0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/a/a/c$a;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 168
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    :cond_1
    if-eq v0, v2, :cond_2

    .line 174
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    invoke-static {p0, p1}, Landroidx/core/a/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/a/a/c$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 246
    if-nez p1, :cond_0

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 251
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 270
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 255
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/core/a/a/c;->a(Landroid/content/res/TypedArray;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 259
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 260
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 261
    if-eqz v3, :cond_2

    .line 262
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/a/a/c;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/a/a/c;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :cond_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static a([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    array-length v3, p0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 278
    invoke-static {v4, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-object v2
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .prologue
    .line 318
    const/4 v0, 0x1

    .line 319
    :goto_0
    if-lez v0, :cond_0

    .line 320
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 323
    goto :goto_0

    .line 325
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 329
    :cond_0
    return-void

    .line 320
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/a/a/c$a;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 181
    const/4 v1, 0x2

    const-string/jumbo v2, "font-family"

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 183
    const-string/jumbo v2, "font-family"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-static {p0, p1}, Landroidx/core/a/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/a/a/c$a;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 186
    :cond_0
    invoke-static {p0}, Landroidx/core/a/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/a/a/c$a;
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 193
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 194
    sget-object v1, Landroidx/core/a$d;->FontFamily:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    sget v1, Landroidx/core/a$d;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    sget v2, Landroidx/core/a$d;->FontFamily_fontProviderPackage:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    sget v3, Landroidx/core/a$d;->FontFamily_fontProviderQuery:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    sget v4, Landroidx/core/a$d;->FontFamily_fontProviderCerts:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 199
    sget v5, Landroidx/core/a$d;->FontFamily_fontProviderFetchStrategy:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 201
    sget v6, Landroidx/core/a$d;->FontFamily_fontProviderFetchTimeout:I

    const/16 v7, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 205
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_0

    .line 206
    invoke-static {p0}, Landroidx/core/a/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-static {p1, v4}, Landroidx/core/a/a/c;->a(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v4

    .line 209
    new-instance v0, Landroidx/core/a/a/c$d;

    new-instance v7, Landroidx/core/e/a;

    invoke-direct {v7, v1, v2, v3, v4}, Landroidx/core/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v0, v7, v5, v6}, Landroidx/core/a/a/c$d;-><init>(Landroidx/core/e/a;II)V

    .line 225
    :goto_1
    return-object v0

    .line 212
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    :cond_2
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v8, :cond_4

    .line 214
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 215
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string/jumbo v2, "font"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    invoke-static {p0, p1}, Landroidx/core/a/a/c;->d(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/a/a/c$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 219
    :cond_3
    invoke-static {p0}, Landroidx/core/a/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 222
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 223
    const/4 v0, 0x0

    goto :goto_1

    .line 225
    :cond_5
    new-instance v1, Landroidx/core/a/a/c$b;

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/core/a/a/c$c;

    .line 225
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/a/a/c$c;

    invoke-direct {v1, v0}, Landroidx/core/a/a/c$b;-><init>([Landroidx/core/a/a/c$c;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private static d(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/a/a/c$c;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 285
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 286
    sget-object v2, Landroidx/core/a$d;->FontFamilyFont:[I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 287
    sget v0, Landroidx/core/a$d;->FontFamilyFont_fontWeight:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroidx/core/a$d;->FontFamilyFont_fontWeight:I

    .line 290
    :goto_0
    const/16 v2, 0x190

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 291
    sget v0, Landroidx/core/a$d;->FontFamilyFont_fontStyle:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroidx/core/a$d;->FontFamilyFont_fontStyle:I

    .line 294
    :goto_1
    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 295
    :goto_2
    sget v0, Landroidx/core/a$d;->FontFamilyFont_ttcIndex:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroidx/core/a$d;->FontFamilyFont_ttcIndex:I

    .line 298
    :goto_3
    sget v4, Landroidx/core/a$d;->FontFamilyFont_fontVariationSettings:I

    .line 299
    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    sget v4, Landroidx/core/a$d;->FontFamilyFont_fontVariationSettings:I

    .line 302
    :goto_4
    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 304
    sget v0, Landroidx/core/a$d;->FontFamilyFont_font:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroidx/core/a$d;->FontFamilyFont_font:I

    .line 307
    :goto_5
    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 308
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 310
    :goto_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v7, 0x3

    if-eq v0, v7, :cond_6

    .line 311
    invoke-static {p0}, Landroidx/core/a/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 287
    :cond_0
    sget v0, Landroidx/core/a$d;->FontFamilyFont_android_fontWeight:I

    goto :goto_0

    .line 291
    :cond_1
    sget v0, Landroidx/core/a$d;->FontFamilyFont_android_fontStyle:I

    goto :goto_1

    :cond_2
    move v3, v1

    .line 294
    goto :goto_2

    .line 295
    :cond_3
    sget v0, Landroidx/core/a$d;->FontFamilyFont_android_ttcIndex:I

    goto :goto_3

    .line 299
    :cond_4
    sget v4, Landroidx/core/a$d;->FontFamilyFont_android_fontVariationSettings:I

    goto :goto_4

    .line 304
    :cond_5
    sget v0, Landroidx/core/a$d;->FontFamilyFont_android_font:I

    goto :goto_5

    .line 313
    :cond_6
    new-instance v0, Landroidx/core/a/a/c$c;

    invoke-direct/range {v0 .. v6}, Landroidx/core/a/a/c$c;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    return-object v0
.end method
