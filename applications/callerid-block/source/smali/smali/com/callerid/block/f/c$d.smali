.class final Lcom/callerid/block/f/c$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/f/c;->X(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {p1}, Lcom/callerid/block/f/c;->z(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/callerid/block/f/c;->y()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/f/c;->y()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/f/c;->A()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
