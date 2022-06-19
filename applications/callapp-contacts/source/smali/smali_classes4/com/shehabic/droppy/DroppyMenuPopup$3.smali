.class final Lcom/shehabic/droppy/DroppyMenuPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shehabic/droppy/DroppyMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/shehabic/droppy/DroppyMenuPopup;


# direct methods
.method constructor <init>(Lcom/shehabic/droppy/DroppyMenuPopup;I)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/shehabic/droppy/DroppyMenuPopup$3;->b:Lcom/shehabic/droppy/DroppyMenuPopup;

    iput p2, p0, Lcom/shehabic/droppy/DroppyMenuPopup$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/shehabic/droppy/DroppyMenuPopup$3;->b:Lcom/shehabic/droppy/DroppyMenuPopup;

    invoke-virtual {p1}, Lcom/shehabic/droppy/DroppyMenuPopup;->c()V

    return-void
.end method
