.class Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackgroundAndMorphingDrawables"
.end annotation


# instance fields
.field backGroundDrawable:Landroid/graphics/drawable/Drawable;

.field morphingDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setBothDrawables(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;->backGroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 445
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;->morphingDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method
