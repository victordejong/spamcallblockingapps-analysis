.class public Lcom/millennialmedia/internal/MMActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/MMActivity;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/MMActivity$2;->this$0:Lcom/millennialmedia/internal/MMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/MMActivity$2;->this$0:Lcom/millennialmedia/internal/MMActivity;

    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity;->access$500(Lcom/millennialmedia/internal/MMActivity;)V

    :cond_0
    return-void
.end method
