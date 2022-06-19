.class Lcom/callapp/contacts/widget/MultiSelectView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/MultiSelectView;->setChoices(Ljava/util/ArrayList;Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;

.field final synthetic b:Lcom/callapp/contacts/widget/MultiSelectView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/MultiSelectView;Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/widget/MultiSelectView$1;->b:Lcom/callapp/contacts/widget/MultiSelectView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/MultiSelectView$1;->a:Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 73
    iget-object p2, p0, Lcom/callapp/contacts/widget/MultiSelectView$1;->a:Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    :cond_0
    return-void
.end method
