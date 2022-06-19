.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2$1;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->onItemLongClick(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;

.field final synthetic val$selectedCallLog:Lcom/telguarder/features/numberLookup/PhoneEvent;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;

    iput-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2$1;->val$selectedCallLog:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArcMenuItemClicked(Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2$1;->val$selectedCallLog:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v0, p1, v1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->handleArcMenuItemSelections(Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    return-void
.end method
