.class public Lu30$a;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu30;->getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu30;


# direct methods
.method public constructor <init>(Lu30;)V
    .locals 0

    iput-object p1, p0, Lu30$a;->a:Lu30;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lu30$a;->a:Lu30;

    invoke-virtual {v0, p1}, Lu30;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lu30$a;->a:Lu30;

    invoke-virtual {v0, p1}, Lu30;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
