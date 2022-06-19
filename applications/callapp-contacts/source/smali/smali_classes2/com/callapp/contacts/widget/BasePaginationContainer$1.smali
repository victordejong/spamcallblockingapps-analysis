.class Lcom/callapp/contacts/widget/BasePaginationContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/BasePaginationContainer;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/callapp/contacts/widget/BasePaginationContainer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/BasePaginationContainer;[Landroid/view/View;II)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$1;->d:Lcom/callapp/contacts/widget/BasePaginationContainer;

    iput-object p2, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$1;->a:[Landroid/view/View;

    iput p3, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$1;->b:I

    iput p4, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 102
    iget-object p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$1;->d:Lcom/callapp/contacts/widget/BasePaginationContainer;

    iget-object v0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$1;->a:[Landroid/view/View;

    iget v1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$1;->b:I

    iget v2, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$1;->c:I

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/callapp/contacts/widget/BasePaginationContainer;->a([Landroid/view/View;III)V

    return-void
.end method
