.class Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "PhoneEventLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->bind(ILcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

.field final synthetic val$listener:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;I)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$2;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iput-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$2;->val$listener:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

    iput p3, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$2;->val$listener:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

    iget v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$2;->val$position:I

    invoke-interface {p1, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;->onItemClick(I)V

    return-void
.end method
