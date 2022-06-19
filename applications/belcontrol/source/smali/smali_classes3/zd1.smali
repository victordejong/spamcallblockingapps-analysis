.class public final synthetic Lzd1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Loe1$d;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/app/Activity;Loe1$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzd1;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lzd1;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lzd1;->c:Landroid/app/Activity;

    iput-object p4, p0, Lzd1;->d:Loe1$d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lzd1;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lzd1;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lzd1;->c:Landroid/app/Activity;

    iget-object v3, p0, Lzd1;->d:Loe1$d;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Loe1;->F(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/app/Activity;Loe1$d;Landroid/content/DialogInterface;I)V

    return-void
.end method
