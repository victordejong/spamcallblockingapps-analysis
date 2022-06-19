.class public Lcom/callerid/block/mvc/controller/EZDialActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/mvc/controller/EZDialActivity$d;,
        Lcom/callerid/block/mvc/controller/EZDialActivity$g;,
        Lcom/callerid/block/mvc/controller/EZDialActivity$f;,
        Lcom/callerid/block/mvc/controller/EZDialActivity$e;
    }
.end annotation


# static fields
.field private static N:Z = false

.field private static O:Z

.field private static P:Z

.field private static Q:Z

.field private static R:Z

.field private static S:Z

.field private static T:Z

.field private static U:Z

.field private static final V:Landroid/text/style/StyleSpan;

.field private static final W:Landroid/text/style/StyleSpan;

.field private static X:Landroid/text/style/BackgroundColorSpan;

.field private static Y:Landroid/text/style/ForegroundColorSpan;

.field private static final Z:Ljava/text/Collator;

.field private static final a0:[Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Lcom/github/clans/fab/FloatingActionButton;

.field E:Landroid/graphics/Typeface;

.field private F:Lcom/callerid/block/customview/LImageButton;

.field private G:Lcom/callerid/block/customview/LImageButton;

.field private H:Lcom/callerid/block/customview/LImageButton;

.field I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field J:Landroid/telephony/SubscriptionManager;

.field private K:Landroid/os/Handler;

.field private L:Ljava/lang/Runnable;

.field private M:Landroid/widget/AbsListView$OnScrollListener;

.field private s:Lcom/callerid/block/customview/EZKeyboardView;

.field private t:Lfydialer/ContactAccessor;

.field private u:Ljava/lang/StringBuilder;

.field private v:Landroid/os/Handler;

.field private w:Lcom/callerid/block/mvc/controller/EZDialActivity$g;

.field private x:Ljava/lang/String;

.field private y:Lcom/callerid/block/mvc/controller/EZDialActivity$d;

.field private z:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->V:Landroid/text/style/StyleSpan;

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->W:Landroid/text/style/StyleSpan;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->Z:Ljava/text/Collator;

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->a0:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->v:Landroid/os/Handler;

    new-instance v0, Lcom/callerid/block/mvc/controller/EZDialActivity$g;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/EZDialActivity$g;-><init>(Lcom/callerid/block/mvc/controller/EZDialActivity;)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->w:Lcom/callerid/block/mvc/controller/EZDialActivity$g;

    sget-object v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->Z:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    const/16 v0, 0x61

    :goto_0
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    sget-object v2, Lcom/callerid/block/mvc/controller/EZDialActivity;->a0:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x61

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [C

    aput-char v0, v5, v1

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->I:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->K:Landroid/os/Handler;

    new-instance v0, Lcom/callerid/block/mvc/controller/EZDialActivity$b;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/EZDialActivity$b;-><init>(Lcom/callerid/block/mvc/controller/EZDialActivity;)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->L:Ljava/lang/Runnable;

    new-instance v0, Lcom/callerid/block/mvc/controller/EZDialActivity$c;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/EZDialActivity$c;-><init>(Lcom/callerid/block/mvc/controller/EZDialActivity;)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->M:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method private static B0(Landroid/text/Spannable;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->G0(Landroid/text/Spannable;Ljava/lang/String;Z)[I

    move-result-object p1

    const/4 p2, 0x0

    aget v0, p1, p2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-static {p0, p2, p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->w0(Landroid/text/Spannable;II)V

    :cond_1
    return-void
.end method

.method private C0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/mvc/controller/EZDialActivity$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/EZDialActivity$a;-><init>(Lcom/callerid/block/mvc/controller/EZDialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private D0()V
    .locals 3

    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->D:Lcom/github/clans/fab/FloatingActionButton;

    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/EZKeyboardView;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->s:Lcom/callerid/block/customview/EZKeyboardView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0402d8

    const v2, 0x7f080145

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->A:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0402d9

    const v2, 0x7f080147

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->B:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0401d4

    const v2, 0x7f0800c7

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->C:I

    const v0, 0x7f0901ed

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/LImageButton;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->F:Lcom/callerid/block/customview/LImageButton;

    const v0, 0x7f0901ee

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/LImageButton;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->G:Lcom/callerid/block/customview/LImageButton;

    const v0, 0x7f0901ec

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/LImageButton;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->H:Lcom/callerid/block/customview/LImageButton;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->F:Lcom/callerid/block/customview/LImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->G:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->H:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->F:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->G:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->H:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static E0(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 p0, 0x1

    new-array v3, p0, [Ljava/lang/String;

    const-string p0, "data15"

    const/4 p1, 0x0

    aput-object p0, v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    array-length v1, p2

    invoke-static {p2, p1, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "error_contact"

    invoke-static {p2, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method private static F0(C)C
    .locals 2

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    const/16 p0, 0x23

    return p0

    :cond_1
    invoke-static {p0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->H0(C)C

    move-result p0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_6

    const/16 v1, 0x7a

    if-le p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x6f

    if-gt p0, v1, :cond_3

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0x32

    int-to-char p0, p0

    return p0

    :cond_3
    const/16 v0, 0x70

    if-lt p0, v0, :cond_4

    const/16 v0, 0x73

    if-gt p0, v0, :cond_4

    const/16 p0, 0x37

    return p0

    :cond_4
    const/16 v0, 0x74

    if-lt p0, v0, :cond_5

    const/16 v0, 0x76

    if-gt p0, v0, :cond_5

    const/16 p0, 0x38

    return p0

    :cond_5
    const/16 p0, 0x39

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    :cond_7
    :goto_1
    return p0
.end method

.method private static G0(Landroid/text/Spannable;Ljava/lang/String;Z)[I
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    aput v5, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_0
    add-int/2addr v5, v6

    const-string v7, " "

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_1

    add-int/lit8 v7, v5, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x2d

    if-ge v1, v7, :cond_7

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p0, v7}, Landroid/text/Spannable;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/callerid/block/mvc/controller/EZDialActivity;->F0(C)C

    move-result v7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v7, v9, :cond_2

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x1

    goto :goto_3

    :catch_0
    move-exception v5

    const/4 v7, 0x1

    goto :goto_2

    :catch_1
    move-exception v7

    move-object v12, v7

    move v7, v5

    move-object v5, v12

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v7

    :cond_2
    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_5

    :try_start_2
    invoke-interface {p0, v7}, Landroid/text/Spannable;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/callerid/block/mvc/controller/EZDialActivity;->F0(C)C

    move-result v10

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v10, v11, :cond_4

    invoke-interface {p0, v7}, Landroid/text/Spannable;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_3

    aget v10, v2, v6

    add-int/2addr v10, v6

    aput v10, v2, v6

    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_3
    aput v4, v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    aput v5, v2, v6
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v5, 0x0

    goto :goto_6

    :catch_2
    aput v4, v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    aput v5, v2, v6

    const/4 v5, 0x0

    :cond_4
    :goto_5
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v9, v6

    goto :goto_4

    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    :goto_7
    if-nez v5, :cond_d

    sget-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->P:Z

    if-eqz v0, :cond_d

    if-eqz p2, :cond_d

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/2addr p2, v6

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p2, :cond_d

    invoke-interface {p0, v0}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v1, v7, :cond_b

    move v5, v0

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_a

    invoke-interface {p0, v5}, Landroid/text/Spannable;->charAt(I)C

    move-result v7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v7, v9, :cond_9

    invoke-interface {p0, v5}, Landroid/text/Spannable;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_8

    aget v7, v2, v6

    add-int/2addr v7, v6

    aput v7, v2, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_8
    aput v4, v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, v2, v6

    const/4 v5, 0x0

    goto :goto_b

    :cond_9
    :goto_a
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v1, v6

    goto :goto_9

    :cond_a
    const/4 v5, 0x1

    :cond_b
    :goto_b
    if-eqz v5, :cond_c

    aput v0, v2, v3

    goto :goto_c

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    :goto_c
    return-object v2
.end method

.method private static H0(C)C
    .locals 6

    const/16 v0, 0xdf

    if-ne p0, v0, :cond_0

    const/16 p0, 0x73

    return p0

    :cond_0
    const/16 v0, 0xf8

    if-eq p0, v0, :cond_7

    const/16 v0, 0xd8

    if-ne p0, v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/4 v3, 0x0

    aput-char p0, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    sget-object v2, Lcom/callerid/block/mvc/controller/EZDialActivity;->Z:Ljava/text/Collator;

    sget-object v4, Lcom/callerid/block/mvc/controller/EZDialActivity;->a0:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v0, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const/16 p0, 0x61

    return p0

    :cond_2
    array-length v5, v4

    sub-int/2addr v5, v1

    aget-object v1, v4, v5

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x7a

    if-nez v1, :cond_3

    return v2

    :cond_3
    if-ltz v3, :cond_6

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x62

    :goto_0
    if-ge v1, v2, :cond_6

    sget-object v3, Lcom/callerid/block/mvc/controller/EZDialActivity;->Z:Ljava/text/Collator;

    sget-object v4, Lcom/callerid/block/mvc/controller/EZDialActivity;->a0:[Ljava/lang/String;

    add-int/lit8 v5, v1, -0x61

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_6
    :goto_1
    return p0

    :cond_7
    :goto_2
    const/16 p0, 0x6f

    return p0
.end method

.method private I0()V
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->w:Lcom/callerid/block/mvc/controller/EZDialActivity$g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->w:Lcom/callerid/block/mvc/controller/EZDialActivity$g;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private J0()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0404f7

    const v2, 0x7f06004c

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040110

    const v3, 0x7f06006b

    invoke-static {v1, v2, v3}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "matched_italics"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/callerid/block/mvc/controller/EZDialActivity;->Q:Z

    const-string v3, "matched_bold"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/callerid/block/mvc/controller/EZDialActivity;->R:Z

    const-string v3, "matched_colour"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/callerid/block/mvc/controller/EZDialActivity;->T:Z

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v3, Lcom/callerid/block/mvc/controller/EZDialActivity;->Y:Landroid/text/style/ForegroundColorSpan;

    const-string v1, "matched_highlight"

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/callerid/block/mvc/controller/EZDialActivity;->S:Z

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/callerid/block/mvc/controller/EZDialActivity;->X:Landroid/text/style/BackgroundColorSpan;

    const-string v0, "match_num_sequence"

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->P:Z

    const-string v0, "show_contact_pictures"

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->O:Z

    const-string v0, "auto_hide_dialpad_on_fling"

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->U:Z

    return-void
.end method

.method private K0(Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->t:Lfydialer/ContactAccessor;

    invoke-virtual {v0}, Lfydialer/ContactAccessor;->getContactSplit()Lfydialer/IContactSplit;

    move-result-object v0

    invoke-interface {v0, p1}, Lfydialer/IContactSplit;->getContactUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private L0(Z)V
    .locals 1

    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private M0(Landroid/database/Cursor;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->N:Z

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->y:Lcom/callerid/block/mvc/controller/EZDialActivity$d;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    new-instance v0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->t:Lfydialer/ContactAccessor;

    invoke-virtual {v1}, Lfydialer/ContactAccessor;->getContactSplit()Lfydialer/IContactSplit;

    move-result-object v1

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/callerid/block/mvc/controller/EZDialActivity$d;-><init>(Lcom/callerid/block/mvc/controller/EZDialActivity;Landroid/content/Context;Landroid/database/Cursor;Lfydialer/IContactSplit;)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->y:Lcom/callerid/block/mvc/controller/EZDialActivity$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/widget/ResourceCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->y:Lcom/callerid/block/mvc/controller/EZDialActivity$d;

    invoke-virtual {v0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :goto_1
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->z:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private N0(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sput-boolean p1, Lcom/callerid/block/mvc/controller/EZDialActivity;->N:Z

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->z0()V

    sget-boolean p1, Lcom/callerid/block/mvc/controller/EZDialActivity;->N:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->I0()V

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->L:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic R(Lcom/callerid/block/mvc/controller/EZDialActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->K:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic S(Lcom/callerid/block/mvc/controller/EZDialActivity;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->A:I

    return p0
.end method

.method static synthetic T(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/EZKeyboardView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->s:Lcom/callerid/block/customview/EZKeyboardView;

    return-object p0
.end method

.method static synthetic U(Lcom/callerid/block/mvc/controller/EZDialActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->z:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic V(Lcom/callerid/block/mvc/controller/EZDialActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->z:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic W(Lcom/callerid/block/mvc/controller/EZDialActivity;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->M:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic X(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lfydialer/ContactAccessor;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->t:Lfydialer/ContactAccessor;

    return-object p0
.end method

.method static synthetic Y(Lcom/callerid/block/mvc/controller/EZDialActivity;Lfydialer/ContactAccessor;)Lfydialer/ContactAccessor;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->t:Lfydialer/ContactAccessor;

    return-object p1
.end method

.method static synthetic Z(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/mvc/controller/EZDialActivity$d;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->y:Lcom/callerid/block/mvc/controller/EZDialActivity$d;

    return-object p0
.end method

.method static synthetic a0(Lcom/callerid/block/mvc/controller/EZDialActivity;Lcom/callerid/block/mvc/controller/EZDialActivity$d;)Lcom/callerid/block/mvc/controller/EZDialActivity$d;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->y:Lcom/callerid/block/mvc/controller/EZDialActivity$d;

    return-object p1
.end method

.method static synthetic b0(Lcom/callerid/block/mvc/controller/EZDialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->J0()V

    return-void
.end method

.method static synthetic c0()Z
    .locals 1

    sget-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->P:Z

    return v0
.end method

.method static synthetic d0(Lcom/callerid/block/mvc/controller/EZDialActivity;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->M0(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic e0()Z
    .locals 1

    sget-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->U:Z

    return v0
.end method

.method static synthetic f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/callerid/block/mvc/controller/EZDialActivity;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->B:I

    return p0
.end method

.method static synthetic h0(Lcom/callerid/block/mvc/controller/EZDialActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i0(Lcom/callerid/block/mvc/controller/EZDialActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->L0(Z)V

    return-void
.end method

.method static synthetic j0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/LImageButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->F:Lcom/callerid/block/customview/LImageButton;

    return-object p0
.end method

.method static synthetic k0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/LImageButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->G:Lcom/callerid/block/customview/LImageButton;

    return-object p0
.end method

.method static synthetic l0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/LImageButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->H:Lcom/callerid/block/customview/LImageButton;

    return-object p0
.end method

.method static synthetic m0(Landroid/text/Spannable;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->B0(Landroid/text/Spannable;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic n0()Z
    .locals 1

    sget-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->O:Z

    return v0
.end method

.method static synthetic o0(Lcom/callerid/block/mvc/controller/EZDialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->y0()V

    return-void
.end method

.method static synthetic p0(Lcom/callerid/block/mvc/controller/EZDialActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->N0(Z)V

    return-void
.end method

.method static synthetic q0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->u:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic r0(Lcom/callerid/block/mvc/controller/EZDialActivity;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->u:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method static synthetic s0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->N:Z

    return p0
.end method

.method static synthetic t0(Lcom/callerid/block/mvc/controller/EZDialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->I0()V

    return-void
.end method

.method static synthetic u0(Lcom/callerid/block/mvc/controller/EZDialActivity;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->C:I

    return p0
.end method

.method static synthetic v0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->D:Lcom/github/clans/fab/FloatingActionButton;

    return-object p0
.end method

.method private static w0(Landroid/text/Spannable;II)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPANNABLE NAME"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->Q:Z

    const/16 v1, 0x21

    if-eqz v0, :cond_1

    sget-object v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->V:Landroid/text/style/StyleSpan;

    add-int v2, p1, p2

    invoke-interface {p0, v0, p1, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    sget-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->R:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->W:Landroid/text/style/StyleSpan;

    add-int v2, p1, p2

    invoke-interface {p0, v0, p1, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    sget-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->T:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->Y:Landroid/text/style/ForegroundColorSpan;

    add-int v2, p1, p2

    invoke-interface {p0, v0, p1, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    sget-boolean v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->S:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/callerid/block/mvc/controller/EZDialActivity;->X:Landroid/text/style/BackgroundColorSpan;

    add-int/2addr p2, p1

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    return-void
.end method

.method private static x0(C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "[9WXYZ\u0174\u0175\u1e80\u1e81\u1e82\u1e83\u1e84\u1e85\u1e86\u1e87\u1e88\u1e89\u1e98\u1e8a\u1e8b\u1e8c\u1e8d\u00dd\u00fd\u00ff\u0176\u0177\u0178\u0232\u0233\u1e8e\u1e8f\u1e99\u1ef2\u1ef3\u1ef4\u1ef5\u1ef6\u1ef7\u1ef8\u1ef9\u0179\u017a\u017b\u017c\u017d\u017e\u1e90\u1e91\u1e92\u1e93\u1e94\u1e95]"

    return-object p0

    :pswitch_1
    const-string p0, "[8TUV\u0162\u0163\u0164\u0165\u021a\u021b\u1e6a\u1e6b\u1e6c\u1e6d\u1e6e\u1e6f\u1e70\u1e71\u1e97\u00d9\u00da\u00db\u00dc\u00f9\u00fa\u00fb\u00fc\u0168\u0169\u016a\u016b\u016c\u016d\u016e\u016f\u0170\u0171\u0172\u0173\u01af\u01b0\u01d3\u01d4\u01d5\u01d6\u01d7\u01d8\u01d9\u01da\u01db\u01dc\u0214\u0215\u0216\u0217\u1e72\u1e73\u1e74\u1e75\u1e76\u1e77\u1e78\u1e79\u1e7a\u1e7b\u1ee4\u1ee5\u1ee6\u1ee7\u1ee8\u1ee9\u1eea\u1eeb\u1eec\u1eed\u1eee\u1eef\u1ef0\u1ef1\u1e7c\u1e7d\u1e7e\u1e7f]"

    return-object p0

    :pswitch_2
    const-string p0, "[7PQRS\u1e54\u1e55\u1e56\u1e57\u0154\u0155\u0156\u0157\u0158\u0159\u0210\u0211\u0212\u0213\u1e58\u1e59\u1e5a\u1e5b\u1e5c\u1e5d\u1e5e\u1e5f\u00df\u015a\u015b\u015c\u015d\u015e\u015f\u0160\u0161\u0218\u0219\u1e60\u1e61\u1e62\u1e63\u1e64\u1e65\u1e66\u1e67\u1e68\u1e69]"

    return-object p0

    :pswitch_3
    const-string p0, "[6MNO\u1e3e\u1e3f\u1e40\u1e41\u1e42\u1e43\u00d1\u00f1\u0143\u0144\u0145\u0146\u0147\u0148\u01f8\u01f9\u1e44\u1e45\u1e46\u1e47\u1e48\u1e49\u1e4a\u1e4b\u00d2\u00d3\u00d4\u00d5\u00d6\u00d8\u00f2\u00f3\u00f4\u00f5\u00f6\u00f8\u014c\u014d\u014e\u014f\u0150\u0151\u01a0\u01a1\u01d1\u01d2\u01ea\u01eb\u01ec\u01ed\u020c\u020d\u020e\u020f\u022a\u022b\u022c\u022d\u022e\u022f\u0230\u0231\u1e4c\u1e4d\u1e4e\u1e4f\u1e50\u1e51\u1e52\u1e53\u1ecc\u1ecd\u1ece\u1ecf\u1ed0\u1ed1\u1ed2\u1ed3\u1ed4\u1ed5\u1ed6\u1ed7\u1ed8\u1ed9\u1eda\u1edb\u1edc\u1edd\u1ede\u1edf\u1ee0\u1ee1\u1ee2\u1ee3]"

    return-object p0

    :pswitch_4
    const-string p0, "[5JKL\u0134\u0135\u01f0\u0136\u0137\u01e8\u01e9\u1e30\u1e31\u1e32\u1e33\u1e34\u1e35\u212a\u0139\u013a\u013b\u013c\u013d\u013e\u1e36\u1e37\u1e38\u1e39\u1e3a\u1e3b\u1e3c\u1e3d]"

    return-object p0

    :pswitch_5
    const-string p0, "[4GHI\u011c\u011d\u011e\u011f\u0120\u0121\u0122\u0123\u01e6\u01e7\u01f4\u01f5\u1e20\u1e21\u0124\u0125\u021e\u021f\u1e22\u1e23\u1e24\u1e25\u1e26\u1e27\u1e28\u1e29\u1e2a\u1e2b\u1e96\u00cc\u00cd\u00ce\u00cf\u00ec\u00ed\u00ee\u00ef\u0128\u0129\u012a\u012b\u012c\u012d\u012e\u012f\u0130\u01cf\u01d0\u0208\u0209\u020a\u020b\u1e2c\u1e2d\u1e2e\u1e2f\u1ec8\u1ec9\u1eca\u1ecb]"

    return-object p0

    :pswitch_6
    const-string p0, "[3DEF\u010e\u010f\u1e0a\u1e0b\u1e0c\u1e0d\u1e0e\u1e0f\u1e10\u1e11\u1e12\u1e13\u00c8\u00c9\u00ca\u00cb\u00e8\u00e9\u00ea\u00eb\u0112\u0113\u0114\u0115\u0116\u0117\u0118\u0119\u011a\u011b\u0204\u0205\u0206\u0207\u0228\u0229\u1e14\u1e15\u1e16\u1e17\u1e18\u1e19\u1e1a\u1e1b\u1e1c\u1e1d\u1eb8\u1eb9\u1eba\u1ebb\u1ebc\u1ebd\u1ebe\u1ebf\u1ec0\u1ec1\u1ec2\u1ec3\u1ec4\u1ec5\u1ec6\u1ec7\u1e1e\u1e1f]"

    return-object p0

    :pswitch_7
    const-string p0, "[2ABC\u00c0\u00c1\u00c2\u00c3\u00c4\u00c5\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u0100\u0101\u0102\u0103\u0104\u0105\u01cd\u01ce\u01de\u01df\u01e0\u01e1\u01fa\u01fb\u0200\u0201\u0202\u0203\u0226\u0227\u1e00\u1e01\u1ea0\u1ea1\u1ea2\u1ea3\u1ea4\u1ea5\u1ea6\u1ea7\u1ea8\u1ea9\u1eaa\u1eab\u1eac\u1ead\u1eae\u1eaf\u1eb0\u1eb1\u1eb2\u1eb3\u1eb4\u1eb5\u1eb6\u1eb7\u212bfrom b: \u1e02\u1e03\u1e04\u1e05\u1e06\u1e07\u00c7\u00e7\u0106\u0107\u0108\u0109\u010a\u010b\u010c\u010d\u1e08\u1e09]"

    return-object p0

    :cond_0
    const-string p0, "?"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x32
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

.method private y0()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/callerid/block/util/n0;->v()I

    move-result v0

    invoke-static {p0}, Lcom/callerid/block/util/o0;->b(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->F:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->G:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->H:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->F:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->G:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->H:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_5
    const/4 v4, -0x1

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->F:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->G:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->H:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v0, v2, :cond_d

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->J:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->I:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->I:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->I:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v0, :cond_9

    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    :cond_9
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->F:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->G:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->H:Lcom/callerid/block/customview/LImageButton;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_2
    return-void
.end method

.method private z0()V
    .locals 5

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->u:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, v0, v2

    iget-object v4, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->u:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZDialActivity;->x0(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public A0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x7f010002

    const v1, 0x7f010005

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09009b

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v2}, Lcom/callerid/block/util/n0;->F0(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v3}, Lcom/callerid/block/util/n0;->F0(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/callerid/block/util/n0;->F0(I)V

    :goto_0
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->y0()V

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/o0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callerid/block/util/n0;->v()I

    move-result v0

    if-ne v0, v2, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Lcom/callerid/block/util/o0;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callerid/block/util/i0;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901ec
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "enter_dial_number_page"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const-string p1, "testenter"

    const-string v0, "\u62e8\u53f7\u9875\u5c55\u793a\u6b21\u6570"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0c0027

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->D0()V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->C0()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;

    iget-object p2, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->e:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->K0(Landroid/net/Uri;)V

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->b:Lcom/rey/material/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->s:Lcom/callerid/block/customview/EZKeyboardView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->s:Lcom/callerid/block/customview/EZKeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->D:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity;->A:I

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->A0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->J0()V

    return-void
.end method
