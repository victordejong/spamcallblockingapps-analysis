.class public final synthetic Lag0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkd0;


# instance fields
.field public final synthetic a:Lcarbon/widget/NavigationView;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/NavigationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lag0;->a:Lcarbon/widget/NavigationView;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Lta0;
    .locals 1

    iget-object v0, p0, Lag0;->a:Lcarbon/widget/NavigationView;

    invoke-virtual {v0, p1}, Lcarbon/widget/NavigationView;->y(Landroid/view/ViewGroup;)Lta0;

    move-result-object p1

    return-object p1
.end method
