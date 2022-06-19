.class public final synthetic Lhu0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lmu0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lmu0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu0;->a:Lmu0;

    iput p2, p0, Lhu0;->b:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lhu0;->a:Lmu0;

    iget v1, p0, Lhu0;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lmu0;->l(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method
