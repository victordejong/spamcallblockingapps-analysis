.class public Lcom/millennialmedia/internal/video/VASTVideoView$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->loadButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/millennialmedia/internal/video/VASTParser$Button;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$13;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/millennialmedia/internal/video/VASTParser$Button;Lcom/millennialmedia/internal/video/VASTParser$Button;)I
    .locals 0

    iget p1, p1, Lcom/millennialmedia/internal/video/VASTParser$Button;->position:I

    iget p2, p2, Lcom/millennialmedia/internal/video/VASTParser$Button;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/millennialmedia/internal/video/VASTParser$Button;

    check-cast p2, Lcom/millennialmedia/internal/video/VASTParser$Button;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView$13;->compare(Lcom/millennialmedia/internal/video/VASTParser$Button;Lcom/millennialmedia/internal/video/VASTParser$Button;)I

    move-result p1

    return p1
.end method
