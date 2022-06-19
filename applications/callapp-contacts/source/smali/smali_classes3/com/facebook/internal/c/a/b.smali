.class public final Lcom/facebook/internal/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/c/a/b$a;
    }
.end annotation


# static fields
.field public static a:Lcom/facebook/internal/c/a/b;

.field private static d:Ljava/lang/reflect/Method;


# instance fields
.field public final b:Lcom/facebook/internal/c/a/a;

.field public final c:Lcom/facebook/internal/c/a/d;

.field private e:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/facebook/internal/c/a/a;

    invoke-direct {v0}, Lcom/facebook/internal/c/a/a;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/c/a/b;->b:Lcom/facebook/internal/c/a/a;

    .line 69
    new-instance v0, Lcom/facebook/internal/c/a/d;

    invoke-direct {v0}, Lcom/facebook/internal/c/a/d;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/c/a/b;->c:Lcom/facebook/internal/c/a/d;

    return-void
.end method

.method static a(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 390
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 394
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_1
    return-object v0
.end method

.method static a(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_1

    .line 364
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " \n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-le p0, p1, :cond_1

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 1

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 308
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const-string v0, " app:tag/"

    .line 315
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 316
    invoke-static {p1, v0}, Lcom/facebook/internal/c/a/b;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 378
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 379
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;IIZZ)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move-object/from16 v2, p3

    .line 139
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v2, :cond_0

    const-string v0, "null"

    .line 142
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "{"

    .line 147
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    .line 1221
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1222
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const-string v4, "V"

    const-string v5, "."

    if-eqz v3, :cond_3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_2

    const/16 v6, 0x8

    if-eq v3, v6, :cond_1

    .line 1233
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "G"

    .line 1230
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "I"

    .line 1227
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1224
    :cond_3
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1235
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isFocusable()Z

    move-result v3

    const-string v6, "F"

    if-eqz v3, :cond_4

    move-object v3, v6

    goto :goto_1

    :cond_4
    move-object v3, v5

    :goto_1
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "E"

    goto :goto_2

    :cond_5
    move-object v3, v5

    :goto_2
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v3

    const-string v7, "H"

    if-eqz v3, :cond_6

    move-object v3, v7

    goto :goto_3

    :cond_6
    move-object v3, v5

    :goto_3
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v4, v5

    :goto_4
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "C"

    goto :goto_5

    :cond_8
    move-object v3, v5

    :goto_5
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "L"

    goto :goto_6

    :cond_9
    move-object v3, v5

    :goto_6
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1243
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    move-object v6, v5

    :goto_7
    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "S"

    goto :goto_8

    :cond_b
    move-object v3, v5

    :goto_8
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    move-object v7, v5

    :goto_9
    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "A"

    goto :goto_a

    :cond_d
    move-object v3, v5

    :goto_a
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v5, "D"

    :cond_e
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 1253
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1254
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 1255
    aget v5, v4, v11

    sub-int v5, v5, p4

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ","

    .line 1256
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x1

    .line 1257
    aget v6, v4, v12

    sub-int v6, v6, p5

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, "-"

    .line 1258
    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1259
    aget v6, v4, v11

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, v6, p4

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1260
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1261
    aget v4, v4, v12

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v4, v4, p5

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1266
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    .line 1268
    invoke-static/range {p2 .. p3}, Lcom/facebook/internal/c/a/b;->a(Ljava/io/PrintWriter;Landroid/view/View;)V

    goto :goto_d

    :cond_f
    const-string v5, " #"

    .line 1272
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1273
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-lez v4, :cond_13

    if-nez v5, :cond_10

    goto :goto_c

    :cond_10
    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    const/high16 v7, 0x1000000

    if-eq v6, v7, :cond_12

    const/high16 v7, 0x7f000000

    if-eq v6, v7, :cond_11

    .line 1290
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_11
    const-string v6, "app"

    goto :goto_b

    :cond_12
    const-string v6, "android"

    .line 1294
    :goto_b
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1296
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    .line 1298
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d

    .line 1277
    :cond_13
    :goto_c
    invoke-static/range {p2 .. p3}, Lcom/facebook/internal/c/a/b;->a(Ljava/io/PrintWriter;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    .line 1302
    :catch_0
    invoke-static/range {p2 .. p3}, Lcom/facebook/internal/c/a/b;->a(Ljava/io/PrintWriter;Landroid/view/View;)V

    :goto_d
    const/4 v0, 0x0

    .line 1323
    :try_start_1
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_14

    .line 1324
    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    .line 1327
    :cond_14
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RCTextView"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1356
    sget-object v4, Lcom/facebook/internal/c/a/b;->d:Ljava/lang/reflect/Method;

    if-nez v4, :cond_15

    .line 1357
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getText"

    new-array v6, v11, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/facebook/internal/c/a/b;->d:Ljava/lang/reflect/Method;

    .line 1359
    :cond_15
    sget-object v4, Lcom/facebook/internal/c/a/b;->d:Ljava/lang/reflect/Method;

    new-array v5, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 1360
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_16
    move-object v4, v0

    goto :goto_f

    .line 1330
    :cond_17
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1332
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_18
    move-object v4, v0

    :goto_e
    if-eqz v4, :cond_19

    .line 1334
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1335
    :cond_19
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 1337
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_1a
    :goto_f
    if-eqz v4, :cond_1c

    .line 1341
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_10

    :cond_1b
    const-string v5, " text=\""

    .line 1344
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x258

    .line 1345
    invoke-static {v4, v5}, Lcom/facebook/internal/c/a/b;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "\""

    .line 1346
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    :catch_1
    nop

    :cond_1c
    :goto_10
    if-eqz p7, :cond_1d

    .line 153
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1d

    .line 154
    invoke-static/range {p2 .. p3}, Lcom/facebook/internal/c/a/b$a;->a(Ljava/io/PrintWriter;Landroid/view/View;)V

    :cond_1d
    const-string v4, "}"

    .line 156
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2186
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_11
    if-eqz v4, :cond_1f

    .line 2188
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.facebook.litho.LithoView"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v4, 0x1

    goto :goto_12

    .line 2191
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_11

    :cond_1f
    const/4 v4, 0x0

    :goto_12
    const/4 v5, 0x3

    if-eqz v4, :cond_21

    .line 2199
    :try_start_2
    iget-object v4, v9, Lcom/facebook/internal/c/a/b;->e:Ljava/lang/reflect/Method;

    if-nez v4, :cond_20

    const-string v4, "com.facebook.litho.LithoViewTestHelper"

    .line 2200
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "viewToStringForE2E"

    new-array v7, v5, [Ljava/lang/Class;

    .line 2201
    const-class v8, Landroid/view/View;

    aput-object v8, v7, v11

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v12

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    .line 2202
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v9, Lcom/facebook/internal/c/a/b;->e:Ljava/lang/reflect/Method;

    .line 2208
    :cond_20
    iget-object v4, v9, Lcom/facebook/internal/c/a/b;->e:Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v11

    .line 2209
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    div-int/2addr v7, v3

    add-int/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2210
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    .line 2213
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Failed litho view sub hierarch dump: "

    .line 2214
    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 2215
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x64

    invoke-static {v0, v6}, Lcom/facebook/internal/c/a/b;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 2216
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    :cond_21
    :goto_13
    if-eqz p6, :cond_22

    .line 162
    instance-of v0, v2, Landroid/webkit/WebView;

    if-eqz v0, :cond_22

    .line 163
    iget-object v0, v9, Lcom/facebook/internal/c/a/b;->c:Lcom/facebook/internal/c/a/d;

    move-object v4, v2

    check-cast v4, Landroid/webkit/WebView;

    const-string v6, "view"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3032
    new-instance v6, Lcom/facebook/internal/c/a/d$b;

    invoke-direct {v6, v4}, Lcom/facebook/internal/c/a/d$b;-><init>(Landroid/webkit/WebView;)V

    .line 3033
    iget-object v7, v0, Lcom/facebook/internal/c/a/d;->a:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3034
    invoke-virtual {v4}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "view.resources"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 3036
    sget-object v8, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    new-array v8, v5, [Ljava/lang/Object;

    .line 3058
    iget v13, v6, Lcom/facebook/internal/c/a/d$b;->b:I

    .line 3036
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v11

    .line 3059
    iget v13, v6, Lcom/facebook/internal/c/a/d$b;->c:I

    .line 3036
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v12

    iget v7, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v8, v3

    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v7, "(function() {  try {    const leftOf = %d;    const topOf = %d;    const density = %f;    const elements = Array.from(document.querySelectorAll(\'body, body *\'));    for (const el of elements) {      const rect = el.getBoundingClientRect();      const left = Math.round(leftOf + rect.left * density);      const top = Math.round(topOf + rect.top * density);      const width = Math.round(rect.width * density);      const height = Math.round(rect.height * density);      el.setAttribute(\'data-rect\', `${left},${top},${width},${height}`);      const style = window.getComputedStyle(el);      const hidden = style.display === \'none\' || style.visibility !== \'visible\' || el.getAttribute(\'hidden\') === \'true\';      const disabled = el.disabled || el.getAttribute(\'aria-disabled\') === \'true\';      const focused = el === document.activeElement;      if (hidden || disabled || focused) {        el.setAttribute(\'data-flag\', `${hidden ? \'H\' : \'\'}${disabled ? \'D\' : \'\'}${focused ? \'F\' : \'\'}`);      } else {        el.removeAttribute(\'data-flag\');      }    }    document.activeElement.setAttribute(\'focused\', \'true\');    const doc = document.cloneNode(true);    for (const el of Array.from(doc.querySelectorAll(\'script, link\'))) {      el.remove();    }    for (const el of Array.from(doc.querySelectorAll(\'*\'))) {      el.removeAttribute(\'class\');    }    return doc.getElementsByTagName(\'body\')[0].outerHTML.trim();  } catch (e) {    return \'Failed: \' + e;  }})();"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3037
    new-instance v7, Lcom/facebook/internal/c/a/d$c;

    invoke-direct {v7, v0, v6}, Lcom/facebook/internal/c/a/d$c;-><init>(Lcom/facebook/internal/c/a/d;Lcom/facebook/internal/c/a/d$b;)V

    check-cast v7, Landroid/webkit/ValueCallback;

    invoke-virtual {v4, v5, v7}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 166
    :cond_22
    instance-of v0, v2, Landroid/view/ViewGroup;

    if-nez v0, :cond_23

    return-void

    .line 170
    :cond_23
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    .line 171
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-gtz v13, :cond_24

    return-void

    .line 175
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v15, v3, [I

    .line 178
    invoke-virtual {v2, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v13, :cond_25

    .line 181
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    aget v5, v15, v11

    aget v6, v15, v12

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move/from16 v7, p6

    move/from16 v16, v8

    move/from16 v8, p7

    .line 180
    invoke-virtual/range {v1 .. v8}, Lcom/facebook/internal/c/a/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;IIZZ)V

    add-int/lit8 v8, v16, 0x1

    goto :goto_14

    :cond_25
    return-void
.end method
