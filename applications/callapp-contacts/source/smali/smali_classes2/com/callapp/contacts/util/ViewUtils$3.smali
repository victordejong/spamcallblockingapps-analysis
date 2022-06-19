.class final Lcom/callapp/contacts/util/ViewUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/callapp/contacts/util/ViewUtils$3;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/callapp/contacts/util/ViewUtils$3;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/callapp/contacts/util/ViewUtils$3;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/callapp/contacts/util/ViewUtils$3;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
