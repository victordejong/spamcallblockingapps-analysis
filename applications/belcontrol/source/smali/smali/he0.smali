.class public interface abstract Lhe0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final i:[Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lhe0;->i:[Landroid/graphics/PorterDuff$Mode;

    return-void
.end method


# virtual methods
.method public abstract getBackgroundTint()Landroid/content/res/ColorStateList;
.end method

.method public abstract setAnimateColorChangesEnabled(Z)V
.end method

.method public abstract setBackgroundTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method public abstract setTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method
