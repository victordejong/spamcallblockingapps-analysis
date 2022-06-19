.class public final Lio/bidmachine/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final NativeAdContentLayout:[I

.field public static final NativeAdContentLayout_ageRestrictionViewId:I = 0x0

.field public static final NativeAdContentLayout_callToActionViewId:I = 0x1

.field public static final NativeAdContentLayout_descriptionViewId:I = 0x2

.field public static final NativeAdContentLayout_iconViewId:I = 0x3

.field public static final NativeAdContentLayout_mediaViewId:I = 0x4

.field public static final NativeAdContentLayout_providerViewId:I = 0x5

.field public static final NativeAdContentLayout_ratingViewId:I = 0x6

.field public static final NativeAdContentLayout_titleViewId:I = 0x7


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/bidmachine/R$styleable;->NativeAdContentLayout:[I

    return-void

    :array_0
    .array-data 4
        0x7f04003d
        0x7f0400ae
        0x7f0401b8
        0x7f040273
        0x7f040347
        0x7f0403b4
        0x7f0403be
        0x7f0404d3
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
