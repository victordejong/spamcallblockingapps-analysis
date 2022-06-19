.class Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$3;
.super Ljava/lang/Object;
.source "PhoneEventLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 144
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$3;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iput-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$3;->val$listener:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

    iput p3, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$3;->val$listener:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

    iget v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$3;->val$position:I

    invoke-interface {p1, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;->onItemLongClick(I)Z

    move-result p1

    return p1
.end method
