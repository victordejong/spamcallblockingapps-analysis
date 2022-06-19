.class Lcom/telguarder/features/main/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$11;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$11;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v0}, Lcom/telguarder/features/main/MainActivity;->access$1200(Lcom/telguarder/features/main/MainActivity;)Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity$11;->this$0:Lcom/telguarder/features/main/MainActivity;

    const v2, 0x7f05004a

    invoke-static {v1, v2}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->setBackgroundColor(I)V

    .line 616
    invoke-static {p1}, Lcom/telguarder/helpers/ui/UiHelper;->longPressHapticFeedback(Landroid/view/View;)V

    .line 617
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$11;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$1300(Lcom/telguarder/features/main/MainActivity;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 618
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$11;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$1200(Lcom/telguarder/features/main/MainActivity;)Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    move-result-object p1

    iput-boolean v0, p1, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->longClick:Z

    .line 619
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$11;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$1400(Lcom/telguarder/features/main/MainActivity;)V

    goto :goto_0

    .line 621
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$11;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$900(Lcom/telguarder/features/main/MainActivity;)V

    .line 622
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$11;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$1000(Lcom/telguarder/features/main/MainActivity;)Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/telguarder/features/main/MainActivity;->access$1100(Lcom/telguarder/features/main/MainActivity;Landroid/widget/EditText;)V

    :goto_0
    return v0
.end method
