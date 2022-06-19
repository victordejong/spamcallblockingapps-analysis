.class public Lcarbon/widget/NavigationView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lta0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/NavigationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lta0<",
        "Lcarbon/widget/NavigationView$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcarbon/widget/NavigationView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcarbon/widget/NavigationView$c;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcarbon/widget/NavigationView$b;

    invoke-virtual {p0, p1}, Lcarbon/widget/NavigationView$c;->b(Lcarbon/widget/NavigationView$b;)V

    return-void
.end method

.method public b(Lcarbon/widget/NavigationView$b;)V
    .locals 0

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/NavigationView$c;->a:Landroid/view/View;

    return-object v0
.end method
