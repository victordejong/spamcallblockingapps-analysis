.class public final synthetic Lfw0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View$OnClickListener;

.field public final synthetic b:Low0;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;Low0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw0;->a:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lfw0;->b:Low0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lfw0;->a:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lfw0;->b:Low0;

    invoke-static {v0, v1, p1}, Low0;->b(Landroid/view/View$OnClickListener;Low0;Landroid/view/View;)V

    return-void
.end method
