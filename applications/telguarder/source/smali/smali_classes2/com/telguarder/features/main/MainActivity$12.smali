.class Lcom/telguarder/features/main/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 629
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$12;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    .line 633
    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$12;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p2}, Lcom/telguarder/features/main/MainActivity;->access$1000(Lcom/telguarder/features/main/MainActivity;)Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/telguarder/features/main/MainActivity;->access$1500(Lcom/telguarder/features/main/MainActivity;Landroid/widget/EditText;)V

    .line 634
    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$12;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p2}, Lcom/telguarder/features/main/MainActivity;->access$1600(Lcom/telguarder/features/main/MainActivity;)V

    .line 635
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 636
    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$12;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/telguarder/features/main/MainActivity;->access$1702(Lcom/telguarder/features/main/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 637
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$12;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$1400(Lcom/telguarder/features/main/MainActivity;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
