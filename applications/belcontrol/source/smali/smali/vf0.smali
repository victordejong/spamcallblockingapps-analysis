.class public final synthetic Lvf0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvf0;->a:Lcarbon/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lvf0;->a:Lcarbon/widget/EditText;

    invoke-static {v0, p1}, Lcarbon/widget/InputLayout;->v(Lcarbon/widget/EditText;Landroid/view/View;)V

    return-void
.end method
