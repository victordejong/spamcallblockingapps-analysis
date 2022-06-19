.class Ljp/wasabeef/blurry/Blurry$Composer$1;
.super Ljava/lang/Object;
.source "Blurry.java"

# interfaces
.implements Ljp/wasabeef/blurry/BlurTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/wasabeef/blurry/Blurry$Composer;->onto(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/wasabeef/blurry/Blurry$Composer;

.field final synthetic val$target:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Ljp/wasabeef/blurry/Blurry$Composer;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$target"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Ljp/wasabeef/blurry/Blurry$Composer$1;->this$0:Ljp/wasabeef/blurry/Blurry$Composer;

    iput-object p2, p0, Ljp/wasabeef/blurry/Blurry$Composer$1;->val$target:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 105
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$Composer$1;->val$target:Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Ljp/wasabeef/blurry/Blurry$Composer$1;->this$0:Ljp/wasabeef/blurry/Blurry$Composer;

    invoke-static {v2}, Ljp/wasabeef/blurry/Blurry$Composer;->access$100(Ljp/wasabeef/blurry/Blurry$Composer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/wasabeef/blurry/Blurry$Composer$1;->this$0:Ljp/wasabeef/blurry/Blurry$Composer;

    invoke-static {v3}, Ljp/wasabeef/blurry/Blurry$Composer;->access$200(Ljp/wasabeef/blurry/Blurry$Composer;)Ljp/wasabeef/blurry/BlurFactor;

    move-result-object v3

    invoke-static {v2, p1, v3}, Ljp/wasabeef/blurry/Blur;->of(Landroid/content/Context;Landroid/graphics/Bitmap;Ljp/wasabeef/blurry/BlurFactor;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 107
    iget-object p1, p0, Ljp/wasabeef/blurry/Blurry$Composer$1;->this$0:Ljp/wasabeef/blurry/Blurry$Composer;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$Composer$1;->val$target:Landroid/view/ViewGroup;

    invoke-static {p1, v1, v0}, Ljp/wasabeef/blurry/Blurry$Composer;->access$300(Ljp/wasabeef/blurry/Blurry$Composer;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
