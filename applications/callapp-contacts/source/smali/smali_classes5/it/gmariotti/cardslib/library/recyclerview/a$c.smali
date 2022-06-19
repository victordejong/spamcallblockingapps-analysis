.class public final Lit/gmariotti/cardslib/library/recyclerview/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/recyclerview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final CardView:[I

.field public static final CardView_android_minHeight:I = 0x1

.field public static final CardView_android_minWidth:I = 0x0

.field public static final CardView_cardBackgroundColor:I = 0x2

.field public static final CardView_cardCornerRadius:I = 0x3

.field public static final CardView_cardElevation:I = 0x4

.field public static final CardView_cardMaxElevation:I = 0x5

.field public static final CardView_cardPreventCornerOverlap:I = 0x6

.field public static final CardView_cardUseCompatPadding:I = 0x7

.field public static final CardView_contentPadding:I = 0x8

.field public static final CardView_contentPaddingBottom:I = 0x9

.field public static final CardView_contentPaddingLeft:I = 0xa

.field public static final CardView_contentPaddingRight:I = 0xb

.field public static final CardView_contentPaddingTop:I = 0xc

.field public static final ForegroundLinearLayout:[I

.field public static final ForegroundLinearLayout_android_foreground:I = 0x0

.field public static final ForegroundLinearLayout_android_foregroundGravity:I = 0x1

.field public static final ForegroundLinearLayout_foreground:I = 0x2

.field public static final ForegroundLinearLayout_foregroundGravity:I = 0x3

.field public static final ForegroundLinearLayout_foregroundInsidePadding:I = 0x4

.field public static final card_listItem:[I

.field public static final card_listItem_card_list_item_dividerHeight:I = 0x0

.field public static final card_options:[I

.field public static final card_options_card_header_layout_resourceID:I = 0x0

.field public static final card_options_card_layout_resourceID:I = 0x1

.field public static final card_options_card_shadow_layout_resourceID:I = 0x2

.field public static final card_options_card_thumbnail_layout_resourceID:I = 0x3

.field public static final card_options_list_card_layout_resourceID:I = 0x4

.field public static final card_options_list_card_layout_resourceIDs:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lit/gmariotti/cardslib/library/recyclerview/a$c;->CardView:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lit/gmariotti/cardslib/library/recyclerview/a$c;->ForegroundLinearLayout:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0400c0

    aput v2, v0, v1

    sput-object v0, Lit/gmariotti/cardslib/library/recyclerview/a$c;->card_listItem:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lit/gmariotti/cardslib/library/recyclerview/a$c;->card_options:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101013f
        0x1010140
        0x7f0400b6
        0x7f0400b7
        0x7f0400b8
        0x7f0400ba
        0x7f0400bb
        0x7f0400bc
        0x7f04015e
        0x7f04015f
        0x7f040161
        0x7f040162
        0x7f040164
    .end array-data

    :array_1
    .array-data 4
        0x1010109
        0x1010200
        0x7f040247
        0x7f040248
        0x7f040249
    .end array-data

    :array_2
    .array-data 4
        0x7f0400be
        0x7f0400bf
        0x7f0400c1
        0x7f0400c2
        0x7f04030e
        0x7f04030f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
