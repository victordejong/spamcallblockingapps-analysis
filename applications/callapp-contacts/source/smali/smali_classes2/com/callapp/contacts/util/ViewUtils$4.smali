.class final Lcom/callapp/contacts/util/ViewUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/callapp/contacts/util/ViewUtils$4;->a:Landroid/view/View;

    iput-boolean p2, p0, Lcom/callapp/contacts/util/ViewUtils$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/callapp/contacts/util/ViewUtils$4;->a:Landroid/view/View;

    iget-boolean v1, p0, Lcom/callapp/contacts/util/ViewUtils$4;->b:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
