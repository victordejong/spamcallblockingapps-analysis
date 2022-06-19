.class Lcom/telguarder/helpers/ui/CrescentoImageView$2;
.super Landroid/view/ViewOutlineProvider;
.source "CrescentoImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/CrescentoImageView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/CrescentoImageView;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$2;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    .line 232
    :try_start_0
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$2;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget p1, p1, Lcom/telguarder/helpers/ui/CrescentoImageView;->width:I

    iget-object v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$2;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget v0, v0, Lcom/telguarder/helpers/ui/CrescentoImageView;->height:I

    iget-object v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$2;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget v1, v1, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureHeight:I

    iget-object v2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$2;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget v2, v2, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureDirection:I

    iget-object v3, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$2;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget v3, v3, Lcom/telguarder/helpers/ui/CrescentoImageView;->gravity:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/telguarder/helpers/ui/PathProvider;->getOutlinePath(IIIII)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Outline Path"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
