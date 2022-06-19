.class public final Lcom/google/android/flexbox/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FlexboxLayout:[I

.field public static final FlexboxLayout_Layout:[I

.field public static final FlexboxLayout_Layout_layout_alignSelf:I = 0x0

.field public static final FlexboxLayout_Layout_layout_flexBasisPercent:I = 0x1

.field public static final FlexboxLayout_Layout_layout_flexGrow:I = 0x2

.field public static final FlexboxLayout_Layout_layout_flexShrink:I = 0x3

.field public static final FlexboxLayout_Layout_layout_maxHeight:I = 0x4

.field public static final FlexboxLayout_Layout_layout_maxWidth:I = 0x5

.field public static final FlexboxLayout_Layout_layout_minHeight:I = 0x6

.field public static final FlexboxLayout_Layout_layout_minWidth:I = 0x7

.field public static final FlexboxLayout_Layout_layout_order:I = 0x8

.field public static final FlexboxLayout_Layout_layout_wrapBefore:I = 0x9

.field public static final FlexboxLayout_alignContent:I = 0x0

.field public static final FlexboxLayout_alignItems:I = 0x1

.field public static final FlexboxLayout_dividerDrawable:I = 0x2

.field public static final FlexboxLayout_dividerDrawableHorizontal:I = 0x3

.field public static final FlexboxLayout_dividerDrawableVertical:I = 0x4

.field public static final FlexboxLayout_flexDirection:I = 0x5

.field public static final FlexboxLayout_flexWrap:I = 0x6

.field public static final FlexboxLayout_justifyContent:I = 0x7

.field public static final FlexboxLayout_showDivider:I = 0x8

.field public static final FlexboxLayout_showDividerHorizontal:I = 0x9

.field public static final FlexboxLayout_showDividerVertical:I = 0xa

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x2

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x4

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x6

.field public static final RecyclerView_layoutManager:I = 0x7

.field public static final RecyclerView_reverseLayout:I = 0x8

.field public static final RecyclerView_spanCount:I = 0x9

.field public static final RecyclerView_stackFromEnd:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v1, v0, [I

    .line 75
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 87
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout:[I

    new-array v0, v0, [I

    .line 98
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/flexbox/R$styleable;->RecyclerView:[I

    return-void

    :array_0
    .array-data 4
        0x7f040027
        0x7f040028
        0x7f0400c8
        0x7f0400c9
        0x7f0400ca
        0x7f0400f8
        0x7f0400f9
        0x7f04013f
        0x7f040206
        0x7f040207
        0x7f040208
    .end array-data

    :array_1
    .array-data 4
        0x7f040145
        0x7f040177
        0x7f040178
        0x7f040179
        0x7f040182
        0x7f040183
        0x7f040184
        0x7f040185
        0x7f040187
        0x7f04018a
    .end array-data

    :array_2
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f0400f2
        0x7f0400f3
        0x7f0400f4
        0x7f0400f5
        0x7f0400f6
        0x7f040144
        0x7f0401ed
        0x7f040212
        0x7f040218
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
