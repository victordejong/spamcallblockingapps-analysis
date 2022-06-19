.class public Lcarbon/widget/RadioGroup$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcarbon/widget/RadioButton$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/RadioGroup;


# direct methods
.method public constructor <init>(Lcarbon/widget/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/RadioGroup$b;->a:Lcarbon/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcarbon/widget/RadioGroup;Lcarbon/widget/RadioGroup$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/RadioGroup$b;-><init>(Lcarbon/widget/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public a(Lcarbon/widget/RadioButton;Z)V
    .locals 2

    iget-object p2, p0, Lcarbon/widget/RadioGroup$b;->a:Lcarbon/widget/RadioGroup;

    invoke-static {p2}, Lcarbon/widget/RadioGroup;->s(Lcarbon/widget/RadioGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcarbon/widget/RadioGroup$b;->a:Lcarbon/widget/RadioGroup;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcarbon/widget/RadioGroup;->t(Lcarbon/widget/RadioGroup;Z)Z

    iget-object p2, p0, Lcarbon/widget/RadioGroup$b;->a:Lcarbon/widget/RadioGroup;

    invoke-static {p2}, Lcarbon/widget/RadioGroup;->u(Lcarbon/widget/RadioGroup;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcarbon/widget/RadioGroup$b;->a:Lcarbon/widget/RadioGroup;

    invoke-static {p2}, Lcarbon/widget/RadioGroup;->u(Lcarbon/widget/RadioGroup;)I

    move-result v0

    invoke-static {p2, v0, v1}, Lcarbon/widget/RadioGroup;->v(Lcarbon/widget/RadioGroup;IZ)V

    :cond_1
    iget-object p2, p0, Lcarbon/widget/RadioGroup$b;->a:Lcarbon/widget/RadioGroup;

    invoke-static {p2, v1}, Lcarbon/widget/RadioGroup;->t(Lcarbon/widget/RadioGroup;Z)Z

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    iget-object p2, p0, Lcarbon/widget/RadioGroup$b;->a:Lcarbon/widget/RadioGroup;

    invoke-static {p2, p1}, Lcarbon/widget/RadioGroup;->w(Lcarbon/widget/RadioGroup;I)V

    return-void
.end method
