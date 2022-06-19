.class Lcom/callapp/contacts/activity/select/BasePersonAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/BasePersonAdapter;->a(Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/select/BasePersonAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/BasePersonAdapter;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter$1;->b:Lcom/callapp/contacts/activity/select/BasePersonAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter$1;->a:Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter$1;->b:Lcom/callapp/contacts/activity/select/BasePersonAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->a(Lcom/callapp/contacts/activity/select/BasePersonAdapter;)Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter$1;->b:Lcom/callapp/contacts/activity/select/BasePersonAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter$1;->a:Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;

    iget v1, v1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->d:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/PersonData;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;->a(Lcom/callapp/contacts/model/PersonData;)V

    return-void
.end method
