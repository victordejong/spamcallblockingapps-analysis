.class public Lcom/callapp/contacts/activity/contact/list/search/T9Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 165
    invoke-static/range {p0 .. p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 169
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/common/util/RegexUtils;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 175
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 177
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-static/range {p1 .. p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 181
    :goto_2
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_5

    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    move-object v13, v3

    .line 188
    :goto_3
    invoke-static {v13}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string v15, " "

    const-string v7, "0"

    if-eqz v14, :cond_6

    .line 198
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    const/4 v6, 0x0

    const/16 v23, 0x0

    goto :goto_4

    .line 200
    :cond_6
    invoke-static {v1}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v3

    move-object/from16 v23, v4

    const/16 v22, 0x0

    :goto_4
    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v0, p3

    .line 206
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 209
    new-instance v4, Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-direct {v4, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v2, -0x1

    .line 212
    iput v2, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexStart:I

    .line 213
    iput v2, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexEnd:I

    .line 217
    iget-object v3, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 218
    iget-object v3, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    if-eqz v14, :cond_f

    if-eqz v3, :cond_9

    .line 227
    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :cond_9
    if-eqz v2, :cond_b

    if-lez v2, :cond_a

    .line 228
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v8, 0x6

    if-le v3, v8, :cond_a

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    goto :goto_9

    .line 229
    :cond_b
    :goto_8
    iput v2, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexStart:I

    .line 230
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexEnd:I

    const/4 v8, 0x1

    :goto_9
    if-eqz v8, :cond_c

    .line 234
    iget-object v3, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    iget-object v12, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->nameT9:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 235
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v24, v0

    move-object v9, v5

    move-object v12, v6

    move-object v0, v7

    const/4 v3, 0x0

    move-object v5, v4

    goto/16 :goto_c

    :cond_c
    if-nez v10, :cond_e

    .line 239
    iget-object v2, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->nameT9:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 240
    iget-object v2, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->nameT9:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 241
    iget-object v2, v5, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->nameT9:Ljava/lang/String;

    const-string v12, "0"

    move-object/from16 p2, v4

    move-object v9, v5

    move-object v5, v1

    move-object/from16 p3, v6

    move-object/from16 v6, v22

    move-object/from16 v24, v0

    move-object v0, v7

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v2, v8

    if-nez v2, :cond_d

    .line 243
    iget-object v2, v9, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->nameT9:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v5, p2

    invoke-static {v2, v5, v1, v4}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;C)Z

    move-result v2

    goto :goto_a

    :cond_d
    move-object/from16 v5, p2

    const/4 v3, 0x0

    :goto_a
    move v8, v2

    goto :goto_b

    :cond_e
    move-object/from16 v24, v0

    move-object v9, v5

    move-object/from16 p3, v6

    move-object v0, v7

    const/4 v3, 0x0

    move-object v5, v4

    goto :goto_b

    :cond_f
    move-object/from16 v24, v0

    move-object v9, v5

    move-object/from16 p3, v6

    move-object v0, v7

    const/4 v3, 0x0

    move-object v5, v4

    .line 248
    iget-object v2, v9, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    if-nez v10, :cond_12

    .line 256
    iget-object v2, v9, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->unaccentName:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 257
    iget-object v2, v9, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    iput-object v2, v9, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->unaccentName:Ljava/lang/String;

    .line 260
    :cond_10
    iget-object v2, v9, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->unaccentName:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 261
    iget-object v2, v9, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->unaccentName:Ljava/lang/String;

    const-string v21, " "

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v19, p3

    move-object/from16 v20, v23

    invoke-static/range {v16 .. v21}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 265
    iget-object v2, v9, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->unaccentName:Ljava/lang/String;

    const/16 v4, 0x20

    move-object/from16 v12, p3

    invoke-static {v2, v5, v12, v4}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;C)Z

    move-result v8

    goto :goto_c

    :cond_11
    :goto_b
    move-object/from16 v12, p3

    goto :goto_c

    :cond_12
    move-object/from16 v12, p3

    const/4 v8, 0x0

    .line 271
    :goto_c
    iput-object v5, v9, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    if-eqz v8, :cond_13

    .line 273
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object v7, v0

    move-object v6, v12

    move-object/from16 v0, v24

    goto/16 :goto_6

    .line 277
    :cond_14
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .line 141
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 144
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 145
    invoke-static {v3, v2}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->b(CI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 81
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Z)V

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-ge v0, v1, :cond_2

    .line 92
    sget-object v3, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a:Ljava/util/Map;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    :cond_1
    sget-object v3, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a:Ljava/util/Map;

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 626
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bA:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/Language;

    .line 627
    sget-object v1, Lcom/callapp/contacts/activity/settings/Language;->NONE:Lcom/callapp/contacts/activity/settings/Language;

    if-ne v0, v1, :cond_0

    .line 629
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->getExtraLanguageForKeypad()Lcom/callapp/contacts/activity/settings/Language;

    move-result-object v0

    .line 630
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bA:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 634
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Z)V

    return-void
