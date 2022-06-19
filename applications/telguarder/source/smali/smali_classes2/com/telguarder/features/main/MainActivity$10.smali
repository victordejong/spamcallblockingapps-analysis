.class Lcom/telguarder/features/main/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 603
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$10;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 606
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$10;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$900(Lcom/telguarder/features/main/MainActivity;)V

    .line 607
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$10;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$1000(Lcom/telguarder/features/main/MainActivity;)Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/telguarder/features/main/MainActivity;->access$1100(Lcom/telguarder/features/main/MainActivity;Landroid/widget/EditText;)V

    return-void
.end method
