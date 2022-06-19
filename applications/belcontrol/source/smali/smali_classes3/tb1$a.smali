.class public Ltb1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltb1;-><init>(Landroid/widget/ListView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltb1;


# direct methods
.method public constructor <init>(Ltb1;)V
    .locals 0

    iput-object p1, p0, Ltb1$a;->a:Ltb1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iget-object p1, p0, Ltb1$a;->a:Ltb1;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ltb1;->b(Ltb1;Z)Z

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-eqz p2, :cond_1

    iget-object p1, p0, Ltb1$a;->a:Ltb1;

    invoke-static {p1}, Ltb1;->a(Ltb1;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltb1$a;->a:Ltb1;

    invoke-virtual {p1}, Ltb1;->d()V

    :cond_0
    iget-object p1, p0, Ltb1$a;->a:Ltb1;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ltb1;->b(Ltb1;Z)Z

    :cond_1
    return-void
.end method