.end method

.method public static declared-synchronized a(Z)V
    .locals 10

    const-class v0, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 40
    :try_start_0
    sget-boolean p0, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->b:Z

    if-nez p0, :cond_6

    .line 41
    :cond_0
    sget-object p0, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 1106
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->bA:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/settings/Language;

    .line 1107
    sget-object v1, Lcom/callapp/contacts/activity/contact/list/search/T9Helper$3;->a:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/Language;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const p0, 0x7f03001e

    goto :goto_0

    :pswitch_1
    const p0, 0x7f030021

    goto :goto_0

    :pswitch_2
    const p0, 0x7f03001f

    goto :goto_0

    :pswitch_3
    const p0, 0x7f030023

    goto :goto_0

    :pswitch_4
    const p0, 0x7f03001d

    goto :goto_0

    :pswitch_5
    const p0, 0x7f030024

    goto :goto_0

    :pswitch_6
    const p0, 0x7f030020

    goto :goto_0

    :pswitch_7
    const p0, 0x7f030022

    :goto_0
    const/4 v2, 0x0

    .line 52
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_1
    const p0, 0x7f03001c

    .line 58
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v3, :cond_3

    aget-object v6, p0, v4

    .line 59
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/4 v7, 0x0

    .line 60
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 61
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_5

    .line 66
    array-length p0, v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, p0, :cond_5

    aget-object v4, v2, v3

    .line 67
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    const/4 v7, 0x0

    .line 69
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 70
    sget-object v8, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a:Ljava/util/Map;

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 76
    :cond_5
    sput-boolean v5, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(CI)Z
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->b(CI)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;C)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 292
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_4

    .line 293
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, p3, :cond_3

    .line 298
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v4, v6, :cond_1

    if-nez v2, :cond_0

    .line 301
    invoke-virtual {p0, p3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    if-nez v2, :cond_2

    move v3, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 319
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/2addr v1, v5

    goto :goto_0

    .line 326
    :cond_4
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v2, p0, :cond_5

    .line 327
    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    return v5

    :cond_5
    return v0
.end method

.method public static a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 431
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 433
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 435
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, p2, v3

    .line 436
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 438
    invoke-static {p0, v0, p3, v5, v2}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-ne p0, v4, :cond_3

    .line 448
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-ge v2, p0, :cond_2

    .line 449
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method private static a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    const/16 v2, -0xa

    if-nez p4, :cond_1

    .line 459
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p4

    if-ne p4, v2, :cond_0

    .line 461
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_0
    const/4 p4, 0x1

    goto :goto_0

    .line 466
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p4

    if-ltz p4, :cond_3

    add-int/lit8 p4, p4, 0x1

    .line 469
    invoke-virtual {p1, p4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 470
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {p1, p4, p0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    return v0

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 335
    new-instance v6, Landroid/util/SparseIntArray;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 338
    array-length v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v8, :cond_1

    aget-object v12, v4, v10

    .line 339
    invoke-static {v12}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    add-int/lit8 v11, v11, 0x1

    .line 341
    invoke-static {v0, v6, v5, v12, v9}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 348
    :cond_1
    array-length v8, v1

    const/4 v10, 0x1

    if-ne v8, v7, :cond_2

    .line 349
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v8, v12, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_9

    .line 356
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-nez v8, :cond_9

    array-length v4, v4

    if-ne v4, v10, :cond_9

    array-length v4, v1

    if-ne v4, v7, :cond_9

    .line 361
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_9

    .line 363
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v10

    :goto_2
    if-lez v4, :cond_9

    .line 364
    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 366
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-le v8, v10, :cond_5

    .line 367
    aget-object v12, v1, v10

    invoke-virtual {v12, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 369
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 370
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v14, 0x0

    :goto_3
    sub-int v15, v8, v7

    sub-int v9, v8, v14

    .line 372
    invoke-virtual {v0, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 373
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_3

    .line 379
    :cond_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7, v5}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x0

    .line 382
    :goto_4
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 383
    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    return v10

    :cond_5
    if-nez v8, :cond_8

    .line 389
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 390
    aget-object v12, v1, v9

    invoke-virtual {v12, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v12, v1, v9

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_5
    add-int v14, v9, v12

    add-int v15, v9, v13

    .line 394
    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 396
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v6, v14, v5}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v9, 0x0

    .line 403
    :goto_6
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    .line 404
    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    return v10

    :cond_7
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, -0x1

    const/4 v9, 0x0

    goto/16 :goto_2

    .line 418
    :cond_9
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ne v0, v11, :cond_b

    const/4 v9, 0x0

    .line 420
    :goto_7
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_a

    .line 421
    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_a
    return v10

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Ljava/lang/String;)Lcom/callapp/contacts/activity/settings/Language;
    .locals 1

    const-string v0, "en"

    .line 576
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->ENGLISH:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_0
    const-string v0, "es"

    .line 578
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->SPANISH:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_1
    const-string v0, "uk"

    .line 580
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->UKRAINIAN:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_2
    const-string v0, "hb"

    .line 582
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v0, "ru"

    .line 584
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 585
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->RUSSIAN:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_4
    const-string v0, "de"

    .line 586
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 587
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->GERMAN:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_5
    const-string v0, "el"

    .line 588
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 589
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->GREEK:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_6
    const-string v0, "fr"

    .line 590
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 591
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->FRENCH:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_7
    const-string v0, "br"

    .line 592
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 593
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->PORTUGUESE:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_8
    const-string v0, "pl"

    .line 594
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 595
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->POLISH:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_9
    const-string v0, "tr"

    .line 596
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 597
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->TURKISH:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_a
    const-string v0, "ga"

    .line 598
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 599
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->IRISH:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_b
    const-string v0, "th"

    .line 600
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 601
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->THAI:Lcom/callapp/contacts/activity/settings/Language;

    goto/16 :goto_2

    :cond_c
    const-string v0, "ko"

    .line 602
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 603
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->KOREAN:Lcom/callapp/contacts/activity/settings/Language;

    goto :goto_2

    :cond_d
    const-string v0, "bg"

    .line 604
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 605
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->BULGARIAN:Lcom/callapp/contacts/activity/settings/Language;

    goto :goto_2

    :cond_e
    const-string v0, "id"

    .line 606
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_0

    :cond_f
    const-string v0, "ar"

    .line 608
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 609
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->ARABIC:Lcom/callapp/contacts/activity/settings/Language;

    goto :goto_2

    :cond_10
    const-string v0, "it"

    .line 610
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 611
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->ITALIAN:Lcom/callapp/contacts/activity/settings/Language;

    goto :goto_2

    :cond_11
    const-string/jumbo v0, "zu"

    .line 612
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 613
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->ZULU:Lcom/callapp/contacts/activity/settings/Language;

    goto :goto_2

    :cond_12
    const-string v0, "ja"

    .line 614
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 615
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->JAPANESE:Lcom/callapp/contacts/activity/settings/Language;

    goto :goto_2

    :cond_13
    const-string v0, "af"

    .line 616
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 617
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->AFRIKAANS:Lcom/callapp/contacts/activity/settings/Language;

    goto :goto_2

    .line 619
    :cond_14
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->NONE:Lcom/callapp/contacts/activity/settings/Language;

    goto :goto_2

    .line 607
    :cond_15
    :goto_0
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->INDONESIAN:Lcom/callapp/contacts/activity/settings/Language;

    goto :goto_2

    .line 583
    :cond_16
    :goto_1
    sget-object p0, Lcom/callapp/contacts/activity/settings/Language;->HEBREW:Lcom/callapp/contacts/activity/settings/Language;

    :goto_2
    return-object p0
.end method

.method private static b(CI)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x23

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    const/16 p1, 0x2c

    if-eq p0, p1, :cond_3

    const/16 p1, 0x3b

    if-eq p0, p1, :cond_3

    const/16 p1, 0x4e

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static getExtraLanguageForKeypad()Lcom/callapp/contacts/activity/settings/Language;
    .locals 10

    .line 483
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->b(Ljava/lang/String;)Lcom/callapp/contacts/activity/settings/Language;

    move-result-object v0

    .line 484
    sget-object v1, Lcom/callapp/contacts/activity/settings/Language;->ENGLISH:Lcom/callapp/contacts/activity/settings/Language;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/activity/settings/Language;->NONE:Lcom/callapp/contacts/activity/settings/Language;

    if-ne v0, v1, :cond_4

    :cond_0
    const-string v1, "input_method"

    .line 485
    invoke-static {v1}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 486
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v4

    .line 488
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v5, :cond_4

    .line 492
    invoke-virtual {v1, v6, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    .line 493
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 494
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 496
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v8, 0x2

    if-le v0, v8, :cond_3

    .line 497
    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 499
    :cond_3
    invoke-static {v7}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->b(Ljava/lang/String;)Lcom/callapp/contacts/activity/settings/Language;

    move-result-object v0

    .line 500
    sget-object v7, Lcom/callapp/contacts/activity/settings/Language;->NONE:Lcom/callapp/contacts/activity/settings/Language;

    if-eq v0, v7, :cond_2

    sget-object v7, Lcom/callapp/contacts/activity/settings/Language;->ENGLISH:Lcom/callapp/contacts/activity/settings/Language;

    if-eq v0, v7, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    .line 510
    :cond_4
    sget-object v1, Lcom/callapp/contacts/activity/settings/Language;->ENGLISH:Lcom/callapp/contacts/activity/settings/Language;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/callapp/contacts/activity/settings/Language;->NONE:Lcom/callapp/contacts/activity/settings/Language;

    if-ne v0, v1, :cond_a

    .line 511
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getAllPossibleCountryIsos()Ljava/util/Collection;

    move-result-object v1

    .line 512
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1532
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 1533
    sget-object v4, Lcom/callapp/contacts/activity/settings/Language;->NONE:Lcom/callapp/contacts/activity/settings/Language;

    .line 1535
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v0, :cond_9

    .line 1537
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1538
    array-length v6, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_6

    aget-object v8, v0, v7

    .line 1539
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1540
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 1542
    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1543
    invoke-static {v8}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->b(Ljava/lang/String;)Lcom/callapp/contacts/activity/settings/Language;

    move-result-object v8

    .line 1544
    sget-object v9, Lcom/callapp/contacts/activity/settings/Language;->ENGLISH:Lcom/callapp/contacts/activity/settings/Language;

    if-eq v8, v9, :cond_8

    sget-object v9, Lcom/callapp/contacts/activity/settings/Language;->NONE:Lcom/callapp/contacts/activity/settings/Language;

    if-eq v8, v9, :cond_8

    .line 1545
    sget-object v9, Lcom/callapp/contacts/activity/settings/Language;->NONE:Lcom/callapp/contacts/activity/settings/Language;

    if-eq v4, v9, :cond_7

    if-eq v8, v4, :cond_7

    .line 1547
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/T9Helper$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper$1;-><init>()V

    .line 1558
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1559
    sget-object v0, Lcom/callapp/contacts/activity/settings/Language;->NONE:Lcom/callapp/contacts/activity/settings/Language;

    goto :goto_2

    :cond_7
    move-object v4, v8

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    move-object v0, v4

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    .line 518
    :goto_2
    sget-object v1, Lcom/callapp/contacts/activity/settings/Language;->NONE:Lcom/callapp/contacts/activity/settings/Language;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/callapp/contacts/activity/settings/Language;->ENGLISH:Lcom/callapp/contacts/activity/settings/Language;

    if-ne v0, v1, :cond_b

    goto :goto_3

    :cond_b
    return-object v0

    :cond_c
    :goto_3
    if-eqz v2, :cond_d

    .line 521
    sget-object v0, Lcom/callapp/contacts/activity/settings/Language;->ENGLISH:Lcom/callapp/contacts/activity/settings/Language;

    return-object v0

    .line 524
    :cond_d
    sget-object v0, Lcom/callapp/contacts/activity/settings/Language;->NONE:Lcom/callapp/contacts/activity/settings/Language;

    return-object v0
.end method

.method public static getT9TextFilter()Landroid/text/InputFilter;
    .locals 1

    .line 638
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/T9Helper$2;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper$2;-><init>()V

    return-object v0
.end method
