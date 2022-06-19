.class public final Lcom/daimajia/swipe/a$a;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final SwipeLayout:[I

.field public static final SwipeLayout_bottomEdgeSwipeOffset:I = 0x0

.field public static final SwipeLayout_clickToClose:I = 0x1

.field public static final SwipeLayout_drag_edge:I = 0x2

.field public static final SwipeLayout_leftEdgeSwipeOffset:I = 0x3

.field public static final SwipeLayout_rightEdgeSwipeOffset:I = 0x4

.field public static final SwipeLayout_show_mode:I = 0x5

.field public static final SwipeLayout_topEdgeSwipeOffset:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/daimajia/swipe/a$a;->SwipeLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040053
        0x7f040094
        0x7f0400f3
        0x7f040184
        0x7f0401da
        0x7f0401f0
        0x7f04026c
    .end array-data
.end method
