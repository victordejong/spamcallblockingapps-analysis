.class Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$2;
.super Ljava/lang/Object;
.source "BlockListActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->prepareHeader(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$2;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 273
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->setBlockerSwitchState(Z)V

    return-void
.end method
