.class final Lcom/callapp/contacts/util/ViewUtils$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/callapp/contacts/util/ViewUtils$9;->a:Landroid/view/View;

    iput p2, p0, Lcom/callapp/contacts/util/ViewUtils$9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/callapp/contacts/util/ViewUtils$9;->a:Landroid/view/View;

    iget v1, p0, Lcom/callapp/contacts/util/ViewUtils$9;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
